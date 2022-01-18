<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>


<style>

body{ border:1px solid black;
 background-color:pink;
 
 width: 1490px;
  border: 5px solid black;
  padding: 200px;
  margin: 10px;
 } 
 
 #container {
  width: 840px;
  margin: 25px auto;
  margin-top: 50px;
}

.container1 {
	width: 673px;
	height: 415px;
	background-color: white;
	margin:auto;
	margin-top: 35px;
	border-radius: 20px;
}


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
  left:890px; 
  top:1000px;
}
.open-button1 {
  background-color: #555;
  color:white;
  padding: 16px 20px;
  cursor: pointer; 
  width: 150px; 
  position:absolute; 
  left:480px; 
  top:1000px; 
 
}

/* The popup form - hidden by default */
.form-popup {
  display: none;
  background-colour:white;
   border: 3px solid ;
  width:35%;
  z-index: 6;
   position:absolute; 
  left:900px; 
  top:1098px;
}
/* The popup form - hidden by default */
.form-popup1 {
  display: none;
  background-colour:white;
  width:35%;
  border: 3px solid ;
  z-index: 6;
   position:absolute; 
  left:500px; 
  top:1098px;
}

.button1 {
  background-color: #555;
  border: none;
  color: white;
  padding: 16px 20px;
  text-align: center;
   position:absolute; 
  text-decoration: none;
  display: inline-block;
  width:150px;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  top:1000px;
  left:680px;
}


</style>


<body></head>
<center>
  <form action="EmployeeServlet" method="post">
<u><h1>Bank Registration Form </h1></u>
 <br>
<u> <h2>Debtor Details</h2></u>
 <br>
 <td> DebtorName:&nbsp;</td>
 <td><input type="text" name="DebtorName" placeholder="Enter your name" required></td>
 <br>
  <br>
   <td>DebtorId:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
 <td><input type="text" name="DebtorName" placeholder="ID" required></td>
 <br>
  <br>
<td> AddressLine1:</td>
<td> <input type="text" name="AddressLine1" placeholder="Enter your address" required></td>
 <br>
  <br>
<td> AddressLine2:</td>
 <td><input type="text" name="AddressLine2" placeholder="Enter your address" required> </td>
 <br>
  <br>
  <td> Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
 <td><input type="text" name="Email" placeholder="Enter your Email" required> </td>
 <br>
 <br>
<td> PhoneNumber:</td>
 <td><input type="text" name="PhoneNumber" placeholder="Enter your number"  maxlength="10" required></td>
 <br>
  <br>
 <td> FaxNumber:&nbsp;&nbsp;&nbsp;</td>
<td> <input type="text" name="FaxNumber" placeholder="Enter your number" required  ></td>
 <tr>
  <br>
   <br>

 <u> <h2>Bank Details</h2> </u>
  <td> BankName:&nbsp;&nbsp;</td>
 <td><input type="text" name="BankName" placeholder="Enter name" required></td>
 <br>
  <br>
 <td>BranchName:</td>
 <td><input type="text" name="BranchName" placeholder="Enter name" required></td>
 <br>
  <br>
  <td>SwiftAddress:</td>
<td> <input type="text" name="SwiftAddress" placeholder="Enter  address" required></td>
 <br>
  <br>
 <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
 DebtorAccountName:</td>
 <td><input type="text" name="DebtorAccountName" placeholder="Enter details" required></td>
 <br>
  <br>
 <td>AccountCurrency:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

 <select id="AccountCurrency" name="AccountCurrency" required >
   <option value="INR"> INR </option>
  <option value="USD"> USD</option>
  <option value="PKR"> PKR </option>
  <option value="GBP"> GBP </option>
  <option value="AED"> AED	 </option>
  <option value="AUD">AUD </option>
</select>
 <br>
 <br> <br>
 </table>
 <div class="container">

   

<button class="open-button" onclick="openForm()" >Clear</button><br><br>
</center>
<div class="form-popup" id="myForm">
    <h1>All Data Will be Cleared Please Confirm!!!!</h1>
    <button type="Reset" class="btn" onclick="clearform()">Yes</button>

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
 <button class="button button1" >Submit</button>


<button class="open-button1" onclick="openForm1()">Cancel</button><br><br>
<center>
<div class="form-popup1" id="myForm1">
    <h1>All Data Will be Cancelled Please Confirm!!!!</h1>
    
    <button type="Reset"  class="btn" onclick="clearform()">Yes</button>
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

 </form>
 </div>
 </body>
 </html>


