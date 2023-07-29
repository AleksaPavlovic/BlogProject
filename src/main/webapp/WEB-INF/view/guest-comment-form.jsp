<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>
<!--
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Guest Comment Form</title>
</head>
<body>
	<div id = "wrapper">
		<h1>List of Guest Comments</h1>
	</div>
	<br><br>
	<div id="data_container">
		<table>
			<tr>
				<th>ID</th>
				<th>Post</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Comment Content</th>
				<th>Created At</th>
				<th>Updated At</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="guestComment" items="${guestCommentList}">
				<tr>
					<th>${guestComment.idGuestComment}</th>
					<th>${guestComment.post.title}</th>
					<th>${guestComment.firstName}</th>
					<th>${guestComment.lastName}</th>
					<th>${guestComment.email}</th>
					<th>${guestComment.content}</th>
					<th>${guestComment.createdAt}</th>
					<th>${guestComment.updatedAt}</th>
					<th><a href="guest-comment-update?idGuestComment=${guestComment.idGuestComment}">update</a></th>
					<th><a href="guest-comment-delete?idGuestComment=${guestComment.idGuestComment}" onclick="if(!confirm('Delete this comment?')) return false">delete</a></th>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br><br>
	<a href="guest-comment-add">Add New Comment</a>
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
                <h1>Guest Comments</h1>
              </div>
              <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li class="breadcrumb-item active">Guest Comments</li>
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
                    <h3 class="card-title">All Guest Comments</h3>
                    <div class="card-tools">
                      <a href="guest-add" class="btn btn-success">
                        <i class="fas fa-plus-square"></i>
                        Add new Guest Comment
                      </a>
                    </div>
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body">
                    <table class="table table-bordered">
                      <thead>
                        <tr>
                          <th style="width: 10%">ID</th>
                          <th style="width: 12%">Post</th>
                          <th style="width: 12%">First Name</th>
                          <th style="width: 12%">Last Name</th>
                          <th style="width: 12%">Email</th>
                          <th style="width: 12%">Content</th>
                          <th style="width: 12%">Created At</th>
                          <th style="width: 12%">Updated At</th>
                          <th style="width: 12%">Actions</th>
                        </tr>
                      </thead>
                      <tbody id="sort-list">
                        <c:forEach
                          var="guestComment"
                          items="${guestCommentList}"
                        >
                          <tr>
                            <td>${guestComment.idGuestComment}.</td>
                            <td>${guestComment.post.title}</td>
                            <td>${guestComment.firstName}</td>
                            <td>${guestComment.lastName}</td>
                            <td>${guestComment.email}</td>
                            <td>${guestComment.content}</td>
                            <td class="text-center">
                              ${guestComment.createdAt}
                            </td>
                            <td class="text-center">
                              ${guestComment.updatedAt}
                            </td>
                            <td class="text-center">
                              <div class="btn-group">
                                <a
                                  href="guest-comment-update?idGuestComment=${guestComment.idGuestComment}"
                                  class="btn btn-info"
                                >
                                  <i class="fas fa-edit"></i>
                                </a>
                                <a
                                  href="guest-comment-delete?idGuestComment=${guestComment.idGuestComment}"
                                  onclick="if(!confirm('Delete this comment?')) return false"
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
                <h4 class="modal-title">Delete Comment</h4>
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
                <p>Are you sure you want to delete comment?</p>
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
