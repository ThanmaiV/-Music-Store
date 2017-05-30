package omc;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
 class DB
{
    String imagePath;
	String insName;
    String category;
	double rate;
	String brand;
}
public class SearchServlet extends HttpServlet {
	
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out= response.getWriter();
		String ins=request.getParameter("search");
		ins.toLowerCase();
        DB[] arr=new DB[100];
        for(int i=0;i<100;i++)
        {
        	arr[i]=new DB();
        }
		int i=0;
		try
		{
			 Class.forName
			 ("oracle.jdbc.driver.OracleDriver"); 

	Connection	 con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","thanmai");
	 Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select * from instruments ");
   
     while(rs.next())
			{
  
              if(rs.getString(2).equalsIgnoreCase(ins)||rs.getString(3).equalsIgnoreCase(ins)||rs.getString(4).equalsIgnoreCase(ins)||rs.getString(2).contains(ins.toUpperCase())||rs.getString(3).contains(ins)||rs.getString(3).contains(ins.toUpperCase())||rs.getString(4).contains(ins.toUpperCase())||rs.getString(4).contains(ins))		        {
         
				   arr[i].imagePath=rs.getString(1);
                   arr[i].insName=rs.getString(2);
				   arr[i].category=rs.getString(3);
				   arr[i].rate=rs.getDouble(5);
				   arr[i].brand=rs.getString(4);
				   i++;
				}
			}
         out.print("<html><head><style>div.img { margin: 5px; border: 1px solid #ccc; float: left; width: 400px;height:500px;}");
      out.print("div.img:hover { border: 1px solid #777;} div.img img {width: 350px; height: 250px;}");
out.print("div.desc { padding: 5px; text-align: center;	background-color:white;}");
out.print("input[type=submit]{ width: 10%; background-color: #4CAF50;color: white;padding: 14px 20px;margin: 8px 0;border: none;border-radius: 4px;cursor: pointer;}");
out.print("input[type=text]{width: 40%;padding: 15px 25px;margin: 4px 0;display: inline-block;border: 1px solid #ccc;border-radius: 4px;box-sizing: border-box;}"); 
out.print("</style></head><body>");
         out.print("<form action=search method=post ><center>");
         out.print("<input type=text name=search placeholder=search...>"); 
  			 out.print("<input type=submit value=search></center>");
        	out.print("</form>"); 
			for(int k=0;k<i;k++)
			{
				out.print("<form action=payment.jsp><center>");
				out.print("<div class=img><a  href="+arr[k].imagePath+"><img src="+arr[k].imagePath+"></a>");
				out.print("<div class=desc>"+(arr[k].brand).toUpperCase()+" "+arr[k].insName+"<br><h3> Rs."+arr[k].rate+"</h3>");
				out.print("<br><input type=submit style=width:50%; name=Buy value=BUY><br></div></div></center></form>");
			}
			out.print("</body></html>");
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
