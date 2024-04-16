<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mystyles.css" type="text/css" />
<%@  include file="admintabs.html" %>
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

  Valenter details</p>
  <form id="form1" name="form1" method="post" action="">
  <p align="center">Search valenters </p>
  <p align="center">Search by City
    <select name="s1">
	<% 
 rst=stmt.executeQuery("select distinct address from valenters  ");
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
  
  <% if(request.getParameter("search")!=null){ %>  
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
  
  rst=stmt.executeQuery("select * from valenters where address ='"+request.getParameter("s1")+"'");
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

<% } %>


 <% if(request.getParameter("search")==null){ %>  
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
  
  rst=stmt.executeQuery("select * from valenters ");
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

<% } %>



<% 
if(request.getParameter("update")!=null){
try{
int x=stmt.executeUpdate("update ngo set status='"+request.getParameter("e6")+"' where id='"+request.getParameter("e7")+"' ");
if(x!=0)
{

%>
<script>
alert("Date Updated");
window.open("viewngo.jsp","_self");
</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}




if(request.getParameter("delete")!=null){
try{
int x=stmt.executeUpdate("delete from ngo where id='"+request.getParameter("e7")+"'");
if(x!=0){

%>
<script>
alert("Date Deleted successfully");
window.open("viewngo.jsp","_self");

</script>
<%

}

}catch(Exception e){
out.print("error"+e);
}
}
 %>

</body>
</html>
