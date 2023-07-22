package blog.main.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import blog.main.dao.PostDAO;
import blog.main.entity.Post;

@Component
public class PostDAOImpl implements PostDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	// ---------------------------------- Get Methods ----------------------------------
	@Override
	@Transactional
	public List<Post> getPostList() {
		Session session = sessionFactory.getCurrentSession();
		List <Post> postList = session.createNativeQuery("select * from posts", Post.class).getResultList();
		return postList;
	}

	@Override
	@Transactional
	public Post getPostById(int idPost) {
		Session session = sessionFactory.getCurrentSession();
		Post post = session.get(Post.class, idPost);
		return post;
	}
	
	// ---------------------------------- CRUD Methods ----------------------------------
	@Override
	@Transactional
	public void addPost(Post post) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(post);
		
	}

	@Override
	@Transactional
	public void deletePost(int idPost) {
		Session session = sessionFactory.getCurrentSession();
		session.createNativeQuery("delete from comments where post_id =:idPost").setParameter("idPost", idPost).executeUpdate();
		session.createNativeQuery("delete from guest_comments where post_id =:idPost").setParameter("idPost", idPost).executeUpdate();
		Post post = session.get(Post.class, idPost);
		session.delete(post);
	}

}
