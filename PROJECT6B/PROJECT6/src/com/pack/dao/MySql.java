package com.pack.dao;

import java.sql.Connection;
import java.sql.DriverManager;
public class MySql {
	static Connection c;

	public static Connection getCon()
{ 
	 

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	if (c==null)
	{
 c=DriverManager.getConnection("jdbc:mysql://localhost:3306/project11","root",
		 "Thusharaj#3");
 System.out.println("connected "+c);
	}
	 
 
}

catch(Exception e)
{
	System.out.println(e);
}
return c;
}
}