package blog.main.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import blog.main.dao.SliderDAO;
import blog.main.entity.Slider;

@Component
public class SliderDAOImpl implements SliderDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	// ---------------------------------- Get Methods ----------------------------------
	@Override
	@Transactional
	public List<Slider> getSliderList() {
		Session session = sessionFactory.getCurrentSession();
		List <Slider> sliderList = session.createNativeQuery("select * from sliders", Slider.class).getResultList();
		return sliderList;
	}

	@Override
	@Transactional
	public Slider getSliderById(int idSlider) {
		Session session = sessionFactory.getCurrentSession();
		Slider slider = session.get(Slider.class, idSlider);
		return slider;
	}
	
	// ---------------------------------- CRUD Methods ----------------------------------
	@Override
	@Transactional
	public void addSlider(Slider slider) {
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(slider);
		
	}

	@Override
	@Transactional
	public void deleteSlider(int idSlider) {
		Session session = sessionFactory.getCurrentSession();
		Slider slider = session.get(Slider.class, idSlider);
		session.delete(slider);
	}
}
