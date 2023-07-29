<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://www.springframework.org/tags/form"
prefix="form"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Login Page</title>
  </head>
  <body>
    <form action="login-check" method="post">
      username: <input type="text" name="username" value="${username}" />
      <br /><br />
      password: <input type="password" name="password" value="${password}" />
      <br /><br />
      <input type="submit" value="login" />
    </form>
  </body>
</html>
