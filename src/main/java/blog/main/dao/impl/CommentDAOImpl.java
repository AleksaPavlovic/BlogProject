package blog.main.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import blog.main.dao.CommentDAO;
import blog.main.entity.Comment;

@Component
public class CommentDAOImpl implements CommentDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	// ---------------------------------- Get Methods ----------------------------------
	@Override
	@Transactional
	public List<Comment> getCommentList() {
		Session session = sessionFactory.getCurrentSession();
		List <Comment> commentList = session.createNativeQuery("select * from comments", Comment.class).getResultList();
		return commentList;
	}

	@Override
	@Transactional
	public Comment getCommentById(int idComment) {
		Session session = sessionFactory.getCurrentSession();
		Comment comment = session.get(Comment.class, idComment);
		return comment;
	}
	
	// ---------------------------------- CRUD Methods ----------------------------------
	@Override
	@Transactional
	public void addComment(Comment comment) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(comment);
		
	}

	@Override
	@Transactional
	public void deleteComment(int idComment) {
		Session session = sessionFactory.getCurrentSession();
		Comment comment = session.get(Comment.class, idComment);
		session.delete(comment);
	}

}
