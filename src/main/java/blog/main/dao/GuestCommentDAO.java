package blog.main.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import blog.main.entity.GuestComment;

@Component
public interface GuestCommentDAO {
	public List<GuestComment> getGuestCommentList();
	public GuestComment getGuestCommentById(int idGuestComment);
	public void addGuestComment(GuestComment guestComment);
	public void deleteGuestComment(int idGuestComment);
}
