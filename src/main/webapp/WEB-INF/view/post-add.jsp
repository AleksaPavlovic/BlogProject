<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Add</title>
</head>
<body>
	<form:form action="post-save" modelAttribute="post">
		<form:hidden path="idPost"/>
		User: <form:select path="user.idUser" itemLabel="username" 
								itemValue="idUser" items="${userList}"/>
		<br><br>
		Category: <form:select path="category.idCategory" itemLabel="name" 
								itemValue="idCategory" items="${categoryList}"/>
		<br><br>
		Title: <form:input path="title"/>
		<br><br>
		Short Description: <form:input path="shortDescription"/>
		<br><br>
		Content: <form:input path="content"/>
		<br><br>
		Image: <form:input path="image"/>
		<br><br>
		Is Important: <form:checkbox path="isImportant"/>
		<br><br>
		Views: <form:input path="views"/>
		<br><br>
		Is Enabled: <form:checkbox path="isEnabled"/>
		<br><br>
		Tags: <form:select path="tagList">
		    <form:options items="${tagList}" itemLabel="name" itemValue="idTag"/>
		</form:select>
		<br><br>
		<input type="submit" value="save post">
	</form:form>
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
            <h1>Post Form</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item"><a href="#">Post</a></li>
              <li class="breadcrumb-item active">Post Form</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-6">
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Post Form</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form:form action="post-save" modelAttribute="post" role="form">
              	<form:hidden path="idPost"/>
                <div class="card-body">
                  <div class="form-group">
                    <label>User</label>
                    <form:select path="user.idUser" itemLabel="username" itemValue="idUser" items="${userList}" required="true" />
                  </div>
                  <div class="form-group">
                    <label>Category</label>
                    <form:select path="category.idCategory" itemLabel="name" itemValue="idCategory" items="${categoryList}" required="true" />
                  </div>
                  <div class="form-group">
                    <label>Title</label>
                    <form:input path="title" type="text" class="form-control" placeholder="Enter title" required="true"/>
                  </div>
									<div class="form-group">
                    <label>Short description</label>
                    <form:input path="shortDescription" type="text" class="form-control" placeholder="Enter short description"/>
                  </div>
									<div class="form-group">
                    <label>Content</label>
                    <form:input path="content" type="text" class="form-control" placeholder="Enter content"/>
                  </div>
									<div class="form-group">
                    <label>Image</label>
                    <form:input path="image" type="file" class="form-control" placeholder="Enter image"/>
                  </div>
									<div class="form-group">
                    <label>Is important:</label>
                    <form:checkbox path="isImportant"/>
                  </div>
									<div class="form-group">
                    <label>Views</label>
                    <form:input path="views" type="number" class="form-control" placeholder="Enter views"/>
                  </div>
									<div class="form-group">
                    <label>Is enabled:</label>
                    <form:checkbox path="isEnabled"/>
                  </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <input type="submit" value="Save" class="btn btn-primary">
                </div>
              </form:form>
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
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
</body>
</html>
