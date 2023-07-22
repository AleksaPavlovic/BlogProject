package blog.main.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "contact_messages")
public class ContactMessage {
	
	// ---------------------------------- Fields ----------------------------------
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id_contact_message")
	public int idContactMessage;
	@Column(name="name")
	public String name;
	@Column(name="email")
	public String email;
	@Column(name="message")
	public String message;
	@Column(name="is_read")
	public Boolean isRead;
	@Column(name="created_at")
	public Timestamp createdAt;
	@Column(name="updated_at")
	public Timestamp updatedAt;
	
	// ---------------------------------- Constructors ----------------------------------
	public ContactMessage() {

	}

	public ContactMessage(int idContactMessage, String name, String email, String message, Boolean isRead, Timestamp createdAt, Timestamp updatedAt) {
		this.setIdContactMessage(idContactMessage);
		this.setName(name);
		this.setEmail(email);
		this.setMessage(message);
		this.setIsRead(isRead);
		this.setCreatedAt(createdAt);
		this.setUpdatedAt(updatedAt);
	}
	
	public ContactMessage(String name, String email, String message, Boolean isRead, Timestamp createdAt, Timestamp updatedAt) {
		this.setName(name);
		this.setEmail(email);
		this.setMessage(message);
		this.setIsRead(isRead);
		this.setCreatedAt(createdAt);
		this.setUpdatedAt(updatedAt);
	}
	
	// ---------------------------------- Getters & Setters ----------------------------------
	public int getIdContactMessage() {
		return idContactMessage;
	}

	public void setIdContactMessage(int idContactMessage) {
		this.idContactMessage = idContactMessage;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Boolean getIsRead() {
		return isRead;
	}

	public void setIsRead(Boolean isRead) {
		this.isRead = isRead;
	}

	public Timestamp getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Timestamp createdAt) {
		this.createdAt = createdAt;
	}
	
	public Timestamp getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Timestamp updatedAt) {
		this.updatedAt = updatedAt;
	}
	
	// ---------------------------------- Methods ----------------------------------
	@Override
	public String toString() {
		return "id = " + this.idContactMessage + 
				", \nname = " + this.name + 
				", \nemail = " + this.email + 
				", \nmessage = " + this.message + 
				", \nis_read = " + this.isRead + 
				", \ncreated_at = " + this.createdAt +
				", \nupdated_at = " + this.updatedAt;
	}
	
}
