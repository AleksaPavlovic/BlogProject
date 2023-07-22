package blog.main.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "tags")
public class Tag {
	
	// ---------------------------------- Fields ----------------------------------
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id_tag")
	public int idTag;
	@Column(name="name")
	public String name;
	@Column(name="created_at")
	public Timestamp createdAt;
	@Column(name="updated_at")
	public Timestamp updatedAt;
	
	// ---------------------------------- Constructors ----------------------------------
	public Tag() {

	}
	
	public Tag(String idTag) {
		this.setIdTag(Integer.parseInt(idTag));
	}
	
	public Tag(int idTag, String name, Timestamp createdAt, Timestamp updatedAt) {
		this.setIdTag(idTag);
		this.setName(name);
		this.setCreatedAt(createdAt);
		this.setUpdatedAt(updatedAt);
	}
	
	public Tag(String name, Timestamp createdAt, Timestamp updatedAt) {
		this.setName(name);
		this.setCreatedAt(createdAt);
		this.setUpdatedAt(updatedAt);
	}
	
	// ---------------------------------- Getters & Setters ----------------------------------
	public int getIdTag() {
		return idTag;
	}
	public void setIdTag(int idTag) {
		this.idTag = idTag;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
		return "id = " + this.idTag + 
				", \nname = " + this.name + 
				", \nupdated_at = " + this.updatedAt;
	}
	
}
