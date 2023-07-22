package blog.main.dao.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import blog.main.dao.AdminDAO;
import blog.main.entity.Admin;

@Component
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<Admin> getAdminList() {
		Session session = sessionFactory.getCurrentSession();
		List<Admin> adminList =(List<Admin>) session.createNativeQuery("select * from admins", Admin.class).getResultList();
		return adminList;
	}

}
