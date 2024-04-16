<!DOCTYPE html>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style>
.mySlides {display:none;}
</style>
<body>
<%@ include file="hometabs.html" %>
<div class="w3-container">
  <h2 align="center">About us </h2>
  <p>&nbsp;</p>
</div>
<table width="1185" height="258" border="3" align="center">
<tr>
  <td width="596"><div class="just" align="justify">
    <blockquote>
      <p>&nbsp;</p>
      <p>  Welcome to CHARITY WALLET, a compassionate community-driven platform dedicated to making a positive impact on the world through the power of collective generosity. Our platform was founded on the belief that even the smallest act of kindness can create a ripple effect of change, transforming lives and communities for the better.
	  To connect compassionate individuals, businesses, and organizations with deserving causes across the globe. We are committed to facilitating a seamless and transparent process for making meaningful contributions that directly address pressing societal challenges. Together, we strive to create a more equitable and compassionate world where no one is left behind.
	  Join Us in Making a Difference Join us in our mission to create a better world. Your support, no matter how big or small, has the power to create lasting change. Together, we can turn compassion into action and impact lives in meaningful ways. Thank you for being a part of Our Project. Together, we can make a difference that resonates far beyond the digital realm.</p>
    </blockquote>
	<style>
	.just {
	background-color:#ADD8E6;
		}
</style>
  </div></td>
  <td width="490">

	  <div class="w3-content w3-section" style="max-width:500px"  >   
        <img class="mySlides w3-animate-top" src="img/IMG1.jpg" style="width:100%">
        <img class="mySlides w3-animate-bottom" src="img/IMG2.jpg" style="width:100%">
    <img class="mySlides w3-animate-top" src="img/IMG3.jpg" style="width:100%">	  </div></td>
</tr>
</table>

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2500);    
}
</script>

</body>
</html>
