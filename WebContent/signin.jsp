<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/signin.css">
<script src="js/signin.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SIGN IN PAGE</title>
</head>
<body>
<div class="login-page">
  <div class="form">
    <form class="login-form"  action="LOGINservlet" method="post">
      <input type="text" name="Username" placeholder="username"/>
      <input type="password" name="Password" placeholder="password"/>
      <button>login</button>
      <p class="message">Not registered? <a href="signup.jsp">Create an account</a></p>
    </form>
  </div>
</div>
</body> 
</html>