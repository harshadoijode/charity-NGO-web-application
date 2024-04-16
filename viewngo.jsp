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

  NGO details</p>
<table width="1076" border="0"  align="center">
  <tr bgcolor="#999999">
    <td width="193"><strong>Name</strong></td>
    <td width="142"><strong>Address</strong></td>
 
    
    <td width="94"><strong>phone</strong></td>
    <td width="141"><strong>Username</strong></td>
    <td width="148"><strong>password</strong></td>
    <td width="148"><strong>Status</strong></td>
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from ngo");
  while(rst.next()){
  
   %>
  
  <form action="" method="post">
  <tr bgcolor="#003399">
    <td><span class="style3 style1"><input name="e1" type="text"  value="<%= rst.getString(1) %>"/></span></td>
    <td><span class="style3 style1"><input name="e2" type="text" value="<%= rst.getString(2) %>"/></span></td>
    <td><span class="style3 style1"><input name="e3" type="text" value="<%= rst.getString(3) %>"/></span></td>
    <td><span class="style3 style1"><input name="e4" type="text" value="<%= rst.getString(4) %>"/></span></td>
    <td><span class="style3 style1"><input name="e5" type="text" readonly="true" value="<%= rst.getString(5) %>"/></span></td>
    <td><p style="color:#FFFF00"><%= rst.getString(8) %></p>
	
      <p class="style3 style1">
        <select name="e6">
          <option>Accept</option>
          <option>Reject</option>
        </select>
      </p></td>
    <td><input name="update" type="submit" id="update" value="Update" />
      <input type="submit" name="delete" value="Delete" /></td>
	  <input name="e7" type="hidden" value="<%= rst.getString(9) %>" />
  </tr>
  </form>
  <% } %>
</table>


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
