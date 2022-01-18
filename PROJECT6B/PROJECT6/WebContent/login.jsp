
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
<u><h1 class='title'>User Login</h1></u>
<div class='container1'>
  <div class='signup'>
  <form action="loginAction.jsp" method="post">
  <input type="email" name="email" placeholder="Enter Email" required>
  <input type="password" name="password" placeholder="Enter password" required>
  <input type="submit" value="Login">
  </form>
     
      <h2><a href="signup.jsp">SignUp</a></h2>
  </div>
  <div class='whysignLogin'>
  <%
  String msg=request.getParameter("msg");
  if("notexist".equals(msg))
  {
  %>
  <h4>Incorrect UserName or Password</h4>
<%} %>
<%if("invalid".equals(msg))
	{%>
<h4>Some thing Went Wrong! Try Again !</h4>
<%} %>

  </div>
</div>

</body>
</html>