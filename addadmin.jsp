<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@  include file="admintabs.html" %>
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
  padding-right:10px;
   padding-left:10px;
}
input[type=password], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  padding-right:10px;
   padding-left:10px;
}

input[type=submit] {
  width: 60%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}


input[type=button] {
  width: 60%;
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
  margin-left:20%;
  margin-right:20%;
}
.style3 {color: #FFFFFF; font-weight: bold; font-size:18px; }
</style>
<body>
<div   >
<br />
<br />
<br />
<br />

<h3 align="center" style="color:#0000CC">Add New Admin</h3>
  <form action="" method="post">
  
  
    <table style="background-color:#666666; border-radius:25px" width="621" border="0" align="center">
      <tr>
        <td><span class="style3">
          <label for="fname">
          </span>
          <div align="right" class="style3">Username
            </label>
          </div></td>
        <td><input type="text"  name="username" placeholder="Username" /></td>
      </tr>
      <tr>
        <td><span class="style3">
          <label for="lname">
          </span>
          <div align="right" class="style3">Password
            </label>
          </div></td>
        <td><input type="password"  name="password" placeholder="Your Password." /></td>
      </tr>
      <tr>
        <td><div align="right"></div></td>
        <td><input type="submit" name="Submit" value="Submit" /></td>
      </tr>
    </table>
    <div align="center"></div>
    <div align="center"></div>
    <div align="center"></div>
    <p>&nbsp;      </p>
  </form>
</div>
<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("username");
String s2=request.getParameter("password");



int x=stmt.executeUpdate("insert into login values('"+s1+"','"+s2+"')");
if(x!=0){
%>
<script>

alert("admin added Successfull");

</script>
<%
}else{
%>
<script>

alert("login Failed");

</script>
<%
}





}


%>
</body>

</html>
