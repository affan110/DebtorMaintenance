package com.pack.servlet;

	import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
	/**
	 * Servlet implementation class InsertData
	 */
	@WebServlet("/EmployeeServlet")
	public class EmployeeServlet extends HttpServlet {
	  private static final long serialVersionUID = 1L;
	       
	  ServletContext ctx;
	  RequestDispatcher rd;
	    /**
	     * @see HttpServlet#HttpServlet()
	     */
	    public EmployeeServlet() {
	        super();
	        // TODO Auto-generated constructor stub
	    }
	  /**
	   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	   */
	  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // TODO Auto-generated method stub
	    response.getWriter().append("Served at: ").append(request.getContextPath());
	  }
	  /**
	   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	   */
	  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    // TODO Auto-generated method stub
	  //  doGet(request, response);
	    PrintWriter out = response.getWriter();
	    String DebtorName= request.getParameter("DebtorName") ;
    	String AddressLine1= request.getParameter("AddressLine1") ;
		String AddressLine2= request.getParameter("AddressLine2") ;
		String Email= request.getParameter("Email") ;
		String PhoneNumber=request.getParameter("PhoneNumber") ;
		String FaxNumber= request.getParameter("FaxNumber");
		
		String BankName= request.getParameter("BankName") ;
		String BranchName= request.getParameter("BranchName") ;
		String SwiftAddress= request.getParameter("SwiftAddress") ;
		String DebtorAccountName= request.getParameter("DebtorAccountName") ;
		String AccountCurrency= request.getParameter("AccountCurrency") ;
		String DebtorId= request.getParameter("DebtorId") ;

        
		
	    //database Connectivity code.........
	    try {
	      Class.forName("com.mysql.jdbc.Driver");
	      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project11","root","Thusharaj#3");
	          Statement stmt = con.createStatement();
	          stmt.executeUpdate("insert into employee (DebtorName,AddressLine1,AddressLine2,Email,PhoneNumber,FaxNumber,BankName,BranchName,SwiftAddress,DebtorAccountName,AccountCurrency)values('"+DebtorName+"','"+AddressLine1+"','"+AddressLine2+"','"+Email+"','"+PhoneNumber+"','"+FaxNumber+"','"+BankName+"','"+BranchName+"','"+SwiftAddress+"','"+DebtorAccountName+"','"+AccountCurrency+"') ");
	          stmt.executeUpdate("insert into pending values('"+DebtorName+"','"+Email+"','"+PhoneNumber+"','"+BankName+"',"+DebtorId+") ");
	          ctx=getServletContext();
	          rd=ctx.getRequestDispatcher("/employeeDetails.jsp");
	          rd.forward(request, response);
	          
	    } catch (ClassNotFoundException e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    } catch (SQLException e) {
	      // TODO Auto-generated catch block
	      e.printStackTrace();
	    }
	   
	  }
	}

