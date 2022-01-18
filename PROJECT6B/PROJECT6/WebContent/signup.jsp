<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
    <u><h1 class='title'>User Login</h1></u>
    <div class='container2'>
    <div class='signup'>
    <form action="signupAction.jsp" method="post">
    <input type="text" name="name" placeholder="Enter Name" required>
    <input type="email" name="email" placeholder="Enter Email" required>
    <input type="number" name="mobileNumber" placeholder="Enter mobile Number" required>
    <input type="password" name="password" placeholder="Enter password" required>
    <input type="submit" value="signup">
    

    </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
  <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
  %>

<h4>Successfully Registered !</h4>
  <%} %>
  <%
  if("invalid".equals(msg))
  {
  %>

<h4>Some thing Went Wrong! Try Again !</h4>
<%} %>

  </div>
</div>

</body>
</html>