<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mystyles.css" type="text/css" />
<%@  include file="vtabs.html" %>
<%@  include file="db.jsp" %>
<title>Untitled Document</title>
<style type="text/css">
<!--

.style1 {color: black}

-->
</style>
</head>

<body>
<center>
<p>Activities of NGO</p></center>

<table width="1076" border="0"  align="center">
  <tr bgcolor="#999999">
    <td width="193"><strong>Name</strong></td>
	<td width="142"><strong>Description</strong></td>
    <td width="142"><strong>NGO</strong></td>
   
    
    
   
  </tr>
  
  <% 
    String vngo=(String)session.getAttribute("vngo");
  rst=stmt.executeQuery("select * from activities where ngo='"+vngo+"' ");
  while(rst.next()){
  
   %>
  

  <tr bgcolor="#CCCCCC">
    <td><span class="style3 style1"><%= rst.getString(1) %></span></td>
  
    <td><span class="style3 style1"><%= rst.getString(2) %></span></td>
    <td><span class="style3 style1"><%= rst.getString(3) %></span></td>
  
		 
 
   </tr>
  
  <% } %>
</table>





</body>
</html>
