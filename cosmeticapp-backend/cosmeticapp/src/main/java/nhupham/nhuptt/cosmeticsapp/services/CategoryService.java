package nhupham.nhuptt.cosmeticsapp.services;

import lombok.RequiredArgsConstructor;
import nhupham.nhuptt.cosmeticsapp.dtos.CategoryDTO;
import nhupham.nhuptt.cosmeticsapp.models.Category;
import nhupham.nhuptt.cosmeticsapp.repositories.CategoryRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class CategoryService implements ICategoryService {
    private final CategoryRepository categoryReporsitory;

    @Override
    public Category createCategory(CategoryDTO categoryDTO) {
        Category newCategory = Category.builder()
                .name(categoryDTO.getName())
                .build();
        return categoryReporsitory.save(newCategory);
    }

    @Override
    public Category getCategoryById(Long id) {
        return categoryReporsitory.findById(id)
                .orElseThrow(() -> new RuntimeException("Category not found"));
    }

    @Override
    public List<Category> getAllCategories() {
        return categoryReporsitory.findAll();
    }

    @Override
    public Category updateCategory(Long categoryId, CategoryDTO categoryDTO) {
        Category existingCategory = getCategoryById(categoryId);
        existingCategory.setName(categoryDTO.getName());
        categoryReporsitory.save(existingCategory);
        return existingCategory;
    }

    @Override
    public void deleteCategory(Long id) {
        // xoa cung
        categoryReporsitory.deleteById(id);
    }
}
