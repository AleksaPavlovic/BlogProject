package blog.main.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import blog.main.entity.Post;

@Component
public interface PostDAO {
	public List<Post> getPostList();
	public Post getPostById(int idPost);
	public void addPost(Post post);
	public void deletePost(int idPost);
}
