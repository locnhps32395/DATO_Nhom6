package poly.com.edu.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import poly.com.edu.entity.Product;

public interface ProductDAO  extends JpaRepository<Product, Long>{

}
