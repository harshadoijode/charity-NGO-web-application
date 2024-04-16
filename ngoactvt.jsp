<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mystyles.css" type="text/css" />
<%@  include file="stabs.html" %>
<%@  include file="db.jsp" %>
<title>Untitled Document</title>
<style type="text/css">




body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
  }

  .container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
  }

  h1 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
  }

  table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
  }

  th, td {
    padding: 10px;
    text-align: left;
    border-bottom: 1px solid #ddd;
  }

  th {
    background-color: #333;
    color: white;
  }

  tr:nth-child(even) {
    background-color: #f2f2f2;
  }

  tr:hover {
    background-color: #ddd;
  }





</style>
</head>

<body>

<div class="container">

<h1>NGO Activities</h1>
  <table>
    <tr>
      <th>Name</th>
      <th>Description</th>
      <th>NGO</th>
    </tr>








<!--
<p>NGO Activities</p></center>

<table class="basic" width="1076" border="5"  align="center">
  <tr bgcolor="#999999">
    <td width="193"><strong>Name</strong></td>
	<td width="142"><strong>Description</strong></td>
    <td width="142"><strong>NGO</strong></td>  
   
  </tr>
  -->
  <% 
    String vngo=(String)session.getAttribute("vngo");
  rst=stmt.executeQuery("select * from activities where ngo='"+vngo+"' ");
  while(rst.next()){
  
   %>
 
   
    <!-- Add more rows as needed -->
  





  <tr bgcolor="#CCCCCC">
    <td><span class="style3 style1">
	<%= rst.getString(1) %></span></td>
  
    <td><span class="style3 style1">
	<%= rst.getString(2) %></span></td>
    <td><span class="style3 style1">
	<%= rst.getString(3) %></span></td>
  
		 
 
   </tr>
  
  <% } %>
</table>
</div>




</body>
</html>
