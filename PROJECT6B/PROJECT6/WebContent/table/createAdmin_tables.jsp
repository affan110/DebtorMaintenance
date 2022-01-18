<%@page import="com.pack.dao.AdminConnection"%>
<%@page import="java.sql.*"%>
<%
try
{
     Connection con=AdminConnection.getCon();
     Statement st=con.createStatement();
     String q1="create table admin(name varchar(100),email varchar(100)primary key,password varchar(100))";
     System.out.print(q1);
     st.execute(q1);
     System.out.print("Table created");
     con.close();
     }
     catch(Exception e)
     {
         System.out.print(e);

     }
     %>