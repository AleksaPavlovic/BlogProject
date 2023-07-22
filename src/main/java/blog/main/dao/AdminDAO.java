package blog.main.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import blog.main.entity.Admin;

@Component
public interface AdminDAO {
	public List<Admin> getAdminList();
}
