<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@ include file="ngotabs.html" %>
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



<table width="1076" border="0"  align="center">
  <tr bgcolor="#999999">
    <td width="193"><strong>NGO Name</strong></td>
    <td width="142"><strong>Amount</strong></td>
 
    
    <td width="94"><strong>Sponser Name</strong></td>
   
    <td width="148"><strong>Status</strong></td>
	<td width="148"><strong>Update Status</strong></td>
	<td width="148"><strong></strong></td>
  </tr>
  
  <% 
  
  rst=stmt.executeQuery("select * from donation where ngoname='"+session.getAttribute("ngo")+"'");
  while(rst.next()){
  
   %>
  
  <form action="" method="post">
  <tr bgcolor="#003399">
    <td><span class="style3 style1"><input name="e1" type="text"  value="<%= rst.getString(1) %>"/></span></td>
    <td><span class="style3 style1"><input name="e2" type="text" value="<%= rst.getString(2) %>"/></span></td>
    <td><span class="style3 style1"><input name="e3" type="text" value="<%= rst.getString(3) %>"/></span></td>

    <td><span class="style3 style1"><input name="e5" type="text" readonly="true" value="<%= rst.getString(6) %>"/></span></td>
    <td><p style="color:#FFFF00"><%= rst.getString(6) %></p>
	
      <p class="style3 style1">
        <select name="e6">
          <option>Accept</option>
          <option>Reject</option>
        </select>
      </p></td>
    <td><input name="update" type="submit" id="update" value="Update" />
      <input type="submit" name="delete" value="Delete" /></td>
	  <input name="e7" type="hidden" value="<%= rst.getString(8) %>" />
  </tr>
  </form>
  <% } %>
</table>


<% 
if(request.getParameter("update")!=null){
try{
int x=stmt.executeUpdate("update donation set status='"+request.getParameter("e6")+"' where id='"+request.getParameter("e7")+"' ");
if(x!=0)
{

%>
<script>
alert("Date Updated");
window.open("acceptdonation.jsp","_self");
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
