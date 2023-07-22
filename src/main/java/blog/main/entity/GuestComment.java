package blog.main.entity;

import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "guest_comments")
public class GuestComment {

	// ---------------------------------- Fields ----------------------------------
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id_guest_comment")
	public int idGuestComment;
	@ManyToOne(cascade = {CascadeType.DETACH,CascadeType.MERGE,
			CascadeType.PERSIST,CascadeType.REFRESH})
	@JoinColumn(name="post_id")
	public Post post;
	@Column(name="first_name")
	public String firstName;
	@Column(name="last_name")
	public String lastName;
	@Column(name="email")
	public String email;
	@Column(name="content")
	public String content;
	@Column(name="created_at")
	public Timestamp createdAt;
	@Column(name="updated_at")
	public Timestamp updatedAt;
	
	// ---------------------------------- Constructors ----------------------------------
	public GuestComment() {

	}
	
	public GuestComment(int GuestComment, Post post, String firstName, String lastName, String email, String content,
			Timestamp createdAt, Timestamp updatedAt) {
		this.setIdGuestComment(GuestComment);
		this.setPost(post);
		this.setFirstName(firstName);
		this.setLastName(lastName);
		this.setEmail(email);
		this.setContent(content);
		this.setCreatedAt(createdAt);
		this.setUpdatedAt(updatedAt);
	}
	
	public GuestComment(Post post, String firstName, String lastName, String email, String content,
			Timestamp createdAt, Timestamp updatedAt) {
		this.setPost(post);
		this.setFirstName(firstName);
		this.setLastName(lastName);
		this.setEmail(email);
		this.setContent(content);
		this.setCreatedAt(createdAt);
		this.setUpdatedAt(updatedAt);
	}
	
	// ---------------------------------- Getters & Setters ----------------------------------
	public int getIdGuestComment() {
		return idGuestComment;
	}
	public void setIdGuestComment(int idGuestComment) {
		this.idGuestComment = idGuestComment;
	}
	public Post getPost() {
		return post;
	}
	public void setPost(Post post) {
		this.post = post;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
		return "idComment = " + this.idGuestComment + 
				", \npost = " + this.post + 
				", \nfirstName = " + this.firstName + 
				", \nlastName = " + this.lastName + 
				", \nemail = " + this.email + 
				", \ncontent = " + this.content + 
				", \ncreatedAt = " + this.createdAt + 
				", \nupdatedAt = " + this.updatedAt;
	}
	
}
