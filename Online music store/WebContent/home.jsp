<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
 <head>
 <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">  <style>
  ul.topnav {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}
div.contact {
    border-radius: 3px;
    background-color: gray;
    padding: 50px;
	margin:100px; 
	width:80%;
}
ul.topnav li {float: left;}

ul.topnav li a {
  display: inline-block;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  transition: 0.3s;
  font-size: 17px;
}

ul.topnav li a:hover {background-color: #555;}

ul.topnav li.icon {display: none;}

@media screen and (max-width:680px) {
  ul.topnav li:not(:first-child) {display: none;}
  ul.topnav li.icon {
    float: right;
    display: inline-block;
  }
}

@media screen and (max-width:680px) {
  ul.topnav.responsive {position: relative;}
  ul.topnav.responsive li.icon {
    position: absolute;
    right: 0;
    top: 0;
  }
  ul.topnav.responsive li {
    float: none;
    display: inline;
  }
  ul.topnav.responsive li a {
    display: block;
    text-align: left;
  }
}
  .button {
    background-color: #151B54;
    border: none;
    color: white;
    padding: 10px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
div.img {
    margin: 5px;
    border: 1px solid #ccc;
    float: left;
    width: 370px;
}

div.img:hover {
    border: 1px solid #777;
}

div.img img {
    width: 100%;
    height: auto;
}

div.desc {
    padding: 15px;
    text-align: center;
	background-color:white;
}



  a:link
 {
   color:white;
   background-color:transparent;
   text-decoration:none;
 }
 a:visited
 {
   color:white;
   background-color:transparent;
   text-decoration:none;
 }
 a:hover
 {
   color:white;
   background-color:transparent;
   text-decoration:none;
 }
 a:active
 {
   color:white;
   background-color:transparent;
   text-decoration:none;
 }
 .dropbtn {
    background-color: #151B54;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}


.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #151B54;
}
body {
    background-image: url("music3.jpg") ;
     background-repeat: no-repeat;
	 background-size:100% 150% ;
}
input[type=text], input[type=submit] {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
.fa {
  padding: 20px;
  font-size: 30px;
  width: 30px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
  border-radius: 50%;
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}
</style>
 </head>
 <body  >
  <ul class="topnav" id="myTopnav">
  <li><a class="active" href="home.jsp">Home</a></li>
  <li><a href="home.html">Log Out</a></li>
  <li><a href="contact.html">Contact</a></li>
   <li><a href="aboutus.html">About Us</a></li>
  <li><a href="account.jsp">
  <%  HttpSession s=request.getSession(true);
	String fn=(String)s.getAttribute("FNAME");
	out.print(""+fn);
	%>
  </a></li>

  <li class="icon">
    <a href="javascript:void(0);" style="font-size:15px;" onclick="myFunction()">☰</a>
  </li>
</ul><br><br>
<center>
<form action="search" method="post"> 
 <td><input type="text" name="search" placeholder="search" size="50"><input type="submit" style="width:25%;background-color: #151B54;color:white;"class="button" name="search" value="Search"></td>
 </form>    </center>
 <br><br><br>
<table><tr><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>
</td><td></td><td></td><td></td><td></td><td></td><td></td><td><div class="img">
   <a href="se25.jsp">
    <img src="guit.jpg" alt="Trolltunga Norway" width="1000" height="1000"  style="width:370px;height:228px;">
  </a>
  <div class="desc">Shop Now--25% Off</div>
  
</div></td>

<td><div class="img">
  <a href="se30.jsp">
    <img src="drum.jpg" alt="Forest" width="600" height="400"  style="width:370px;height:228px;">
  </a>
  <div class="desc">Shop Now--30% Off</div>
  
</div></td>

<td><div class="img">
   <a href="se20.jsp">
    <img src="key.jpg" alt="Northern Lights" width="600" height="400"  style="width:370px;height:228px;">
  </a>
  <div class="desc">Shop Now--20% Off</div>
  
</div></td></tr></table>
<br><br><br><br>

 <center>
  <a href="https://www.facebook.com/login/" class="fa fa-facebook"></a>
<a href="https://twitter.com/login" class="fa fa-twitter"></a>
<a href="#" class="fa fa-google"></a>

  </center>
<script>
function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}
</script>

 </body>
</html>
