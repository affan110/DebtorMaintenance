<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "project11";
String userId = "root";
String password ="Thusharaj#3";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>



<head>
<style>
body{
   background-color: pink;
}

#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td,#customers th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align: center;
}

  
#customers tr:nth-child(even){background-color: #f2f2f2;}
    
    #customers tr:nth-child(odd){background-color: #f2f2f2;}
#customers tr:hover {background-color: #ddd;} 


#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  
  background-color:gray;
  
  color: white;
}

/* #customers td {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color:#f2f2f2;
  
  color: black;
} */

</style>
</head>








<h2 align="center"><font><u><strong>Pending Table</strong></u></font></h2>

<table id ="customers"  >



<tr bgcolor="black">
<th>DebtorName</th>
<th>DebtorId</th>
<th>AddressLine1</th>
<th>AddressLine2</th>
<th>Email</th>
<th>PhoneNumber</th>
<th>FaxNumber</th>
<th>BankName</th>
<th>BranchName</th>
<th>SwiftAddress</th>
<th>DebtorAccountName</th>
<th>AccountCurrency</th>
<th>Status</th>
<th>Status</th>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM pending";

rs = statement.executeQuery(sql);
while(rs.next()){
%>


<tr >
<td><%= rs.getString(1) %></td>
<td><%= rs.getString(2) %></td>
<td><%= rs.getString(3) %></td>
<td><%= rs.getString(4) %></td>
<td><%= rs.getString(5) %></td>
<td><%= rs.getString(6) %></td>
<td><%= rs.getString(7) %></td>
<td><%= rs.getString(8) %></td>
<td><%= rs.getString(9) %></td>
<td><%= rs.getString(10) %></td>
<td><%= rs.getString(11) %></td>
<td><%= rs.getString(12) %></td>

<td><button ><a href= "index.jsp">Authorized</a></button></td>
<td><button><a href= "Reject.jsp">Reject</a></button></td>
<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

</table>