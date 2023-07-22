package blog.main.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import blog.main.dao.CategoryDAO;
import blog.main.dao.PostDAO;
import blog.main.entity.Category;
import blog.main.entity.Post;

@Component
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private PostDAO postDAO;
	
	// ---------------------------------- Get Methods ----------------------------------
	@Override
	@Transactional
	public List<Category> getCategoryList() {
		Session session = sessionFactory.getCurrentSession();
		List <Category> categoryList = session.createNativeQuery("select * from categories order by display_order asc", Category.class).getResultList();
		return categoryList;
	}

	@Override
	@Transactional
	public Category getCategoryById(int idCategory) {
		Session session = sessionFactory.getCurrentSession();
		Category category = session.get(Category.class, idCategory);
		return category;
	}
	
	// ---------------------------------- CRUD Methods ----------------------------------
	@Override
	@Transactional
	public void addCategory(Category category) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(category);
		
	}

	@Override
	@Transactional
	public void deleteCategory(int idCategory) {
		Session session = sessionFactory.getCurrentSession();
		List<Post> postList = postDAO.getPostList();
		for(Post p:postList) {
			if(p.getCategory().getIdCategory() == idCategory) {
				postDAO.deletePost(p.getIdPost());
			}
		}
		Category category = session.get(Category.class, idCategory);
		session.delete(category);
	}	
}
