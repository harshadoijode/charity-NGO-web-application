<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mystyles.css" type="text/css" />
<%@ include file="stabs.html" %> 
  <%@ include file="db.jsp" %> 
<title>Untitled Document</title>
<style type="text/css">
<!--


-->
</style>
</head>

<body>

<br />
<p align="center" style="color:white">
 
  <strong>Volunteer   Details </strong></p>
<p align="center">&nbsp;</p>

  


<% 




String suser=(String)session.getAttribute("suser");
 rst=stmt.executeQuery("select * from sponser where username='"+suser+"' ");
  while(rst.next()){
  
   %>
<table width="491" border="0" align="center" style=" border-radius: 14px;">
  <tr style=" border-radius: 14px;" bordercolor="#F0F0F0" bgcolor="#CCCCFF">
    <td align="center" width="124"><p align="center"><strong>Name </strong>:<%= rst.getString(1) %><%= rst.getString(2) %></p>
      <p align="center"><strong>Age :</strong><%= rst.getString(3) %></p>
      <p align="center"><strong>Address:</strong><%= rst.getString(4) %></p>
	  <p align="center"><strong>Phone:</strong><%= rst.getString(5) %></p>
      <p align="center"><strong>username</strong>:<%= rst.getString(6) %></p>
	   <p align="center"><strong>password</strong>:<%= rst.getString(7) %>	 </p>
      <p align="center"><strong>id:</strong>:<%= rst.getString(10) %></p>    </td>
   
 
  </tr>
</table>
  
  
  <% }
  
  
   %>










</body>
</html>
