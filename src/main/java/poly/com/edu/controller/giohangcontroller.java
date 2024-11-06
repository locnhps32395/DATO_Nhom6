package poly.com.edu.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpSession;
import poly.com.edu.HttpSession.Cart;
import poly.com.edu.dao.ProductDAO;
import poly.com.edu.entity.Product;
@Controller
public class giohangcontroller {
    @Autowired
    ProductDAO dao;

    @RequestMapping("/giohang/{ProductId}")
    public String viewCart(Model model, HttpSession session) {
        Cart cart = (Cart) session.getAttribute("cart");
        Map<Long, Integer> cartItems = cart != null ? cart.getItems() : new HashMap<>();
        List<Product> products = new ArrayList<>();

        for (Long productId : cartItems.keySet()) {
            Product product = dao.findById(productId).orElse(null);
            if (product != null) {
                products.add(product);
            }
        }

        model.addAttribute("products", products);
        model.addAttribute("cartItems", cartItems);
        model.addAttribute("totalPrice", calculateTotalPrice(cartItems)); // Tính tổng giá

        return "user/giohang";
    }

    private BigDecimal calculateTotalPrice(Map<Long, Integer> cartItems) {
        BigDecimal total = BigDecimal.ZERO;
        for (Map.Entry<Long, Integer> entry : cartItems.entrySet()) {
            Long productId = entry.getKey();
            Integer quantity = entry.getValue();
            Product product = dao.findById(productId).orElse(null);
            if (product != null) {
                total = total.add(product.getPrice().multiply(new BigDecimal(quantity)));
            }
        }
        return total;
    }

}
