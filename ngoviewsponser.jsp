<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mystyles.css" type="text/css" />
<%@  include file="ngotabs.html" %>
<%@  include file="db.jsp" %>
<title>Untitled Document</title>
<style type="text/css">
<!--

.style1 {color: black}

-->
</style>
</head>

<body>
<p align="center" style="color:red; font-size:24px">

  Sponser details</p>
<table width="1076" border="0"  align="center">
  <tr bgcolor="#999999">
    <td width="193"><strong>Name</strong></td>
	<td width="142"><strong>age</strong></td>
    <td width="142"><strong>Address</strong></td>
   
    
    <td width="94"><strong>phone</strong></td>
    <td width="141"><strong>Username</strong></td>
    <td width="148"><strong>password</strong></td>
	 <td width="148"><strong>Gender</strong></td>
   
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from sponser");
  while(rst.next()){
  
   %>
  
  <form action="" method="post">
  <tr bgcolor="#CCCCCC">
    <td><span class="style3 style1"><%= rst.getString(1) %><%= rst.getString(2) %></span></td>
  
    <td><span class="style3 style1"><%= rst.getString(3) %></span></td>
    <td><span class="style3 style1"><%= rst.getString(4) %></span></td>
    <td><span class="style3 style1"><%= rst.getString(5) %></span></td>
	  <td><span class="style3 style1"><%= rst.getString(6) %></span></td>
	   <td><span class="style3 style1"><%= rst.getString(7) %></span></td>
	    <td><span class="style3 style1"><%= rst.getString(8) %></span></td>
		 
 
   </tr>
  </form>
  <% } %>
</table>




</body>
</html>
