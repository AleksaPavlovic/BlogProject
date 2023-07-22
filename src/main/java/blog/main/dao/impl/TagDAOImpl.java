package blog.main.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import blog.main.dao.TagDAO;
import blog.main.entity.Tag;

@Component
public class TagDAOImpl implements TagDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	// ---------------------------------- Get Methods ----------------------------------
	@Override
	@Transactional
	public List<Tag> getTagList() {
		Session session = sessionFactory.getCurrentSession();
		List <Tag> tagList = session.createNativeQuery("select * from tags", Tag.class).getResultList();
		return tagList;
	}

	@Override
	@Transactional
	public Tag getTagById(int idTag) {
		Session session = sessionFactory.getCurrentSession();
		Tag tag = session.get(Tag.class, idTag);
		return tag;
	}
	
	// ---------------------------------- CRUD Methods ----------------------------------
	@Override
	@Transactional
	public void addTag(Tag tag) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(tag);
		
	}

	@Override
	@Transactional
	public void deleteTag(int idTag) {
		Session session = sessionFactory.getCurrentSession();
		session.createNativeQuery("delete from post_tags where tag_id =:idTag").setParameter("idTag", idTag).executeUpdate();
		Tag tag = session.get(Tag.class, idTag);
		session.delete(tag);
	}
}
