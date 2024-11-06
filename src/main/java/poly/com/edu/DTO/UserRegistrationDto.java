package poly.com.edu.DTO;

import lombok.Data;

@Data
public class UserRegistrationDto {
	private Long roleId;
	private String name;
    private String email;
    private String password;
    private String confirmPassword;
    
    
    
}
