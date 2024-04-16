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


<script>
function validateForm(){
var x=document.forms["form1"]["r7"].value;
var y=document.forms["form1"]["r8"].value;


if(x==y){
//alert("email ID  cannot be blank");
return true;
}else {
alert("Password not matched");
return false;
}

}

</script>
<body>

<h3 align="center" style="color:#FF0000">Registration for NGO</h3>

<div class="logindiv">
  <form name="form1" id="form1" action="" method="post">
    <label for="fname"> NGO name </label>
    <input type="text"  name="r1" placeholder="NGO name" required>
	 
	 
	
	 <label for="fname"> City </label>
	 <p>
	   <input name="r2" type="text" value="" size="30" required/> 
    </p>
	 <p>NGO REGISTRATION NUMBER
	   <input type="text" name="r3" required/> 
	   <br />
     Contact Person Name
     <input type="text" name="r4" required/>
</p>
	 <label for="fname">
	 Contact person Phone number </label>
    <input type="text"  name="r5" placeholder="phone" pattern="[0-9]{10}" title=" 10 digit phone number is required"  required>
	 <label for="fname">
	 Account Number </label>
    <input type="text"  name="r11" placeholder="accountnumber" pattern="[0-9]{10}" title=" 12 digit account number is required"  required>
	
	
	 <label for="fname"> Username </label>
    <input type="text"  name="r6" placeholder="username" required>

    <label for="lname">Password</label>
    <input type="text"  name="r7" placeholder="Your Password." attern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
	 <label for="lname">Confirm Password</label>
    <input type="text"  name="r8" placeholder="Confirm Password." attern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required>
	 <label for="lname">Add Image</label>
    <input type="file"  name="r9" placeholder="image" required>

  
  	 
  
    <input type="submit" name="Submit" value="Click Here to Register" onclick="return validateForm()">
	
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

String s9=request.getParameter("r9");
String s11=request.getParameter("r11");

rst=stmt.executeQuery("select * from ngolist where ngono='"+s3+"'");
if(rst.next()){


try{
int x=stmt.executeUpdate("insert into ngo(name,address,ngoid,contactpersonname,accountnumber,phone,username,password,image) values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s11+"''"+s6+"','"+s7+"','"+s9+"')");
if(x!=0){
%>
<script>

alert("New NGO rregistered Successfully");
</script>
<%
}

}catch(Exception e){
out.print(e);
%>
<script>

alert("This NGO already Registered");
</script>
<%
}


}else{
%>
<script>

alert("NO such NGO exist in the NGO list");
</script>
<%


}

}
 %>
</body>

</html>
