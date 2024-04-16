<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<%@  include file="hometabs.html" %>
<%@  include file="db.jsp" %>
<title>Untitled Document</title>
<style>

input[type=text], select {
width: 100%;
  padding: 12px;
  margin-bottom: 8px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  font-size: 16px;
}


input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
   border: none;
  border-radius: 4px;
 
}


input[type=button] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
 
}


.logindiv {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  margin-left:30%;
  margin-right:30%;
  position:relative;
}
</style>
<body>

<h3 align="center" style="color:Blue" font-family: "calibri">Registration for Volunteer</h3>

<div class="logindiv">
  <form action="" method="post">
    <label for="fname"> First name </label>
    <input type="text"  name="r1" placeholder="firstname" required>
	 <label for="fname">Last name </label>
    <input type="text"  name="r2" placeholder="lastname" required>
	 <label for="fname"> Age </label>
    <input type="text"  name="r3" placeholder="age" required>
	
	 <label for="fname">Address</label>
	 <br />

     <input name="r4" type="text" value="" size="30" required/>
	 <label for="fname"> <br />
	 Phone number </label>
    <input type="text"  name="r5" placeholder="phone" pattern="[0-9]{10}" title=" 10 digit phone number is required"  required>
	
	
	 <label for="fname"> Username </label>
    <input type="text"  name="r6" placeholder="username" required>

    <label for="lname">Password</label>
    <input type="text"  name="r7" placeholder="Your Password." pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>

    <label for="country">select Gender</label>
    <select  name="r8">
      <option value="male">male</option>
      <option value="female">female</option>
     
    </select>
  		
	 <label for="country">select NGO</label>
    <select  name="r12">
	<%   
 rst=stmt.executeQuery("select name from ngo");
  while(rst.next()){
  
   %>
      <option ><%= rst.getString(1) %></option>
     
     <% 
	 
	 }
	  %> 
    </select>
    <input type="submit" name="Submit" value="Click Here to Register">	
  </form>
</div>
<% 
if(request.getParameter("Submit")!=null){

String s1=request.getParameter("r1");
String s2=request.getParameter("r2");
String s3=request.getParameter("r3");
String s4=request.getParameter("r4");
String s5=request.getParameter("r5");
String s6=request.getParameter("r6");
String s7=request.getParameter("r7");
String s8=request.getParameter("r8");
String s12=request.getParameter("r12");
try{
int x=stmt.executeUpdate("insert into valenters(firstname,lastname,age,address,phone,username,password,gender,ngo) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s12+"')");
if(x!=0){
%>
<script>

alert("New volunteer registered Successfully");
</script>
<%
}
}catch(Exception e){
out.print(e);
%>
<script>

alert("Duplicate entry ");
</script>
<%
}
}
 %>
</body>

</html>
