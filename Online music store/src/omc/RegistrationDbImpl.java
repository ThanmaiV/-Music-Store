package omc;

import java.io.IOException;


import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.*;

public class RegistrationDbImpl extends HttpServlet
{   public void service(HttpServletRequest request,HttpServletResponse response)
throws ServletException,IOException
	{
	  PrintWriter out=response.getWriter();
response.setContentType("text/html");
	  String fname=request.getParameter("firstname");
	  String lname=request.getParameter("lastname");
	  String mobile=request.getParameter("mobilenumber");
	  String email=request.getParameter("email");
	  String pw=request.getParameter("pwd");
	  String dob=request.getParameter("dob");
	  
	  String gender=request.getParameter("gender");
	  String add=request.getParameter("address");
	 try{
		 Class.forName("oracle.jdbc.driver.OracleDriver");

		 Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","thanmai");

		Statement st1=con.createStatement();
		Statement st2=con.createStatement();
		ResultSet rs=st1.executeQuery("select un from register");
		while(rs.next())
		 {
			if(rs.getString(1).equals(email))
			 {	
			out.print("<html><body><script>alert('account already exsits');</script>");
			out.print("<center><h2><a href=Signup1.html >Go Back</a></h2></center></body></html>" );
			 }
		}
		int i=st2.executeUpdate("insert into register values('"+fname+"','"+lname+"','"+email+"','"+mobile+"','"+pw+"','"+dob+"','"+gender+"','"+add+"')");
if(i==1)
{out.print("<html><body><script>alert('Registration success');</script>");
out.print("<center><h2><a href=home.html >Go Back to Home</a></h2></center></body></html>");}
	 }
catch(Exception e)
{e.printStackTrace();}
}}