<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mystyles.css" type="text/css" />
<%@ include file="ngotabs.html" %> 
  <%@ include file="db.jsp" %> 
<title>Untitled Document</title>
<style type="text/css">
<!--


-->
</style>
</head>

<body>

<br />
<p align="center" style="color:Blue">
 
  <strong>NGO  Details </strong></p>
<p align="center">&nbsp;</p>

  


<% 




String ngo=(String)session.getAttribute("ngo");
 rst=stmt.executeQuery("select * from ngo where name='"+ngo+"' ");
  while(rst.next()){
  
   %>
<table width="auto" border="0" align="center" style=" border-radius: 14px;">
  <tr style=" border-radius: 14px;" bordercolor="#F0F0F0" bgcolor="#CCCCFF">
    <td align="center" width="auto"><p align="center"><strong>Name </strong>:<%= rst.getString(1) %></p>
      <p align="center"><strong>Phone No :</strong><%= rst.getString(5) %></p>
      <p align="center"><strong>Address:</strong><%= rst.getString(2) %></p>
      <p align="center"><strong>NGO Id</strong>:<%= rst.getString(3) %></p>
	   <p align="center"><strong>Password</strong>:<%= rst.getString(7) %>	 </p>
	   <p align="center"><strong>Account Number</strong>:<%= rst.getString(11) %>	 </p>
     
   
   
    </td>
   
  </tr>
  
  </table>
  
  
  <% }
  
  
   %>










</body>
</html>
