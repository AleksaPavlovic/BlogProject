package blog.main.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import blog.main.dao.ContactMessageDAO;
import blog.main.entity.ContactMessage;

@Component
public class ContactMessageDAOImpl implements ContactMessageDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	// ---------------------------------- Get Methods ----------------------------------
	@Override
	@Transactional
	public List<ContactMessage> getContactMessageList() {
		Session session = sessionFactory.getCurrentSession();
		List <ContactMessage> contactMessageList = session.createNativeQuery("select * from contact_messages", ContactMessage.class).getResultList();
		return contactMessageList;
	}

	@Override
	@Transactional
	public ContactMessage getContactMessageById(int idContactMessage) {
		Session session = sessionFactory.getCurrentSession();
		ContactMessage contactMessage = session.get(ContactMessage.class, idContactMessage);
		return contactMessage;
	}
	
	// ---------------------------------- CRUD Methods ----------------------------------
	@Override
	@Transactional
	public void addContactMessage(ContactMessage contactMessage) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(contactMessage);
		
	}

	@Override
	@Transactional
	public void deleteContactMessage(int idContactMessage) {
		Session session = sessionFactory.getCurrentSession();
		ContactMessage contactMessage = session.get(ContactMessage.class, idContactMessage);
		session.delete(contactMessage);
	}
}
