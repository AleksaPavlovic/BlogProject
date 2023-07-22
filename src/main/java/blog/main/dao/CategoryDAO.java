package blog.main.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import blog.main.entity.Category;

@Component
public interface CategoryDAO {
	public List<Category> getCategoryList();
	public Category getCategoryById(int idCategory);
	public void addCategory(Category category);
	public void deleteCategory(int idCategory);
}
