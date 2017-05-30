<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 500px;
  margin: auto;
   font-family: arial;
}

.container {
width:100%;
  padding: 0 16px;
}

.container::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
  font-size: 18px;
}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

a {
  text-decoration: none;
  font-size: 22px;
  color: black;
}

button:hover, a:hover {
  opacity: 0.7;
}
</style>


</head>
<%@ page import="java.sql.*" %>

<body>

<h2 style="text-align:center">User Profile</h2>

<div class="card">
  <center><img src="user.png" alt="John" style="width:200px;"></center>
  <div class="container">
    <%HttpSession s=request.getSession(true);
String usn=(String)s.getAttribute("UN");
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","thanmai");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from register where un='"+usn+"'");
while(rs.next())
{
out.print("<pre><label for=fname style=font-size:160%;font-family:verdena;>  First Name			:"+rs.getString(1)+"</label><br></pre>");
out.print("<pre><label for=lname style=font-size:160%;font-family:verdena;>  Last Name			:"+rs.getString(2)+"</label><br></pre>");
out.print("<pre><label for=email style=font-size:160%;font-family:verdena;>  Email/Username		:"+rs.getString(3)+"</label><br></pre>");
out.print("<pre><label for=mobile style=font-size:160%;font-family:verdena;>  Mobile No			:"+rs.getString(4)+"</label><br></pre>");
out.print("<pre><label for=dob style=font-size:160%;font-family:verdena;>  DOB				:"+rs.getString(6)+"</label><br></pre>");
out.print("<pre><label for=gender style=font-size:160%;font-family:verdena;>  Gender			:"+rs.getString(7)+"</label><br></pre>");
out.print("<pre><label for=address style=font-size:160%;font-family:verdena;>  Address			:"+rs.getString(8)+"</label><br></pre>");

}}
catch(Exception e)
{e.printStackTrace();}
%>
  </div>
</div>

</body>
</html>
