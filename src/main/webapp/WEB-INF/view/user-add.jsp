<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Add</title>
</head>
<body>
	<form:form action="user-save" modelAttribute="user">
		<form:hidden path="idUser"/>
		Username: <form:input path="username"/>
		<br><br>
		Email: <form:input path="email"/>
		<br><br>
		Password: <form:input path="password"/>
		<br><br>
		First Name: <form:input path="firstName"/>
		<br><br>
		Last Name: <form:input path="lastName"/>
		<br><br>
		Phone Number: <form:input path="phoneNumber"/>
		<br><br>
		Profile Image: <form:input path="profileImage"/>
		<br><br>
		Is Banned: <form:checkbox path="isBanned"/>
		<br><br>
		<input type="submit" value="save user">
	</form:form>
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
            <h1>User Form</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item"><a href="#">User</a></li>
              <li class="breadcrumb-item active">User Form</li>
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
                <h3 class="card-title">User Form</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form:form action="user-save" modelAttribute="user" role="form">
              	<form:hidden path="idUser"/>
                <div class="card-body">
                  <div class="form-group">
                    <label>Username</label>
                    <form:input path="username" type="text" class="form-control" placeholder="Enter username"/>
                  </div>
                  <div class="form-group">
                    <label>Email</label>
                    <form:input path="email" type="email" class="form-control" placeholder="Enter email"/>
                  </div>
                  <div class="form-group">
                    <label>Password</label>
                    <form:input path="password" type="password" class="form-control" placeholder="Enter password"/>
                  </div>
									<div class="form-group">
                    <label>First name</label>
                    <form:input path="firstName" type="text" class="form-control" placeholder="Enter first name"/>
                  </div>
									<div class="form-group">
                    <label>Last name</label>
                    <form:input path="lastName" type="text" class="form-control" placeholder="Enter last name"/>
                  </div>
									<div class="form-group">
                    <label>Phone number</label>
                    <form:input path="phoneNumber" type="number" class="form-control" placeholder="Enter phone number"/>
                  </div>
									<div class="form-group">
                    <label>Profile image</label>
                    <form:input path="profileImage" type="file" class="form-control" placeholder="Enter profile image"/>
                  </div>
									<div class="form-group">
                    <label>Is banned:</label>
                    <form:checkbox path="isBanned" class="form-control"/>
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
