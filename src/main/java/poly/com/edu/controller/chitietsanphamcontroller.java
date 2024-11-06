package poly.com.edu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.com.edu.dao.ProductDAO;
import poly.com.edu.entity.Product;

@Controller
public class chitietsanphamcontroller {
    @Autowired
    ProductDAO dao;

    @RequestMapping("/chitietsanpham")
    public String ditail() {
        return "user/Chitietsanpham";
    }

    @RequestMapping("/san-pham/{productId}") // Đảm bảo rằng đường dẫn khớp với biến trong phương thức
    public String ShowProduct(Model model, @PathVariable("productId") Long productId) {
        Product item = dao.findById(productId).orElse(null); // Trả về null nếu không tìm thấy
        model.addAttribute("item", item); // Đưa sản phẩm vào mô hình
        List<Product> items = dao.findAll(); // Lấy danh sách tất cả sản phẩm
        model.addAttribute("items", items); // Đưa danh sách vào mô hình
        return "user/Chitietsanpham"; // Trả về trang chi tiết sản phẩm
    }
}
