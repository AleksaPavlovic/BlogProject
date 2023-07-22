package blog.main.entity;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class User {
	
	// ---------------------------------- Fields ----------------------------------
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id_user")
	public int idUser;
	@Column(name="username")
    public String username;
	@Column(name="email")
	public String email;
	@Column(name="password")
	public String password;
	@Column(name="first_name")
	public String firstName;
	@Column(name="last_name")
	public String lastName;
	@Column(name="phone_number")
	public String phoneNumber;
	@Column(name="profile_image")
	public String profileImage;
	@Column(name="is_banned")
    public Boolean isBanned;
	@Column(name="created_at")
    public Timestamp createdAt;
	@Column(name="updated_at")
	public Timestamp updatedAt;
	
	// ---------------------------------- Constructors ----------------------------------
	public User() {

	}
	
	public User(int idUser, String username, String email, String password, String firstName, String lastName,
			String phoneNumber, String profileImage, Boolean isBanned, Timestamp createdAt, Timestamp updatedAt) {
		this.setIdUser(idUser);
		this.setUsername(username);
		this.setEmail(email);
		this.setPassword(password);
		this.setFirstName(firstName);
		this.setLastName(lastName);
		this.setPhoneNumber(phoneNumber);
		this.setProfileImage(profileImage);
		this.setIsBanned(isBanned);
		this.setCreatedAt(createdAt);
		this.setUpdatedAt(updatedAt);
	}
	
	public User(String username, String email, String password, String firstName, String lastName,
			String phoneNumber, String profileImage, Boolean isBanned, Timestamp createdAt, Timestamp updatedAt) {
		this.setUsername(username);
		this.setEmail(email);
		this.setPassword(password);
		this.setFirstName(firstName);
		this.setLastName(lastName);
		this.setPhoneNumber(phoneNumber);
		this.setProfileImage(profileImage);
		this.setIsBanned(isBanned);
		this.setCreatedAt(createdAt);
		this.setUpdatedAt(updatedAt);
	}
	
	// ---------------------------------- Getters & Setters ----------------------------------
	public int getIdUser() {
		return idUser;
	}
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
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
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getProfileImage() {
		return profileImage;
	}
	public void setProfileImage(String profileImage) {
		this.profileImage = profileImage;
	}
	public Boolean getIsBanned() {
		return isBanned;
	}
	public void setIsBanned(Boolean isBanned) {
		this.isBanned = isBanned;
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
		return "id = " + this.idUser + 
				", \nusername = " + this.username + 
				", \nemail = " + this.email + 
				", \npassword = " + this.password + 
				", \nfirst_name = " + this.firstName + 
				", \nlast_name = " + this.lastName + 
				", \nphone_number = " + this.phoneNumber + 
				", \nprofile_image = " + this.profileImage + 
				", \nis_banned = " + this.isBanned + 
				", \ncreated_at = " + this.createdAt +
				", \nupdated_at = " + this.updatedAt;
	}
	
}
