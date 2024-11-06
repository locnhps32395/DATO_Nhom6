package poly.com.edu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import poly.com.edu.DTO.UserRegistrationDto;
import poly.com.edu.HttpSession.UserService;
import poly.com.edu.dao.UserDAO;
import poly.com.edu.entity.Role;
import poly.com.edu.entity.User;

import org.springframework.ui.Model;

@Controller
public class dangnhapcontroller {
	@Autowired
	UserDAO dao;
@RequestMapping("/login")
public String showLogin() {
	return "user/dangnhap";
}


// Đăng nhập
@PostMapping("/login")
public String processLogin(@RequestParam String username,
                           @RequestParam String password,
                           HttpServletRequest request) {
    User account = userService.getUserByUsername(username); // Sử dụng phương thức tìm người dùng
    if (account != null && account.getPassword().equals(password)) {
        HttpSession session = request.getSession();
        session.setAttribute("username", username); // Lưu tên người dùng vào phiên

        Role role = account.getRole();
        if (role != null) {
            switch (role.getRoleId().intValue()) {
                case 1: // admin
                    return "redirect:/trangchu/admin"; // Chuyển đến trang quản lý admin
                case 2: // nhân viên
                    return "redirect:/trangchu"; // Chuyển đến trang chủ cho nhân viên
                case 3: // khách hàng
                    return "redirect:/trangchu"; // Chuyển đến trang chủ cho khách hàng
                default:
                    return "redirect:/login"; // Nếu vai trò không xác định, quay lại trang đăng nhập
            }
        }
    }
    return "redirect:/login"; // Nếu thông tin không chính xác, quay lại trang đăng nhập
}



// Đăng kí


@Autowired
private UserService userService;

@PostMapping("/register")
public String register(@ModelAttribute UserRegistrationDto userDto, Model model) {
    try {
        // Đặt vai trò mặc định cho người dùng là "CUSTOMER" (hoặc 3 trong cơ sở dữ liệu)
        userDto.setRoleId(3L); // Giả sử bạn đã có một thuộc tính roleId trong UserRegistrationDto

        userService.registerUser(userDto); // Đăng ký người dùng
        model.addAttribute("message", "Đăng ký thành công!"); // Thông báo thành công
        return "redirect:/login"; // Chuyển hướng đến trang đăng nhập
    } catch (RuntimeException e) {
        model.addAttribute("error", e.getMessage()); // Hiển thị lỗi nếu có
        return "/register"; // Trả về trang đăng ký nếu có lỗi
    }
}
}
