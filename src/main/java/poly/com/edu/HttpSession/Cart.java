package poly.com.edu.HttpSession;


import java.util.HashMap;
import java.util.Map;

public class Cart {
    private Map<Long, Integer> items = new HashMap<>(); // Lưu trữ productId và số lượng

    public void addItem(Long productId) {
        items.put(productId, items.getOrDefault(productId, 0) + 1); // Thêm sản phẩm vào giỏ
    }

    public Map<Long, Integer> getItems() {
        return items; // Lấy danh sách sản phẩm trong giỏ
    }

    public void removeItem(Long productId) {
        items.remove(productId); // Xóa sản phẩm khỏi giỏ
    }
}
