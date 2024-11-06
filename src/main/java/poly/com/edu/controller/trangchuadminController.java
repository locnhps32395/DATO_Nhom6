package poly.com.edu.controller;

import java.util.List;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import org.springframework.web.multipart.MultipartFile;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import poly.com.edu.dao.CategoryDAO;
import poly.com.edu.dao.ProductDAO;
import poly.com.edu.entity.Category;
import poly.com.edu.entity.Product;

@Controller
public class trangchuadminController {
    @Autowired
    ProductDAO dao;

    @Autowired
    private CategoryDAO categoryDAO;

   
    // Phương thức lưu tệp tin ảnh và trả về đường dẫn
    private String saveFile(MultipartFile file) {
        if (file.isEmpty()) {
            return null; // Hoặc xử lý khi không có file
        }

        try {
            // Lấy tên file và tạo đường dẫn lưu trữ
            String fileName = file.getOriginalFilename();
            String directoryPath = "E:/FPT Polytechnic/KI7/DATN/src/main/webapp/view/img/";

            // Tạo đối tượng File cho thư mục
            File directory = new File(directoryPath);
            if (!directory.exists()) {
                directory.mkdirs(); // Tạo thư mục nếu không tồn tại
            }

            // Tạo đường dẫn hoàn chỉnh cho file
            File destinationFile = new File(directoryPath + fileName);

            // Lưu file vào đường dẫn
            file.transferTo(destinationFile); // Lưu file

            return fileName; // Trả về tên file đã lưu để lưu vào database
        } catch (IOException e) {
            e.printStackTrace();
            return null; // Hoặc xử lý lỗi
        }
    }

    // Hiển thị trang chủ quản trị với danh sách sản phẩm và danh mục
    @RequestMapping("/trangchu/admin")
    public String admin(Model model) {
        List<Product> products = dao.findAll();
        Product item = new Product();
        List<Category> categories = categoryDAO.findAll(); // Lấy danh sách các danh mục

        model.addAttribute("item", item);
        model.addAttribute("items", products);
        model.addAttribute("categories", categories); // Truyền danh sách danh mục sang view

        return "admin/trangchu";
    }

    // Chỉnh sửa sản phẩm theo ID
    @GetMapping("/editProduct/{productId}")
    public String editProduct(Model model, @PathVariable("productId") Long productId) {
        Product item = dao.findById(productId).orElse(null);
        model.addAttribute("item", item);
        List<Product> items = dao.findAll();
        model.addAttribute("items", items);
        List<Category> categories = categoryDAO.findAll();
        model.addAttribute("categories", categories);
        return "admin/trangchu";
    }

    // Cập nhật sản phẩm

@RequestMapping("/editProduct/sua")
public String update(@Valid @ModelAttribute("item") Product product, 
                     BindingResult result, 
                     @RequestParam("imagesFile") MultipartFile file, 
                     RedirectAttributes redirectAttributes) {
    if (result.hasErrors()) {
        return "admin/trangchu";  // Trả về trang nếu có lỗi
    }

    // Lưu file ảnh nếu có và gán đường dẫn vào sản phẩm
    String filePath = saveFile(file);
    if (filePath != null) {
        product.setImages(filePath); // Gán đường dẫn file vào thuộc tính images của sản phẩm
    }

    dao.save(product); // Cập nhật sản phẩm vào cơ sở dữ liệu
    redirectAttributes.addFlashAttribute("message", "Cập nhật sản phẩm '" + product.getName() + "' thành công!"); // Thông báo cập nhật sản phẩm
    return "redirect:/editProduct/" + product.getProductId(); // Chuyển hướng về trang sửa sản phẩm
}

    // Thêm sản phẩm
@RequestMapping("/editProduct/them")
public String them(@RequestParam("imagesFile") MultipartFile file, // Nhận file từ biểu mẫu
                   @Valid @ModelAttribute("item") Product item, 
                   BindingResult result, 
                   RedirectAttributes redirectAttributes, 
                   Model model) {
    if (result.hasErrors()) {
        return "admin/trangchu";  // Trả về trang nếu có lỗi
    }

    // Lưu ảnh và lấy tên file
    String filePath = saveFile(file); // Gọi phương thức saveFile với MultipartFile
    if (filePath != null) {
        item.setImages(filePath); // Lưu tên file vào thuộc tính images
    } else {
        redirectAttributes.addFlashAttribute("message", "Không thể lưu ảnh. Vui lòng thử lại.");
        return "redirect:/trangchu/admin"; // Chuyển hướng nếu không có ảnh
    }

    // Lưu sản phẩm vào cơ sở dữ liệu
    dao.save(item);
    redirectAttributes.addFlashAttribute("message", "Thêm sản phẩm thành công!");
    return "redirect:/trangchu/admin"; // Chuyển hướng đến trang danh sách sản phẩm
}

    
    @RequestMapping("delete/{productId}")
    public String xoa(@PathVariable("productId") Long productId, RedirectAttributes redirectAttributes) {
        // Tìm sản phẩm để lấy mã sản phẩm
        Product product = dao.findById(productId).orElse(null);
        if (product != null) {
            redirectAttributes.addFlashAttribute("message", "Xóa sản phẩm " + product.getName() + " (Mã: " + product.getProductId() + ") thành công!"); // Thêm thông báo
        }
        
        dao.deleteById(productId); // Xóa sản phẩm
        return "redirect:/trangchu/admin"; // Chuyển hướng về trang admin
    }

}
