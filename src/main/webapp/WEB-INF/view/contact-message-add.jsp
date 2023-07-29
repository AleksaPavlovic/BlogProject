<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Message Add</title>
</head>
<body>
	<form:form action="contact-message-save" modelAttribute="contactMessage">
		<form:hidden path="idContactMessage"/>
		Name: <form:input path="name"/>
		<br><br>
		Email: <form:input path="email"/>
		<br><br>
		Message: <form:input path="message"/>
		<br><br>
		Is Read: <form:checkbox path="isRead"/>
		<br><br>
		<input type="submit" value="save contactMessage">
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
            <h1>Contact Message Form</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item"><a href="#">Contact Message</a></li>
              <li class="breadcrumb-item active">Contact Message Form</li>
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
                <h3 class="card-title">Contact Message Form</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form:form action="contact-message-save" modelAttribute="contactMessage" role="form">
              	<form:hidden path="idContactMessage"/>
                <div class="card-body">
									<div class="form-group">
                    <label>Name</label>
                    <form:input path="name" type="text" class="form-control" placeholder="Enter name" required="true" />
                  </div>
									<div class="form-group">
                    <label>Email</label>
                    <form:input path="email" type="email" class="form-control" placeholder="Enter email" required="true" />
                  </div>
									<div class="form-group">
                    <label>Message</label>
                    <form:input path="message" type="text" class="form-control" placeholder="Enter message" required="true" />
                  </div>
									<div class="form-group">
                    <label>Is read:</label>
                    <form:checkbox path="isRead"/>
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