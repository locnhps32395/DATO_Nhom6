package poly.com.edu.HttpSession;
import org.springframework.stereotype.Service;

import poly.com.edu.DTO.UserRegistrationDto;
import poly.com.edu.dao.UserDAO;
import poly.com.edu.entity.User;

import org.springframework.beans.factory.annotation.Autowired;

@Service
public class UserService {

    @Autowired
    private UserDAO userRepository;

    public void registerUser(UserRegistrationDto userDto) {
        // Kiểm tra nếu email đã tồn tại
        if (userRepository.existsByEmail(userDto.getEmail())) {
            throw new RuntimeException("Email đã tồn tại!");
        }

        // Tạo và lưu tài khoản mới
        User user = new User();
        user.setUsername(userDto.getName());
        user.setEmail(userDto.getEmail());
        user.setPassword(userDto.getPassword()); // Nên mã hóa mật khẩu trước khi lưu

        userRepository.save(user);
    }
    public User getUserByUsername(String username) {
        return userRepository.findByUsername(username);
    }
}
