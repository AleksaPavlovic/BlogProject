package blog.main.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import blog.main.dao.UserDAO;
import blog.main.entity.User;

@Component
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	// ---------------------------------- Get Methods ----------------------------------
	@Override
	@Transactional
	public List<User> getUserList() {
		Session session = sessionFactory.getCurrentSession();
		List <User> userList = session.createNativeQuery("select * from users", User.class).getResultList();
		return userList;
	}

	@Override
	@Transactional
	public User getUserById(int idUser) {
		Session session = sessionFactory.getCurrentSession();
		User user = session.get(User.class, idUser);
		return user;
	}
	
	// ---------------------------------- CRUD Methods ----------------------------------
	@Override
	@Transactional
	public void addUser(User user) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(user);
		
	}

	@Override
	@Transactional
	public void deleteUser(int idUser) {
		Session session = sessionFactory.getCurrentSession();
		// 1. Delete all tags related to the user's posts
	    session.createNativeQuery("delete from post_tags where post_id in (select id_post from posts where user_id = :idUser)")
	           .setParameter("idUser", idUser).executeUpdate();
    	// 2. Delete all comments related to the user's posts
	    session.createNativeQuery("delete from comments where post_id in (select id_post from posts where user_id = :idUser)")
	           .setParameter("idUser", idUser).executeUpdate();
	    // 2.1 Delete all guest comments related to the user's posts
		session.createNativeQuery("delete from guest_comments where post_id in (select id_post from posts where user_id = :idUser)")
		       .setParameter("idUser", idUser).executeUpdate();
	    // 3. Delete all comments made by the user
	    session.createNativeQuery("delete from comments where user_id =:idUser")
	           .setParameter("idUser", idUser).executeUpdate();
	    // 4. Delete all posts related to the user
	    session.createNativeQuery("delete from posts where user_id =:idUser")
	           .setParameter("idUser", idUser)
	           .executeUpdate();
		User user = session.get(User.class, idUser);
		session.delete(user);
	}
}
