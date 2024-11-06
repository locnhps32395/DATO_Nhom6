package poly.com.edu.Converter;

import java.io.File;
import java.io.IOException;

import org.springframework.context.annotation.Configuration;

import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class filePath implements WebMvcConfigurer {

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

}
