package nhupham.nhuptt.cosmeticsapp.services;

import nhupham.nhuptt.cosmeticsapp.dtos.CategoryDTO;
import nhupham.nhuptt.cosmeticsapp.models.Category;
import org.springframework.stereotype.Service;

import java.util.List;


public interface ICategoryService {
    Category createCategory(CategoryDTO categoryDTO);
    Category getCategoryById(Long id);
    List<Category> getAllCategories();
    Category updateCategory(Long id, CategoryDTO categoryDTO);
    void deleteCategory(Long id);
}
