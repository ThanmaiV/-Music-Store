package omc;

import java.io.IOException;


import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.sql.*;
import javax.servlet.http.HttpSession;

public class HomeServlet extends HttpServlet
{   public void doGet(HttpServletRequest request,HttpServletResponse response)
throws ServletException,IOException
	{
	PrintWriter out=response.getWriter( );
	response.setContentType("text/html");
	HttpSession s=request.getSession(true);
	String fn=(String)s.getAttribute("FNAME");
out.print("<html><body> <a href=home.html>Sign out</a> <a href=account.jsp>"+fn +"</a></body></html>");
	
	}

}