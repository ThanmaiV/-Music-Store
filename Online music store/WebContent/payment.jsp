<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
body {font-family: "Lato", sans-serif;}

div.tab {
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
}

div.tab button {
    background-color: inherit;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 17px;
}
div.tab button:hover {
    background-color: #ddd;
}
div.tab button.active {
    background-color: #ccc;
}
.tabcontent {
    display: none;
    padding: 6px 12px;
    
    border-top: none;
    width:100%;
}
input[type=text],input[type=password],select {
    width: 50%;
    padding: 15px 25px;
    margin: 4px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] , input[type=button]{
    width: 50%;
    background-color: #151B54;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover ,input[type=button]:hover{
    background-color: #151B55;
}



</style>
</head>
<body>
<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'debit')" id="defaultOpen">Debit Card</button>
  <button class="tablinks" onclick="openCity(event, 'credit')">Credit Card</button>
  <button class="tablinks" onclick="openCity(event, 'netbank')">NetBanking</button>
  <button class="tablinks" onclick="openCity(event, 'cod')">Cash on Delivery</button>
</div>
<br><br><br><br>
<div id="debit" class="tabcontent">
  <form action="a.html"><center>
   <input type="text" id="cno" name="cardno" placeholder="Card Number" maxlength=16 minlength=16 pattern="[0-9]{16}" title="valid cardno" required><br>   
   <input type="text" style="width:25%;" id="exp" name="exp" placeholder="MM/YYYY" maxlength=6 minlength=6 pattern="[0-9]{6}" title="valid expdate"required>
   <input type="password" style="width:25%;" id="cvv" name="cvv" placeholder="CVV" maxlength=3 minlength=3 pattern="[0-9]{3}" title="valid cvv" required><br>
   <input type="text" id="Name" name="Name" placeholder="Name on the card" pattern="[A-Za-z]*" title="valid name containing alphabets"required><br>
<input type="submit"  name="submit" value="Pay" ><br></center>
</form></div>

<div id="credit" class="tabcontent">
  <form action="a.html"><center>
   <input type="text" id="cno" name="cardno" placeholder="Card Number" maxlength=16 minlength=16 required><br>   
   <input type="text" style="width:25%;" id="exp" name="exp" placeholder="MM/YYYY" maxlength=6 minlength=6 required>
   <input type="password" style="width:25%;" id="cvv" name="cvv" placeholder="CVV" maxlength=3 minlength=3 required><br>
   <input type="text" id="Name" name="Name" placeholder="Name on the card" required><br>
<input type="submit"  name="submit" value="Pay" ><br></center>
</form></div>

<div id="netbank" class="tabcontent">
 <form action="a.html"><center>
   
    <select id="bank" name="bank" value=" Select Bank">
      <option value="Andhra Bank">Andhra Bank</option>
      <option value="HDFC">HDFC</option>
      <option value="SBI">SBI</option>
      <option value="ICICI">ICICI</option>
      <option value="Kotak">Kotak</option>
      <option value="Axis">Axis</option>
    </select>
   <br><input type="submit"  name="submit" value="Continue" ><br></center>
</form> </div>
<div id="cod" class="tabcontent">
  <form action="a.html"><center>
<input type="submit"  name="submit" value="Confirm the order" ><br></center>
</form>
  </div>

<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
     
</body>
</html> 