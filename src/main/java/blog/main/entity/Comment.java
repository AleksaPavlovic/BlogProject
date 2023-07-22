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
@Table(name = "comments")
public class Comment {
	
	// ---------------------------------- Fields ----------------------------------
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id_comment")
	public int idComment;
	@ManyToOne(cascade = {CascadeType.DETACH,CascadeType.MERGE,
			CascadeType.PERSIST,CascadeType.REFRESH})
	@JoinColumn(name="post_id")
	public Post post;
	@ManyToOne(cascade = {CascadeType.DETACH,CascadeType.MERGE,
			CascadeType.PERSIST,CascadeType.REFRESH})
	@JoinColumn(name="user_id")
	public User user;
	@Column(name="content")
	public String content;
	@Column(name="created_at")
	public Timestamp createdAt;
	@Column(name="updated_at")
	public Timestamp updatedAt;
	
	// ---------------------------------- Constructors ----------------------------------
	public Comment() {

	}
	
	public Comment(int idComment, Post post, User user, String content, Timestamp createdAt, Timestamp updatedAt) {
		this.setIdComment(idComment);
		this.setPost(post);
		this.setUser(user);
		this.setContent(content);
		this.setCreatedAt(createdAt);
		this.setUpdatedAt(updatedAt);
	}
	
	public Comment(Post post, User user, String content, Timestamp createdAt, Timestamp updatedAt) {
		this.setPost(post);
		this.setUser(user);
		this.setContent(content);
		this.setCreatedAt(createdAt);
		this.setUpdatedAt(updatedAt);
	}
	
	// ---------------------------------- Getters & Setters ----------------------------------
	public int getIdComment() {
		return idComment;
	}

	public void setIdComment(int idComment) {
		this.idComment = idComment;
	}

	public Post getPost() {
		return post;
	}

	public void setPost(Post post) {
		this.post = post;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
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
		return "id = " + this.idComment + 
				", \npost_id = " + this.post + 
				", \nuser_id = " + this.user + 
				", \ncontent = " + this.content + 
				", \ncreated_at = " + this.createdAt +
				", \nupdated_at = " + this.updatedAt;
	}
	
}
