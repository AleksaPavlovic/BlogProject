package blog.main.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "sliders")
public class Slider {
	
	// ---------------------------------- Fields ----------------------------------
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id_slider")
	public int idSlider;
	@Column(name="image")
	public String image;
	@Column(name="title")
	public String title;
	@Column(name="button_title")
	public String buttonTitle;
	@Column(name="button_url")
	public String buttonUrl;
	@Column(name="display_order")
	public int displayOrder;
	@Column(name="is_enabled")
	public Boolean isEnabled;
	@Column(name="created_at")
	public Timestamp createdAt;
	@Column(name="updated_at")
	public Timestamp updatedAt;
	
	// ---------------------------------- Constructors ----------------------------------
	public Slider() {

	}
	
	public Slider(int idSlider, String image, String title, String buttonTitle, String buttonUrl, int displayOrder,
			Boolean isEnabled, Timestamp createdAt, Timestamp updatedAt) {
		this.setIdSlider(idSlider);
		this.setImage(image);
		this.setTitle(title);
		this.setButtonTitle(buttonTitle);
		this.setButtonUrl(buttonUrl);
		this.setDisplayOrder(displayOrder);
		this.setIsEnabled(isEnabled);
		this.setCreatedAt(createdAt);
		this.setUpdatedAt(updatedAt);
	}
	
	public Slider(String image, String title, String buttonTitle, String buttonUrl, int displayOrder,
			Boolean isEnabled, Timestamp createdAt, Timestamp updatedAt) {
		this.setImage(image);
		this.setTitle(title);
		this.setButtonTitle(buttonTitle);
		this.setButtonUrl(buttonUrl);
		this.setDisplayOrder(displayOrder);
		this.setIsEnabled(isEnabled);
		this.setCreatedAt(createdAt);
		this.setUpdatedAt(updatedAt);
	}
	
	// ---------------------------------- Getters & Setters ----------------------------------
	public int getIdSlider() {
		return idSlider;
	}

	public void setIdSlider(int idSlider) {
		this.idSlider = idSlider;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getButtonTitle() {
		return buttonTitle;
	}

	public void setButtonTitle(String buttonTitle) {
		this.buttonTitle = buttonTitle;
	}

	public String getButtonUrl() {
		return buttonUrl;
	}

	public void setButtonUrl(String buttonUrl) {
		this.buttonUrl = buttonUrl;
	}

	public int getDisplayOrder() {
		return displayOrder;
	}

	public void setDisplayOrder(int displayOrder) {
		this.displayOrder = displayOrder;
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
	
	// ---------------------------------- Methods ----------------------------------
	@Override
	public String toString() {
		return "id=" + this.idSlider + 
				", \nimage=" + this.image + 
				", \ntitle=" + this.title + 
				", \nbutton_title=" + this.buttonTitle + 
				", \nbutton_url=" + this.buttonUrl + 
				", \ndisplay_order=" + this.displayOrder + 
				", \nis_enabled=" + this.isEnabled + 
				", \ncreated_at=" + this.createdAt +
				", \nupdated_at=" + this.updatedAt;
	}
	
}
