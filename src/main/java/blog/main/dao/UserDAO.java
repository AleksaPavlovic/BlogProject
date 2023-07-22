package blog.main.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import blog.main.entity.User;

@Component
public interface UserDAO {
	public List<User> getUserList();
	public User getUserById(int idUser);
	public void addUser(User user);
	public void deleteUser(int idUser);
}
