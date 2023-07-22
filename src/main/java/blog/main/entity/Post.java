package blog.main.entity;

import java.sql.Timestamp;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "posts")
public class Post {
	
	// ---------------------------------- Fields ----------------------------------
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id_post")
	public int idPost;
	@ManyToOne(cascade = {CascadeType.DETACH,CascadeType.MERGE,
			CascadeType.PERSIST,CascadeType.REFRESH})
	@JoinColumn(name="user_id")
	public User user;
	@ManyToOne(cascade = {CascadeType.DETACH,CascadeType.MERGE,
			CascadeType.PERSIST,CascadeType.REFRESH})
	@JoinColumn(name="category_id")
	public Category category;
	@Column(name="title")
	public String title;
	@Column(name="short_description")
	public String shortDescription;
	@Column(name="content")
	public String content;
	@Column(name="image")
	public String image;
	@Column(name="is_important")
	public Boolean isImportant;
	@Column(name="views")
	public int views;
	@Column(name="is_enabled")
	public Boolean isEnabled;
	@Column(name="created_at")
	public Timestamp createdAt;
	@Column(name="updated_at")
	public Timestamp updatedAt;
	@ManyToMany(cascade = {CascadeType.DETACH,CascadeType.MERGE,
				CascadeType.PERSIST,CascadeType.REFRESH}, fetch = FetchType.EAGER)
	@JoinTable(name="post_tags", joinColumns = @JoinColumn(name="post_id"),
							inverseJoinColumns = @JoinColumn(name="tag_id"))
	public List<Tag> tagList;
	
	// ---------------------------------- Constructors ----------------------------------
	public Post() {
		
	}

	public Post(int idPost, User user, Category category, String title, String shortDescription, String content,
			String image, Boolean isImportant, int views, Boolean isEnabled, Timestamp createdAt, Timestamp updatedAt) {
		this.setIdPost(idPost);
		this.setUser(user);
		this.setCategory(category);
		this.setTitle(title);
		this.setShortDescription(shortDescription);
		this.setContent(content);
		this.setImage(image);
		this.setIsImportant(isImportant);
		this.setViews(views);
		this.setIsEnabled(isEnabled);
		this.setCreatedAt(createdAt);
		this.setUpdatedAt(updatedAt);
	}
	
	public Post(User user, Category category, String title, String shortDescription, String content,
			String image, Boolean isImportant, int views, Boolean isEnabled, Timestamp createdAt, Timestamp updatedAt) {
		this.setUser(user);
		this.setCategory(category);
		this.setTitle(title);
		this.setShortDescription(shortDescription);
		this.setContent(content);
		this.setImage(image);
		this.setIsImportant(isImportant);
		this.setViews(views);
		this.setIsEnabled(isEnabled);
		this.setCreatedAt(createdAt);
		this.setUpdatedAt(updatedAt);
	}
	
	// ---------------------------------- Getters & Setters ----------------------------------
	public int getIdPost() {
		return idPost;
	}

	public void setIdPost(int idPost) {
		this.idPost = idPost;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getShortDescription() {
		return shortDescription;
	}

	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public Boolean getIsImportant() {
		return isImportant;
	}

	public void setIsImportant(Boolean isImportant) {
		this.isImportant = isImportant;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public Boolean getIsEnabled() {
		return isEnabled;
	}

	public void setIsEnabled(Boolean isEnabled) {
		this.isEnabled = isEnabled;
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

	public List<Tag> getTagList() {
		return tagList;
	}

	public void setTagList(List<Tag> tagList) {
		this.tagList = tagList;
	}

	// ---------------------------------- Methods ----------------------------------
	@Override
	public String toString() {
		return "id = " + this.idPost + 
				", \nuser_id = " + this.user + 
				", \ncategory_id = " + this.category + 
				", \ntitle = " + this.title + 
				", \nshort_description = " + this.shortDescription + 
				", \ncontent = " + this.content + 
				", \nimage = " + this.image + 
				", \nis_important = " + this.isImportant + 
				", \nviews = " + this.views + 
				", \nis_enabled = " + this.isEnabled + 
				", \ncreated_at = " + this.createdAt +
				", \nupdated_at = " + this.updatedAt;
	}

}
