package poly.com.edu.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import poly.com.edu.entity.Role;
import poly.com.edu.entity.User;

public interface RoleDAO extends JpaRepository<Role, Long> {

}
