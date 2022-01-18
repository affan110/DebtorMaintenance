<%@page import="com.pack.dao.MySqlConn"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>



<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>




<head>
<style>
 function reject()
   {
	    var a = prompt("Enter Reject Reason");
	    if(a=="")
	    	{
	    	alert("Please Enter a Valid Reject Reason");
	    	}
	    else
	    	{
	    	document.getElementById("rjreason").value = a;
		    alert("Debtor Rejected!");
	    	}
	    
   } 
body {
	background-color: pink;
}

#customers {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: center;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:nth-child(odd) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	background-color: gray;
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




<%
	int id = Integer.parseInt(request.getParameter("id"));
	System.out.println(id);
	String driverName = "com.mysql.cj.jdbc.Driver";
	String connectionUrl = "jdbc:mysql://localhost:3306/";
	String dbName = "project11";
	String userId = "root";
	String password = "Thusharaj#3";

	try {
		Class.forName(driverName);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}

	Connection connection = null;
	PreparedStatement statement = null;
	ResultSet rs = null;

	connection = MySqlConn.getCon();
	statement = connection.prepareStatement("select * from pending where DebtorId=" + id);
	rs = statement.executeQuery();
	while (rs.next()) {
		statement = connection.prepareStatement("insert into reject values(?,?,?,?,?)");
		statement.setString(1, rs.getString(1));
		statement.setString(2, rs.getString(2));
		statement.setString(3, rs.getString(3));
		statement.setString(4, rs.getString(4));
		statement.setInt(5, rs.getInt(5));
		statement.executeUpdate();
	}
	statement = connection.prepareStatement("delete from pending where DebtorId=" + id);
	statement.executeUpdate();
%>




<h2 align="center">
	<font><u><strong>Debtor Rejection</strong></u></font>
</h2>

<table id="customers">



	<tr bgcolor="black">
		<th>DebtorName</th>
		<th>Email</th>
		<th>PhoneNumber</th>
		<th>BankName</th>
		<th>DebtorId</th>
	</tr>
	<%
		try {
			String sql = "SELECT * FROM reject";
			statement = connection.prepareStatement(sql);

			rs = statement.executeQuery();
			while (rs.next()) {
	%>


	<tr>
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getString(4)%></td>
		<td><%=rs.getString(5)%></td>

	</tr>
	<%
		}

		} catch (Exception e) {
			e.printStackTrace();
		}
	%>

</table>