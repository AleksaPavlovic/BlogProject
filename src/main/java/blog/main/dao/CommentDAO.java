package blog.main.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import blog.main.entity.Comment;

@Component
public interface CommentDAO {
	public List<Comment> getCommentList();
	public Comment getCommentById(int idComment);
	public void addComment(Comment comment);
	public void deleteComment(int idComment);
}
