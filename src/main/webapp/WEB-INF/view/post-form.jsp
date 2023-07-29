<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<!--
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Form</title>
</head>
<body>
	<div id = "wrapper">
		<h1>List of Posts</h1>
	</div>
	<br><br>
	<div id="data_container">
		<table>
			<tr>
				<th>ID</th>
				<th>User</th>
				<th>Category</th>
				<th>Title</th>
				<th>Short Description</th>
				<th>Content</th>
				<th>Image</th>
				<th>Is Important</th>
				<th>Views</th>
				<th>Is Enabled</th>
				<th>Created At</th>
				<th>Updated At</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="post" items="${postList}">
				<tr>
					<th>${post.idPost}</th>
					<th>${post.user.username}</th>
					<th>${post.category.name}</th>
					<th>${post.title}</th>
					<th>${post.shortDescription}</th>
					<th>${post.content}</th>
					<th>${post.image}</th>
					<th>${post.isImportant}</th>
					<th>${post.views}</th>
					<th>${post.isEnabled}</th>
					<th>${post.createdAt}</th>
					<th>${post.updatedAt}</th>
					<th><a href="post-update?idPost=${post.idPost}">update</a></th>
					<th><a href="post-delete?idPost=${post.idPost}" onclick="if(!confirm('Delete this post?')) return false">delete</a></th>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br><br>
	<a href="post-add">Add New Post</a>
</body>
</html>
-->

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />

    <title>AdminLTE 3 | Starter</title>

    <!-- Font Awesome Icons -->
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/admin/plugins/fontawesome-free/css/all.min.css"
    />
    <!-- Theme style -->
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/admin/dist/css/adminlte.min.css"
    />
    <!-- Google Font: Source Sans Pro -->
    <link
      href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700"
      rel="stylesheet"
    />

    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/admin/plugins/jquery-ui/jquery-ui.min.css"
    />
    <link
      rel="stylesheet"
      href="${pageContext.request.contextPath}/admin/plugins/jquery-ui/jquery-ui.theme.min.css"
    />
  </head>
  <body class="hold-transition sidebar-mini">
    <div class="wrapper">
      <jsp:include page="./components/navigation.jsp" />

      <jsp:include page="./components/sidebar.jsp" />

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <div class="container-fluid">
            <div class="row mb-2">
              <div class="col-sm-6">
                <h1>Posts</h1>
              </div>
              <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li class="breadcrumb-item active">Posts</li>
                </ol>
              </div>
            </div>
          </div>
          <!-- /.container-fluid -->
        </section>

        <!-- Main content -->
        <section class="content">
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-12">
                <div class="card">
                  <div class="card-header">
                    <h3 class="card-title">All Posts</h3>
                    <div class="card-tools">
                      <a href="post-add" class="btn btn-success">
                        <i class="fas fa-plus-square"></i>
                        Add new Post
                      </a>
                    </div>
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body">
                    <table class="table table-bordered">
                      <thead>
                        <tr>
                          <th style="width: 10%">ID</th>
                          <th style="width: 12%">User</th>
                          <th style="width: 12%">Category</th>
                          <th style="width: 12%">Title</th>
                          <th style="width: 12%">Short Description</th>
                          <th style="width: 12%">Content</th>
                          <th style="width: 12%">Image</th>
                          <th style="width: 12%">Is Important</th>
                          <th style="width: 12%">Views</th>
                          <th style="width: 12%">Is Enabled</th>
                          <th style="width: 12%">Created At</th>
                          <th style="width: 12%">Updated At</th>
                          <th style="width: 12%">Actions</th>
                        </tr>
                      </thead>
                      <tbody id="sort-list">
                        <c:forEach var="post" items="${postList}">
                          <tr>
                            <td>${post.idPost}.</td>
                            <td>${post.user.username}</td>
                            <td>${post.category.name}</td>
                            <td>${post.title}</td>
                            <td>${post.shortDescription}</td>
                            <td>${post.content}</td>
                            <td>${post.image}</td>
                            <td>${post.isImportant}</td>
                            <td>${post.views}</td>
                            <td>${post.isEnabled}</td>
                            <td class="text-center">${post.createdAt}</td>
                            <td class="text-center">${post.updatedAt}</td>
                            <td class="text-center">
                              <div class="btn-group">
                                <a
                                  href="post-update?idPost=${post.idPost}"
                                  class="btn btn-info"
                                >
                                  <i class="fas fa-edit"></i>
                                </a>
                                <a
                                  href="post-delete?idPost=${post.idPost}"
                                  onclick="if(!confirm('Delete this post?')) return false"
                                  class="btn btn-info"
                                >
                                  <i class="fas fa-trash"></i>
                                </a>
                              </div>
                            </td>
                          </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                  <!-- /.card-body -->
                  <div class="card-footer clearfix"></div>
                </div>
                <!-- /.card -->
              </div>
              <!-- /.col -->
            </div>
            <!-- /.row -->
          </div>
          <!-- /.container-fluid -->
        </section>
        <!-- /.content -->

        <div class="modal fade" id="delete-modal">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title">Delete Post</h4>
                <button
                  type="button"
                  class="close"
                  data-dismiss="modal"
                  aria-label="Close"
                >
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <p>Are you sure you want to delete post?</p>
                <strong></strong>
              </div>
              <div class="modal-footer justify-content-between">
                <button
                  type="button"
                  class="btn btn-default"
                  data-dismiss="modal"
                >
                  Cancel
                </button>
                <button type="button" class="btn btn-danger">Delete</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
      </div>
      <!-- /.content-wrapper -->

      <jsp:include page="./components/footer.jsp" />
    </div>
    <!-- ./wrapper -->

    <!-- REQUIRED SCRIPTS -->

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/admin/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="${pageContext.request.contextPath}/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="${pageContext.request.contextPath}/admin/dist/js/adminlte.min.js"></script>
    <script src="${pageContext.request.contextPath}/admin/plugins/jquery-ui/jquery-ui.min.js"></script>
  </body>
</html>
