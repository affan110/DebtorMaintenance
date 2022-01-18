

package com.pack.dao;

import java.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.pack.dao.MySql;
import com.pack.model.Employee;

public class EmployeeDao {

	public static int save(Employee u){
		int status=0;
		try{
			Connection con=MySql.getCon();
			
			PreparedStatement ps=con.prepareStatement("insert into employee(DebtorName,AddressLine1,AddressLine2,Email,PhoneNumber,FaxNumber,BankName,BranchName,SwiftAddress,DebtorAccountName,AccountCurrency)  values(?,?,?,?,?,?,?,?,?,?,?)");
			System.out.println(u.getDebtorName());
		  
		  
			ps.setString(1,u.getDebtorName());
		 	
			ps.setString(2,u.getAddressLine1());
			ps.setString(3,u.getAddressLine2());
			ps.setString(4,u.getEmail());
			ps.setString(5,u.getPhoneNumber());
			ps.setString(6,u.getFaxNumber());
			ps.setString(7,u.getBankName());
			ps.setString(8,u.getBranchName());
			ps.setString(9,u.getSwiftAddress());
			ps.setString(10,u.getDebtorAccountName());
			ps.setString(11,u.getAccountCurrency());


			status=ps.executeUpdate();
		}catch(Exception e){System.out.println(e);}
		return status;
	
	}
}
       
	           		  
    		  
    		  
    		  
    		  
    		  
    		  

         


