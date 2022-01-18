<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>
   <% Random rand=new Random();
    int n=rand.nextInt(90000)+10000;
    System.out.println(n);
    %>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Button used to open the contact form - fixed at the bottom of the page */
.open-button {
  background-color: #555;
  color:white;
  padding: 16px 20px;
  cursor: pointer; 
  width: 150px; 
  position:absolute; 
  left:400px; 
  top:550px;
}
.open-button1 {
  background-color: #555;
  color:white;
  padding: 16px 20px;
  cursor: pointer; 
  width: 150px; 
  position:absolute; 
  left:680px; 
  top:550px;
}
/* The popup form - hidden by default */
.form-popup {
  display: none;
  background-colour:pink;
  width:45%;
  border: 3px solid ;
  z-index: 9;
   position:absolute; 
  left:180px; 
  top:650px;
}
/* The popup form - hidden by default */
.form-popup1 {
  display: none;
  background-colour:pink;
  width:45%;
  border: 3px solid ;
  z-index: 9;
   position:absolute; 
  left:180px; 
  top:650px;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}
.container {
  border-radius: 10px;
  background-color: pink;
  padding: 20px;
}
.col-25 {
  float: left;
  width: 25%;
  margin-top: 36px;
}
.col-75 {
  float: left;
  width: 75%;
  margin-top: 36px;
}
.col-35 {
  float: left;
  width: 75%;
  text-align:center;
  padding-bottom:5px;
}
/* Clear floats after the columns */
.row:after{
  content: "";
  display: table;
 clear:both;
}
</style>
</head>
<body>
<center>
<h1><u>Confirm And Review Screen</u></h1></center><br><br>
<div class="container">
    <div class="row">
    <div class="col-25">
<b>Transaction Reference No:</b><br>
</div>
<div class="col-75">
        <input type="text" name="ORDER"  value="<%=n%>"/>
      </div>
<div class="row">
      <div class="col-25">
<b>Date And Time:</b>
</div>
<div class="col-75">
<input type="text" name="order" value="<%= (new java.util.Date()).toLocaleString()%>">
</div><br>
<div class="row">
      <div class="col-25">
<b>Status:</b>
</div>
<div class="col-75">
<input type="text" name="fname" value="PENDING"></b><br><br>
<div class="row">
     <br><br> <div class="col-35">
<b><h2><a href="View1.jsp">View Transaction Details</a></h2>
</div>
      
<button class="open-button" onclick="openForm()">Clear</button><br><br>
<center>
<div class="form-popup" id="myForm">
    <h1>All Data Will be Cleared Please Confirm!!!!</h1>
    <button type="submit" class="btn" onclick="clearform()">Yes</button>

    <button type="button" class="btn cancel" onclick="closeForm1()">No</button></center>
</div>
<script>
function openForm() {
  document.getElementById("myForm").style.display = "block";
}
function closeForm1() {
  document.getElementById("myForm").style.display = "none";
}
</script>
<button class="open-button1" onclick="openForm1()">Cancel</button><br><br>
<center>
<div class="form-popup1" id="myForm1">
    <h1>All Data Will be Cancelled Please Confirm!!!!</h1>
    
    <button type="submit" class="btn" onclick="clearform()">Yes</button>
    <button type="button" class="btn cancel" onclick="closeForm()">No</button></center>
</div>

<script>

function openForm1() {
  document.getElementById("myForm1").style.display = "block";
}
function closeForm() {
  document.getElementById("myForm1").style.display = "none";
}
</script>

</body>
</html>