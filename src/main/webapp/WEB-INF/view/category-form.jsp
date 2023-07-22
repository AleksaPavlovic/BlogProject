<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>

<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Category Form</title>
</head>
<body>
	<div id = "wrapper">
		<h1>List of Categories</h1>
	</div>
	<br><br>
	<div id="data_container">
		<table>
			<tr>
				<th>ID</th>
				<th>Category Name</th>
				<th>Category Description</th>
				<th>Category Display Order</th>
				<th>Category Created At</th>
				<th>Category Updated At</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="category" items="${categoryList}">
				<tr>
					<th>${category.idCategory}</th>
					<th>${category.name}</th>
					<th>${category.description}</th>
					<th>${category.displayOrder}</th>
					<th>${category.createdAt}</th>
					<th>${category.updatedAt}</th>
					<th><a href="category-update?idCategory=${category.idCategory}">update</a></th>
					<th><a href="category-delete?idCategory=${category.idCategory}" onclick="if(!confirm('If you proceed all posts in this category will be deleted. Delete this category?')) return false">delete</a></th>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br><br>
	<a href="category-add">Add New Category</a>
</body>
</html>  -->

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
                <h1>Post Categories</h1>
              </div>
              <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                  <li class="breadcrumb-item"><a href="#">Home</a></li>
                  <li class="breadcrumb-item active">Post Categories</li>
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
                    <h3 class="card-title">All Post Categories</h3>
                    <div class="card-tools">
                      <form class="btn-group">
                        <button class="btn btn-outline-success">
                          <i class="fas fa-check"></i>
                          Save Order
                        </button>
                        <button class="btn btn-outline-danger">
                          <i class="fas fa-remove"></i>
                          Cancel
                        </button>
                      </form>
                      <button class="btn btn-outline-secondary">
                        <i class="fas fa-sort"></i>
                        Change Order
                      </button>
                      <a href="category-add" class="btn btn-success">
                        <i class="fas fa-plus-square"></i>
                        Add new Category
                      </a>
                    </div>
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body">
                    <table class="table table-bordered">
                      <thead>
                        <tr>
                          <th style="width: 6%">ID</th>
                          <th style="width: 15%">Name</th>
                          <th style="width: 40%">Description</th>
                          <th style="width: 6%">Display Order</th>
                          <th class="text-center">Created At</th>
                          <th class="text-center">Last Change</th>
                          <th class="text-center">Actions</th>
                        </tr>
                      </thead>
                      <tbody id="sort-list">
                        <c:forEach var="category" items="${categoryList}">
                          <tr>
                            <td>
                              <span class="btn btn-outline-secondary">
                                <i class="fas fa-sort"></i>
                              </span>
                              ${category.idCategory}.
                            </td>
                            <td>
                              <strong>${category.name}</strong>
                            </td>
                            <td>${category.description}</td>
                            <td>${category.displayOrder}</td>
                            <td class="text-center">${category.createdAt}</td>
                            <td class="text-center">${category.updatedAt}</td>
                            <td class="text-center">
                              <div class="btn-group">
                                <a
                                  href="category-update?idCategory=${category.idCategory}"
                                  class="btn btn-info"
                                >
                                  <i class="fas fa-edit"></i>
                                </a>
                                <a
                                  href="category-delete?idCategory=${category.idCategory}"
                                  onclick="if(!confirm('If you proceed all posts in this category will be deleted. Delete this category?')) return false"
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
                <h4 class="modal-title">Delete Category</h4>
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
                <p>Are you sure you want to delete category?</p>
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
