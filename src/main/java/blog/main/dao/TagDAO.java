package blog.main.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import blog.main.entity.Tag;

@Component
public interface TagDAO {
	public List<Tag> getTagList();
	public Tag getTagById(int idTag);
	public void addTag(Tag tag);
	public void deleteTag(int idTag);
}
