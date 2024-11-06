package poly.com.edu.Converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import poly.com.edu.dao.CategoryDAO;
import poly.com.edu.entity.Category;

@Component
public class StringToCategoryConverter implements Converter<String, Category> {

    @Autowired
    private CategoryDAO categoryDAO;

    @Override
    public Category convert(String source) {
        if (source == null || source.isEmpty()) {
            return null; // Trả về null nếu không có giá trị
        }
        try {
            Long categoryId = Long.parseLong(source);
            return categoryDAO.findById(categoryId).orElse(null);
        } catch (NumberFormatException e) {
            return null; // Nếu không thể chuyển đổi thành số, trả về null
        }
    }
}

