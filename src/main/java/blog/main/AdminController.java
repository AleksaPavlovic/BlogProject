package blog.main;

import java.sql.Timestamp;
import java.util.List;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import blog.main.dao.AdminDAO;
import blog.main.dao.CategoryDAO;
import blog.main.dao.CommentDAO;
import blog.main.dao.ContactMessageDAO;
import blog.main.dao.GuestCommentDAO;
import blog.main.dao.PostDAO;
import blog.main.dao.SliderDAO;
import blog.main.dao.TagDAO;
import blog.main.dao.UserDAO;
import blog.main.entity.Admin;
import blog.main.entity.Category;
import blog.main.entity.Comment;
import blog.main.entity.ContactMessage;
import blog.main.entity.GuestComment;
import blog.main.entity.Post;
import blog.main.entity.Slider;
import blog.main.entity.Tag;
import blog.main.entity.User;

@Controller
public class AdminController {
	
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private CommentDAO commentDAO;
	@Autowired
	private ContactMessageDAO contactMessageDAO;
	@Autowired
	private PostDAO postDAO;
	@Autowired
	private SliderDAO sliderDAO;
	@Autowired
	private TagDAO tagDAO;
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private GuestCommentDAO guestCommentDAO;
	@Autowired
	private AdminDAO adminDAO;

	@RequestMapping("/main-form")
	public String getMainForm() {
		return "main-form";
	}
	
	// ------------------------- Category Form -------------------------
	@RequestMapping("/category-form")
	public String getCategoryForm(Model model) {
		List<Category> categoryList = categoryDAO.getCategoryList();
		model.addAttribute("categoryList", categoryList);
		return "category-form";
	}
	// ------------------------- Category CRUD -------------------------
	@RequestMapping("/category-add")
	public String addCategoryAC(Model model) {	
		Category category = new Category();
		model.addAttribute("category", category);
		return "category-add";
	}
	@RequestMapping("/category-save")
	public String saveCategoryAC(@ModelAttribute Category category) {
	    Category existingCategory = categoryDAO.getCategoryById(category.getIdCategory());
	    if (existingCategory == null) {
	        category.setCreatedAt(new Timestamp(System.currentTimeMillis()));
	    } else {
	        category.setCreatedAt(existingCategory.getCreatedAt());
	    }
	    category.setUpdatedAt(new Timestamp(System.currentTimeMillis())); 
		categoryDAO.addCategory(category);	
		return "redirect:category-form";
	}
	@RequestMapping("/category-update")
	public String updateCategoryAC(@RequestParam int idCategory, Model model) {
		Category category = categoryDAO.getCategoryById(idCategory);
		category.setUpdatedAt(new Timestamp(System.currentTimeMillis()));
		model.addAttribute("category", category);
		return "category-add";
	}
	@RequestMapping("/category-delete")
	public String deleteCategoryAC(@RequestParam int idCategory) {
		categoryDAO.deleteCategory(idCategory);
		return "redirect:category-form";
	}
	@RequestMapping("/save-category-order")
	@ResponseBody
	public String saveCategoryOrder(@RequestParam("order") List<String> categoryOrder) {
	  List<Category> categories = categoryDAO.getCategoryList();
	  
	  // Iterate over categories and update the displayOrder value
	  for (int i = 0; i < categories.size(); i++) {
	    Category category = categories.get(i);
	    int displayOrder = Integer.parseInt(categoryOrder.get(i));
	    category.setDisplayOrder(displayOrder);
	    categoryDAO.addCategory(category);
	  }
	  
	  return "redirect:category-form";
	}

	// ------------------------- Comment Form -------------------------
	@RequestMapping("/comment-form")
	public String getCommentForm(Model model) {
		List<Comment> commentList = commentDAO.getCommentList();
		model.addAttribute("commentList", commentList);
		return "comment-form";
	}
	// ------------------------- Comment CRUD -------------------------
	@RequestMapping("/comment-add")
	public String addCommentAC(Model model) {	
		model.addAttribute("comment", new Comment());
		List<Post> postList = postDAO.getPostList();
		model.addAttribute("postList", postList);
		List<User> userList = userDAO.getUserList();
		model.addAttribute("userList", userList);
		return "comment-add";
	}
	@RequestMapping("/comment-save")
	public String saveCommentAC(@ModelAttribute Comment comment) {
		Post post = postDAO.getPostById(comment.getPost().getIdPost());
		comment.setPost(post);
		User user = userDAO.getUserById(comment.getUser().getIdUser());
		comment.setUser(user);
		Comment existingComment = commentDAO.getCommentById(comment.getIdComment());
	    if (existingComment == null) {
	    	comment.setCreatedAt(new Timestamp(System.currentTimeMillis()));
	    } else {
	    	comment.setCreatedAt(existingComment.getCreatedAt());
	    }
	    comment.setUpdatedAt(new Timestamp(System.currentTimeMillis())); 
		commentDAO.addComment(comment);	
		return "redirect:comment-form";
	}
	@RequestMapping("/comment-update")
	public String updateCommentAC(@RequestParam int idComment, Model model) {
		Comment comment = commentDAO.getCommentById(idComment);
		model.addAttribute("comment", comment);
		List<Post> postList = postDAO.getPostList();
		model.addAttribute("postList", postList);
		List<User> userList = userDAO.getUserList();
		model.addAttribute("userList", userList);
		return "comment-add";
	}
	@RequestMapping("/comment-delete")
	public String deleteCommentAC(@RequestParam int idComment) {
		commentDAO.deleteComment(idComment);
		return "redirect:comment-form";
	}
	// ------------------------- ContactMessage Form -------------------------
	@RequestMapping("/contact-message-form")
	public String getContactMessageForm(Model model) {
		List<ContactMessage> contactMessageList = contactMessageDAO.getContactMessageList();
		model.addAttribute("contactMessageList", contactMessageList);
		return "contact-message-form";
	}
	// ------------------------- ContactMessage CRUD -------------------------
	@RequestMapping("/contact-message-add")
	public String addContactMessageAC(Model model) {	
		ContactMessage contactMessage = new ContactMessage();
		contactMessage.setIsRead(false);
		model.addAttribute("contactMessage", contactMessage);
		return "contact-message-add";
	}
	@RequestMapping("/contact-message-save")
	public String saveContactMessageAC(@ModelAttribute ContactMessage contactMessage) {
		ContactMessage existingContactMessage = contactMessageDAO.getContactMessageById(contactMessage.getIdContactMessage());
	    if (existingContactMessage == null) {
	    	contactMessage.setCreatedAt(new Timestamp(System.currentTimeMillis()));
	    } else {
	    	contactMessage.setCreatedAt(existingContactMessage.getCreatedAt());
	    }
	    contactMessage.setUpdatedAt(new Timestamp(System.currentTimeMillis()));
		contactMessageDAO.addContactMessage(contactMessage);	
		return "redirect:contact-message-form";
	}
	@RequestMapping("/contact-message-update")
	public String updateContactMessageAC(@RequestParam int idContactMessage, Model model) {
		ContactMessage contactMessage = contactMessageDAO.getContactMessageById(idContactMessage);
		model.addAttribute("contactMessage", contactMessage);
		return "contact-message-add";
	}
	@RequestMapping("/contact-message-delete")
	public String deleteContactMessageAC(@RequestParam int idContactMessage) {
		contactMessageDAO.deleteContactMessage(idContactMessage);
		return "redirect:contact-message-form";
	}
	// ------------------------- Post Form -------------------------
	@RequestMapping("/post-form")
	public String getPostACForm(Model model) {
		List<Post> postList = postDAO.getPostList();
		model.addAttribute("postList", postList);
		return "post-form";
	}
	// ------------------------- Post CRUD -------------------------
	@RequestMapping("/post-add")
	public String addPostAC(Model model) {	
		List<Tag> tagList = tagDAO.getTagList();
		Post post = new Post();
		post.setIsImportant(false);
		post.setIsEnabled(false);
		model.addAttribute("post", post);
		model.addAttribute("tagList", tagList);
		List<User> userList = userDAO.getUserList();
		model.addAttribute("userList", userList);
		List<Category> categoryList = categoryDAO.getCategoryList();
		model.addAttribute("categoryList", categoryList);
		return "post-add";
	}
	@RequestMapping("/post-save")
	public String savePostAC(@ModelAttribute Post post) {
		User user = userDAO.getUserById(post.getUser().getIdUser());
		post.setUser(user);
		Category category = categoryDAO.getCategoryById(post.getCategory().getIdCategory());
		post.setCategory(category);
		Post existingPost = postDAO.getPostById(post.getIdPost());
	    if (existingPost == null) {
	    	post.setCreatedAt(new Timestamp(System.currentTimeMillis()));
	    } else {
	    	post.setCreatedAt(existingPost.getCreatedAt());
	    }
	    post.setUpdatedAt(new Timestamp(System.currentTimeMillis()));
	    List<Tag> tagList = new ArrayList<Tag>();
	    for(Tag t:post.getTagList()) {
	    	Tag unos = tagDAO.getTagById(t.getIdTag());
	    	tagList.add(unos);
	    }
	    post.setTagList(tagList);
		postDAO.addPost(post);	
		return "redirect:post-form";
	}
	@RequestMapping("/post-update")
	public String updatePostAC(@RequestParam int idPost, Model model) {
		Post post = postDAO.getPostById(idPost);
		model.addAttribute("post", post);
		List<User> userList = userDAO.getUserList();
		model.addAttribute("userList", userList);
		List<Category> categoryList = categoryDAO.getCategoryList();
		model.addAttribute("categoryList", categoryList);
		List<Tag> tagList = tagDAO.getTagList();
		model.addAttribute("tagList", tagList);
		return "post-add";
	}
	@RequestMapping("/post-delete")
	public String deletePostAC(@RequestParam int idPost) {
		postDAO.deletePost(idPost);
		return "redirect:post-form";
	}
	// ------------------------- Slider Form -------------------------
	@RequestMapping("/slider-form")
	public String getSliderForm(Model model) {
		List<Slider> sliderList = sliderDAO.getSliderList();
		model.addAttribute("sliderList", sliderList);
		return "slider-form";
	}
	// ------------------------- Slider CRUD -------------------------
	@RequestMapping("/slider-add")
	public String addSliderAC(Model model) {	
		Slider slider = new Slider();
		slider.setIsEnabled(false);
		model.addAttribute("slider", slider);
		return "slider-add";
	}
	@RequestMapping("/slider-save")
	public String saveSliderAC(@ModelAttribute Slider slider) {
		Slider existingSlider = sliderDAO.getSliderById(slider.getIdSlider());
	    if (existingSlider == null) {
	    	slider.setCreatedAt(new Timestamp(System.currentTimeMillis()));
	    } else {
	    	slider.setCreatedAt(existingSlider.getCreatedAt());
	    }
	    slider.setUpdatedAt(new Timestamp(System.currentTimeMillis()));
		sliderDAO.addSlider(slider);	
		return "redirect:slider-form";
	}
	@RequestMapping("/slider-update")
	public String updateSliderAC(@RequestParam int idSlider, Model model) {
		Slider slider = sliderDAO.getSliderById(idSlider);
		model.addAttribute("slider", slider);
		return "slider-add";
	}
	@RequestMapping("/slider-delete")
	public String deleteSliderAC(@RequestParam int idSlider) {
		sliderDAO.deleteSlider(idSlider);
		return "redirect:slider-form";
	}
	// ------------------------- Tag Form -------------------------
	@RequestMapping("/tag-form")
	public String getTagForm(Model model) {
		List<Tag> tagList = tagDAO.getTagList();
		model.addAttribute("tagList", tagList);
		return "tag-form";
	}
	// ------------------------- Tag CRUD -------------------------
	@RequestMapping("/tag-add")
	public String addTagAC(Model model) {	
		model.addAttribute("tag", new Tag());
		return "tag-add";
	}
	@RequestMapping("/tag-save")
	public String saveTagAC(@ModelAttribute Tag tag) {
		Tag existingTag = tagDAO.getTagById(tag.getIdTag());
	    if (existingTag == null) {
	    	tag.setCreatedAt(new Timestamp(System.currentTimeMillis()));
	    } else {
	    	tag.setCreatedAt(existingTag.getCreatedAt());
	    }
	    tag.setUpdatedAt(new Timestamp(System.currentTimeMillis()));
		tagDAO.addTag(tag);	
		return "redirect:tag-form";
	}
	@RequestMapping("/tag-update")
	public String updateTagAC(@RequestParam int idTag, Model model) {
		Tag tag = tagDAO.getTagById(idTag);
		model.addAttribute("tag", tag);
		return "tag-add";
	}
	@RequestMapping("/tag-delete")
	public String deleteTagAC(@RequestParam int idTag) {
		tagDAO.deleteTag(idTag);
		return "redirect:tag-form";
	}
	// ------------------------- User Form -------------------------
	@RequestMapping("/user-form")
	public String getUserForm(Model model) {
		List<User> userList = userDAO.getUserList();
		model.addAttribute("userList", userList);
		return "user-form";
	}
	// ------------------------- User CRUD -------------------------
	@RequestMapping("/user-add")
	public String addUserAC(Model model) {	
		User user = new User();
		user.setIsBanned(false);
		model.addAttribute("user", user);
		return "user-add";
	}
	@RequestMapping("/user-save")
	public String saveUserAC(@ModelAttribute User user) {
		User existingUser = userDAO.getUserById(user.getIdUser());
	    if (existingUser == null) {
	    	user.setCreatedAt(new Timestamp(System.currentTimeMillis()));
	    } else {
	    	user.setCreatedAt(existingUser.getCreatedAt());
	    }
	    user.setUpdatedAt(new Timestamp(System.currentTimeMillis()));
		userDAO.addUser(user);	
		return "redirect:user-form";
	}
	@RequestMapping("/user-update")
	public String updateUserAC(@RequestParam int idUser, Model model) {
		User user = userDAO.getUserById(idUser);
		model.addAttribute("user", user);
		return "user-add";
	}
	@RequestMapping("/user-delete")
	public String deleteUserAC(@RequestParam int idUser) {
		userDAO.deleteUser(idUser);
		return "redirect:user-form";
	}
	// ------------------------- Guest Comment Form -------------------------
	@RequestMapping("/guest-comment-form")
	public String getGuestCommentForm(Model model) {
		List<GuestComment> guestCommentList = guestCommentDAO.getGuestCommentList();
		model.addAttribute("guestCommentList", guestCommentList);
		return "guest-comment-form";
	}
	// ------------------------- Guest Comment CRUD -------------------------
	@RequestMapping("/guest-comment-add")
	public String addGuestCommentAC(Model model) {	
		model.addAttribute("guestComment", new GuestComment());
		List<Post> postList = postDAO.getPostList();
		model.addAttribute("postList", postList);
		return "guest-comment-add";
	}
	@RequestMapping("/guest-comment-save")
	public String saveGuestCommentAC(@ModelAttribute GuestComment guestComment) {
		Post post = postDAO.getPostById(guestComment.getPost().getIdPost());
		guestComment.setPost(post);
		GuestComment existingGuestComment = guestCommentDAO.getGuestCommentById(guestComment.getIdGuestComment());
	    if (existingGuestComment == null) {
	    	guestComment.setCreatedAt(new Timestamp(System.currentTimeMillis()));
	    } else {
	    	guestComment.setCreatedAt(existingGuestComment.getCreatedAt());
	    }
	    guestComment.setUpdatedAt(new Timestamp(System.currentTimeMillis())); 
	    guestCommentDAO.addGuestComment(guestComment);	
		return "redirect:guest-comment-form";
	}
	@RequestMapping("/guest-comment-update")
	public String updateGuestCommentAC(@RequestParam int idGuestComment, Model model) {
		GuestComment guestComment = guestCommentDAO.getGuestCommentById(idGuestComment);
		model.addAttribute("guestComment", guestComment);
		List<Post> postList = postDAO.getPostList();
		model.addAttribute("postList", postList);
		return "guest-comment-add";
	}
	@RequestMapping("/guest-comment-delete")
	public String deleteGuestCommentAC(@RequestParam int idGuestComment) {
		guestCommentDAO.deleteGuestComment(idGuestComment);
		return "redirect:guest-comment-form";
	}
	// ------------------------- Login -------------------------
	@RequestMapping("/login-form")
	public String loginForm(Model model) {
		String username = "";
		model.addAttribute("username", username);
		String password = "";
		model.addAttribute("password", password);
		return "login-form";
	}
	@RequestMapping("/login-check")
	public String loginCheck(@RequestParam("username") String username, @RequestParam("password") String password) {
	    List<Admin> adminList = adminDAO.getAdminList();
	    for(Admin admin:adminList) {
	    	if(admin.getUsername().equals(username) && admin.getPassword().equals(password)) {
	    		return "main-form";
	    	}
	    }
	    return "redirect:login-form";
	}

}
