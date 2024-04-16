<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@ include file="stabs.html" %>
<%@  include file="db.jsp" %>
<title>Untitled Document</title>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  color:#000000;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}


input[type=button] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=submit]:hover {
  background-color: #45a049;
}

.logindiv {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  margin-left:30%;
  margin-right:30%;
}
</style>
<body>

<h3 align="center" style="color:#FF0000">Donation for NGO</h3>

<div class="logindiv">
  <form action="" method="post">
    <label for="fname"> Select NGO </label>
    <select name="r1" id="r1">
	<%  rst=stmt.executeQuery("select * from ngo  ");
  while(rst.next()){ %>
      <option><%= rst.getString(1) %></option>
	  <% } %>
    </select>
	 
	 
	
	 <label for="fname"></label>
	 <br /><br />
	 <label for="fname">
	 Enter Amount </label>
	 <input type="number"  name="r2" placeholder="amount" required>
	 <br />
	 <br />
	
	 <label for="fname"> Sponser Name </label>
	 <input type="text"  name="r3" placeholder="username" value="<%= session.getAttribute("suser") %>" required>
	 
	  <label for="fname"> Debit/Credit Card No</label>
	 <input type="text"  name="r4" placeholder="Card no" pattern="[0-9]{16}" title=" 16 digit Card number "   required >
	 
	  <label for="fname"> CVV </label>
	 <input type="text"  name="r5" placeholder="CVV" pattern="[0-9]{3}" title=" 3 digit cvv number "  required >

    <label for="lname"></label>
    <input type="submit" name="Submit" value="Donate">
	
  </form>
</div>



<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("r1");
String s2=request.getParameter("r2");
String s3=request.getParameter("r3");
String s4=request.getParameter("r4");
String s5=request.getParameter("r5");

try{
int x=stmt.executeUpdate("insert into donation(ngoname,amount,sponsername,accountno,cvv) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
if(x!=0){
%>
<script>

alert("Donated amount successfully");
</script>
<%
}

}catch(Exception e){
%>
<script>

alert("This NGO already Registered");
</script>
<%
}
}
 %>
 
 <p align="center"> Donation Status </p>
 <table width="1076" border="0"  align="center">
  <tr bgcolor="#999999">
    <td width="193"><strong>NGO Name</strong></td>
	<td width="142"><strong>Amount</strong></td>
    <td width="142"><strong>Sponser Name</strong></td>
   
    
    <td width="94"><strong>Card No</strong></td>
    <td width="141"><strong>CVV</strong></td>
    <td width="148"><strong>Status</strong></td>
	 <td width="148"><strong>Date</strong></td>
   
  </tr>
  
  
  

  
  <% 
  
  rst=stmt.executeQuery("select * from donation where sponsername='"+session.getAttribute("suser")+"'");
  while(rst.next()){
  
   %>
  
  <form action="" method="post">
  <tr bgcolor="#CCCCCC">
    <td><span class="style3 style1"><%= rst.getString(1) %></span></td>
   <td><span class="style3 style1"><%= rst.getString(2) %></span></td>
    <td><span class="style3 style1"><%= rst.getString(3) %></span></td>
    <td><span class="style3 style1"><%= rst.getString(4) %></span></td>
    <td><span class="style3 style1"><%= rst.getString(5) %></span></td>
	  <td><span class="style3 style1"><%= rst.getString(6) %></span></td>
	   <td><span class="style3 style1"><%= rst.getString(7) %></span></td>
	   
		 
 
   </tr>
  </form>
  <% } %>
</table>


  

 
 
 
</body>

</html>
