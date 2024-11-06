package poly.com.edu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import poly.com.edu.dao.ProductDAO;
import poly.com.edu.entity.Product;

@Controller
public class trangchuController {
	@Autowired
	ProductDAO dao;
@RequestMapping("/trangchu")
public String home(Model model) {
    List<Product> products = dao.findAll();
    Product product = new Product();  
    model.addAttribute("item", product);
    Pageable pageable = PageRequest.of(0, 20); // Hiển thị mặc định 10 bài hát
    Page<Product> page = dao.findAll(pageable);
    model.addAttribute("listProduct", products);
    model.addAttribute("listProduct", page.getContent());
	
	return "user/Trangchu";
}
}
