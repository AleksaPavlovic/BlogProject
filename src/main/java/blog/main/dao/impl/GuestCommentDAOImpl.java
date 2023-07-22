package blog.main.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import blog.main.dao.GuestCommentDAO;
import blog.main.entity.GuestComment;

@Component
public class GuestCommentDAOImpl implements GuestCommentDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	// ---------------------------------- Get Methods ----------------------------------
	@Override
	@Transactional
	public List<GuestComment> getGuestCommentList() {
		Session session = sessionFactory.getCurrentSession();
		List <GuestComment> guestCommentList = session.createNativeQuery("select * from guest_comments", GuestComment.class).getResultList();
		return guestCommentList;
	}

	@Override
	@Transactional
	public GuestComment getGuestCommentById(int idGuestComment) {
		Session session = sessionFactory.getCurrentSession();
		GuestComment guestComment = session.get(GuestComment.class, idGuestComment);
		return guestComment;
	}
	
	// ---------------------------------- CRUD Methods ----------------------------------
	@Override
	@Transactional
	public void addGuestComment(GuestComment guestComment) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(guestComment);
		
	}

	@Override
	@Transactional
	public void deleteGuestComment(int idGuestComment) {
		Session session = sessionFactory.getCurrentSession();
		GuestComment guestComment = session.get(GuestComment.class, idGuestComment);
		session.delete(guestComment);
	}
}
