package com.pack.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class AdminConnection {
	public static Connection getCon()
	{
		try
		{
		   Class.forName("com.mysql.cj.jdbc.Driver");
		   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project11","root","Thusharaj#3");
		   return con;
		}
		catch(Exception e)
		{
			System.out.print(e);
			return null;
		}
	}

}
