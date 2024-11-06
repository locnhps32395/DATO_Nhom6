package poly.com.edu.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import poly.com.edu.entity.Category;

public interface CategoryDAO extends JpaRepository<Category, Long>{

}
