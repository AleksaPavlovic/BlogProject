<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!--  <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Form</title>
</head>
<body>
	<div id = "wrapper">
		<h1>List of Users</h1>
	</div>
	<br><br>
	<div id="data_container">
		<table>
			<tr>
				<th>ID</th>
				<th>Username</th>
				<th>Email</th>
				<th>Password</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Phone Number</th>
				<th>Profile Image</th>
				<th>Is Banned</th>
				<th>Category Created At</th>
				<th>Category Updated At</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
			<c:forEach var="user" items="${userList}">
				<tr>
					<th>${user.idUser}</th>
					<th>${user.username}</th>
					<th>${user.email}</th>
					<th>${user.password}</th>
					<th>${user.firstName}</th>
					<th>${user.lastName}</th>
					<th>${user.phoneNumber}</th>
					<th>${user.profileImage}</th>
					<th>${user.isBanned}</th>
					<th>${user.createdAt}</th>
					<th>${user.updatedAt}</th>
					<th><a href="user-update?idUser=${user.idUser}">update</a></th>
					<th><a href="user-delete?idUser=${user.idUser}" onclick="if(!confirm('If you proceed all the posts and comments that this user created will be deleted. Delete this user?')) return false">delete</a></th>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br><br>
	<a href="user-add">Add New User</a>
</body>
</html> -->

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">

  <title>AdminLTE 3 | Starter</title>

  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/dist/css/adminlte.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">

  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/jquery-ui/jquery-ui.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/admin/plugins/jquery-ui/jquery-ui.theme.min.css">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    </ul>

    
    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Messages Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-user"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media align-items-center">
              <img src="${pageContext.request.contextPath}/admin/dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Brad Diesel
                </h3>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-user"></i> Your Profile
          </a>
          <div class="dropdown-divider"></div>
          <a href="login.html" class="dropdown-item">
              <i class="fas fa-sign-out-alt"></i> Log Out
          </a>
        </div>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="${pageContext.request.contextPath}/admin/dist/img/AdminLTELogo.png" alt="Cubes School Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Cubes School</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-plus-square"></i>
              <p>
                Users
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="user-form" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Users list</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="user-add" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add User</p>
                </a>
              </li>
            </ul>
          </li>
          
           <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon far fa-plus-square"></i>
              <p>
                Post Categories
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="category-form" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Post Categories list</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="category-add" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Add Post Category</p>
                </a>
              </li>
            </ul>
          </li>
          
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Users</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Users</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">All Users</h3>
                <div class="card-tools">
                  <a href="user-add" class="btn btn-success">
                    <i class="fas fa-plus-square"></i>
                    Add new User
                  </a>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <table class="table table-bordered">
                  <thead>                  
                    <tr>
                      <th style="width: 6%">ID</th>
                      <th style="width: 8%;">Username</th>
                      <th style="width: 8%;">Email</th>
                      <th style="width: 8%;">Password</th>
                      <th style="width: 8%;">First Name</th>
                      <th style="width: 8%;">Last Name</th>
                      <th style="width: 8%;">Phone Number</th>
                      <th style="width: 8%;">Profile Image</th>
                      <th style="width: 6%;">Is Banned</th>
                      <th class="text-center">Created At</th>
                      <th class="text-center">Last Change</th>
                      <th class="text-center">Actions</th>
                    </tr>
                  </thead>
                  <tbody id="sort-list">
	                 <c:forEach var="user" items="${userList}">  
	                    <tr>
	                      <td>
	                        <span class="btn btn-outline-secondary">
	                          <i class="fas fa-sort"></i>
	                        </span>
	                        ${user.idUser}.
	                      </td>
	                      <td>
	                        <strong>${user.username}</strong>
	                      </td>
	                      <td>
	                        ${user.email}
	                      </td>
	                      <td>
	                        ${user.password}
	                      </td>
	                      <td>
	                        ${user.firstName}
	                      </td>
	                      <td>
	                        ${user.lastName}
	                      </td>
	                      <td>
	                        ${user.phoneNumber}
	                      </td>
	                      <td>
	                        ${user.profileImage}
	                      </td>
	                      <td>
	                        ${user.isBanned}
	                      </td>
	                      <td class="text-center">${user.createdAt}</td>
	                      <td class="text-center">${user.updatedAt}</td>
	                      <td class="text-center">
	                        <div class="btn-group">
	                          <a href="user-update?idUser=${user.idUser}" class="btn btn-info">
	                            <i class="fas fa-edit"></i>
	                          </a>
	                          <a href="user-delete?idUser=${user.idUser}" onclick="if(!confirm('If you proceed all the posts and comments that this user created will be deleted. Delete this user?')) return false" class="btn btn-info">
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
              <div class="card-footer clearfix">
                
              </div>
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->

    <div class="modal fade" id="delete-modal">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Delete Category</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <p>Are you sure you want to delete category?</p>
            <strong></strong>
          </div>
          <div class="modal-footer justify-content-between">
            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
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

  

  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="float-right d-none d-sm-inline">
      PHP Laravel
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2019 <a href="https://cubes.edu.rs">Cubes School</a>.</strong> All rights reserved.
  </footer>
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
