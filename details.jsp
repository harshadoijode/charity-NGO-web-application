<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mystyles.css" type="text/css" />
<%@ include file="hometabs.html" %> 
  <%@ include file="db.jsp" %> 
<title>Untitled Document</title>
<style type="text/css">

.modify{
border-collapse: separate;
  width: 200px; 
  margin-bottom: 30px;
  }
  .modify td{
  
  border: 1px solid black;
  padding: 10px;
  text-align: center;
  border-bottom:solid;
  
  }
  .donate-button {
    text-align: center;
	margin-bottom: 5%;
  }
  .donate-button a {
    
	margin-left:20%;
    background-color: #FF4500;
    color: white;
    padding: 10px 20px;
    border-radius: 5px;
    text-decoration: none;
    font-weight: bold;
  }


</style>
</head>

<body>


<p align="center" style="color:white">Search NGO  </p>
<form id="form1" name="form1" method="post" action="">
  <p align="center">Search NGO 
    <input type="text" name="s1" />      
    <input type="submit" name="search" value="Search" />
  </p>
</form>
<p align="center" style="color:white"><strong>NGO    Details </strong></p>
<form id="form1" name="form1" method="post" action="">

  <p align="center">Search by NGO name
    <select name="s1">
	<% 
 rst=stmt.executeQuery("select name from ngo  ");
  while(rst.next()){
  
   %>
      <option><%= rst.getString(1) %></option>
	  <% 
	  }
	   %>
    </select>
    <input type="submit" name="search" value="Search" />
  </p>
</form>
  <form id="form1" name="form1" method="post" action="">
  <p align="center">Search by NGO REGISTRATION NUMBER
    <select name="s1">
      <% 
 rst=stmt.executeQuery("select ngoid from ngo  ");
  while(rst.next()){
  
   %>
      <option><%= rst.getString(1) %></option>
      <% 
	  }
	   %>
    </select>
    <input type="submit" name="search" value="Search" />
</p>
  </form>
<form id="form1" name="form1" method="post" action="">
  <p align="center">Search by City
    <select name="s1">
      <% 
 rst=stmt.executeQuery("select distinct address from ngo  ");
  while(rst.next()){
  
   %>
      <option><%= rst.getString(1) %></option>
      <% 
	  }
	   %>
    </select>
    <input type="submit" name="search" value="Search" />
  </p>
</form>
<p align="center">&nbsp;</p>
<% 

if(request.getParameter("search")!= null){

String s1=request.getParameter("s1");
out.print(s1);
 rst=stmt.executeQuery("select * from ngo where name='"+s1+"' or address='"+s1+"' or ngoid='"+s1+"'  ");
  while(rst.next()){
  
   %>  
<table class="modify" align="center" border="5" >
  <tr bordercolor="#F0F0F0" bgcolor="#66CDAA">
  <td>
    <p align="center"><strong>NGO Name </strong>:<%= rst.getString(1) %></p>
      <p align="center"><strong>Address :</strong><%= rst.getString(2) %></p>
      <p align="center"><strong>Phone:</strong><%= rst.getString(5) %></p>	 
      <p align="center"><strong>Registration Id:</strong><%= rst.getString(3) %></p></td>   
    <td align="center" width="357"><img src="images/<%= rst.getString(10) %>" width="336" height="225" /></td>
  </tr>
</table>  
<div class="donate-button">
<a href="sponserlogin.jsp">Donate Now</a>
</div>

 <%
   }  
  }
   %>
<%
if(request.getParameter("search")==null ){

String s1=request.getParameter("s1");
if (request.getParameter("search") != null)
out.print(s1);
 rst=stmt.executeQuery("select * from ngo ");
  while(rst.next()){
  
   %>
<table  class="modify" align="center" border="5" >
  <tr bordercolor="#800000" bgcolor="#66CDAA">
  <td>
    <p align="center"><strong>NGO Name </strong>:<%= rst.getString(1) %></p>
      <p align="center"><strong>Address :</strong><%= rst.getString(2) %></p>
      <p align="center"><strong>Phone:</strong><%= rst.getString(5) %></p>	 
      <p align="center"><strong>Registration Id:</strong><%= rst.getString(3) %></p></td>   
    <td align="center" width="357"><img src="images/<%= rst.getString(10) %>" width="336" height="225" /></td>
  </tr>
</table>  
<div class="donate-button">
<a href="sponserlogin.jsp">Donate Now</a>
</div>


  <% }
  
  }
   %>


</body>
</html>
