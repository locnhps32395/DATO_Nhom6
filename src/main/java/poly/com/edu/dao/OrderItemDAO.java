package poly.com.edu.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import poly.com.edu.entity.OrderItem;

public interface OrderItemDAO extends JpaRepository<OrderItem, Long>{

}
