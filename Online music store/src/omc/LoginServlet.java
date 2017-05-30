package omc;

import java.io.IOException;


import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.*;

public class LoginServlet extends HttpServlet
{   public void service(HttpServletRequest request,HttpServletResponse response)
throws ServletException,IOException
	{
	PrintWriter out=response.getWriter( );
	response.setContentType("text/html");
	String username=
		request.getParameter("username");
	String password=
		request.getParameter("password");
		int status=0;
	String fn=null;
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");

Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","thanmai");
	  Statement st=con.createStatement();
	  ResultSet rs=st.executeQuery("Select fname,un,pw from register");
	  while(rs.next())
	{
		  
if(rs.getString(2).equals(username)&&rs.getString(3).equals(password))
		{
	fn=rs.getString(1);
	status=1;
break;}
	}
if(status==0)
	{out.print("<html><body><script>alert('invalid username or password');</script>");
	out.print("<center><h2><a href=login.html> go back</a></h2></center></body></html>");}
else
	{HttpSession s=request.getSession(true);
	s.setAttribute("UN", username);
    s.setAttribute("FNAME",fn);
	//add Cookies to Response Object

	response.sendRedirect("home.jsp");
	}
}	
catch(Exception e){e.printStackTrace();}
//out.print(""+username+""+password);
}
}