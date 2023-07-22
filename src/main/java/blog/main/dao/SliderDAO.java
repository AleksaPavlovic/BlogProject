package blog.main.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import blog.main.entity.Slider;

@Component
public interface SliderDAO {
	public List<Slider> getSliderList();
	public Slider getSliderById(int idSlider);
	public void addSlider(Slider slider);
	public void deleteSlider(int idSlider);
}
