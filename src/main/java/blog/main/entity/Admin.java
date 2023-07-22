package blog.main.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="admins")
public class Admin {
	
	// ------------------------- Fields -------------------------
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id_admin")
	public int idAdmin;
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
	
	// ------------------------- Constructors -------------------------
	public Admin() {
		
	}

	public Admin(int idAdmin, String username, String email, String password, String firstName, String lastName) {
		this.setIdAdmin(idAdmin);
		this.setUsername(username);
		this.setEmail(email);
		this.setPassword(password);
		this.setFirstName(firstName);
		this.setLastName(lastName);
	}
	
	public Admin(String username, String email, String password, String firstName, String lastName) {
		this.setUsername(username);
		this.setEmail(email);
		this.setPassword(password);
		this.setFirstName(firstName);
		this.setLastName(lastName);
	}
	
	// ------------------------- Getters & Setters -------------------------
	public int getIdAdmin() {
		return idAdmin;
	}

	public void setIdAdmin(int idAdmin) {
		this.idAdmin = idAdmin;
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
	
	// ------------------------- Methods -------------------------
	@Override
	public String toString() {
		return "idAdmin = " + this.idAdmin + 
				", \nusername = " + this.username + 
				", \nemail = " + this.email + 
				", \npassword = " + this.password + 
				", \nfirstName = " + this.firstName + 
				", \nlastName = " + this.lastName;
	}
	
	
}
