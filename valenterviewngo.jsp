<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="mystyles.css" type="text/css" />
<%@ include file="vtabs.html" %>
<%@  include file="db.jsp" %>
<title>Untitled Document</title>
<style type="text/css">
<!--
.style2 {
	color: #000000;
	font-weight: bold;
}
.style3 {
	color: #FFFFFF;
	font-weight: bold;
}
.style4 {color: #FFFFFF}

body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 600px;
        margin: 20px auto;
        padding: 20px;
        background-color: #133848d1;
        border: 1px solid #e0e0e0;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    .table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 15px;
    }
    .table th, .table td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #e0e0e0;
    }
    .table th {
        background-color: #515b5ccf;
        color: #FFFFFF;
    }
    .table td {
        background-color: #CCCCCC;
    }


-->
</style>
</head>

<body>
<p align="center" style="color:red; font-size:24px">

  NGO details</p>
  
    <% 
  String vngo=(String)session.getAttribute("vngo");
    String vuser=(String)session.getAttribute("vuser");
  
  rst=stmt.executeQuery("select * from ngo where name='"+vngo+"'");
  while(rst.next()){
  
   %>
   
    
</head>
<body>
    <div class="container">
	 <table class="table">
        <tr>
		<th>Name</th>
		<td><%= rst.getString(1) %></td>
                   <tr>
                <th>Address</th>
                <td><%= rst.getString(2) %></td>
            </tr>
		 <th>NGO Id</th>
                <td><%= rst.getString(3) %></td>
            </tr>	
        </table>
    </div>
   <div class="container">
   <a href="tel:997865664" class="contact-button">Contact NGO</a> </div>
   <style>
   .contact-button {
  display: inline-block;
  padding: 10px 20px;
  background-color: #007bff;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  font-size: 16px;
  text-align:center
}

.contact-button:hover {
  background-color: #0056b3;
}

   </style>
   
   
   
   
   
   
   
   
   
  <!-- 
   
<table width="345" border="0"  align="center">
  <tr bgcolor="#999999">
    <td width="193" bgcolor="#99CCFF"><div align="right"><span class="style2">Name</span></div></td>
    <td width="142" bgcolor="#CCCCCC"><span class="style3"><%= rst.getString(1) %></span></td>
  </tr>
  


  <tr bgcolor="grey" style="color:#FFFFFF">
    <td bgcolor="#99CCFF"><div align="right"><span class="style2">Address</span></div></td>
    <td bgcolor="#CCCCCC"><span class="style4"><%= rst.getString(2) %></span></td>
    </tr>
  <tr bgcolor="grey" style="color:#FFFFFF">
    <td bgcolor="#99CCFF"><div align="right"><span class="style2">NGO Id</span></div></td>
    <td bgcolor="#CCCCCC"><span class="style4"><%= rst.getString(3) %></span></td>
    </tr>
</table> -->
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
