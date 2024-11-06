package poly.com.edu.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import poly.com.edu.entity.User;


public interface UserDAO extends JpaRepository<User, Long> {
    User findByUsername(String username);
    boolean existsByEmail(String email);
}
