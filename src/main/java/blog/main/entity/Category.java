package blog.main.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "categories")
public class Category {
	
	// ---------------------------------- Fields ----------------------------------
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id_category")
	public int idCategory;
	@Column(name="name")
	public String name;
	@Column(name="description")
	public String description;
	@Column(name="display_order")
	public int displayOrder;
	@Column(name="created_at")
	public Timestamp createdAt;
	@Column(name="updated_at")
	public Timestamp updatedAt;

	// ---------------------------------- Constructors ----------------------------------
	public Category() {

	}

	public Category(int idCategory, String name, String description, int displayOrder, Timestamp createdAt, Timestamp updatedAt) {
		this.setIdCategory(idCategory);
		this.setName(name);
		this.setDescription(description);
		this.setDisplayOrder(displayOrder);
		this.setCreatedAt(createdAt);
		this.setUpdatedAt(updatedAt);
	}
	
	public Category(String name, String description, int displayOrder, Timestamp createdAt, Timestamp updatedAt) {
		this.setName(name);
		this.setDescription(description);
		this.setDisplayOrder(displayOrder);
		this.setCreatedAt(createdAt);
		this.setUpdatedAt(updatedAt);
	}
	
	// ---------------------------------- Getters & Setters ----------------------------------
	public int getIdCategory() {
		return idCategory;
	}

	public void setIdCategory(int idCategory) {
		this.idCategory = idCategory;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getDisplayOrder() {
		return displayOrder;
	}

	public void setDisplayOrder(int displayOrder) {
		this.displayOrder = displayOrder;
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
		return "id = " + this.idCategory + 
				", \nname = " + this.name + 
				", \ndescription = " + this.description + 
				", \ndisplay_order = " + this.displayOrder + 
				", \ncreated_at = " + this.createdAt +
				", \nupdated_at = " + this.updatedAt;
	}

}
