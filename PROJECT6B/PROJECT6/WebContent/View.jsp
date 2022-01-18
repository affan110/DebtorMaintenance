
<%@page import ="java.sql.*"%>
<%

String DebtorId=request.getParameter("DebtorId");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection cn =DriverManager.getConnection("jdbc:mysql://localhost:3306/project11","root","Thusharaj#3");
if(!cn.isClosed())
{
PreparedStatement ps =cn.prepareStatement("select * from employee where DebtorId='"+DebtorId+"'");
ResultSet rs= ps.executeQuery();
if(rs.next())
{
out.println(rs.getString("DebtorId")+"<br> "+rs.getString("DebtorName")+"<br> "+rs.getString("Email")+"<br>"+rs.getString("Phonenumber")+"<br>"+rs.getString("BankName")+"<br> "+rs.getString("AddressLine1")+"<br> "+rs.getString("AddressLine2")+"<br> "+rs.getString("FaxNumber")+"<br> "+rs.getString("BranchName")+"<br> "+rs.getString("SwiftAddress")+"<br> "+rs.getString("DebtorAccountName")+"<br> "+rs.getString("AccountCurrency"));
}
else
{
out.println("RECORD NOT EXIST");
}
}
}
catch(Exception e)
{
out.println("The error is ::"+e.getMessage());

}%>
