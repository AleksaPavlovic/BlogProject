package blog.main.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import blog.main.entity.ContactMessage;

@Component
public interface ContactMessageDAO {
	public List<ContactMessage> getContactMessageList();
	public ContactMessage getContactMessageById(int idContactMessage);
	public void addContactMessage(ContactMessage contactMessage);
	public void deleteContactMessage(int idContactMessage);
}
