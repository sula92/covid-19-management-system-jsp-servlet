<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="css/w3.css">
<head>
<style>

body {
        background: url('war1.gif') no-repeat;
	background-size:cover;
	font-family:Arial;
	color:white;
        background-attachment: fixed;
     }

.img
    {
     position:absolute;
     left:820px;
     top:545px;
     border-style: solid;
     border-width: medium;
     border-color: blue;
     border-radius:50%;
     oppacity:0.8;
    }


</style>

</head>
<body>

<%



%>

<div class="w3-container">
  <h2>Authorised Members Only</h2>
  <h2>Others are not allowed to access...!!!</h2>

  <button onclick="document.getElementById('id01').style.display='block'" class="w3-button w3-green w3-large">Login</button>

  <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
  
      <div class="w3-center"><br>
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-transparent w3-display-topright" title="Close Modal">×</span>
        <img src="login.jpg" alt="Avatar" style="width:30%" class="w3-circle w3-margin-top">
      </div>

      <form action="login" method="post" class="w3-container">
      <div class="w3-section">
          <label><b>Username</b></label>
          <input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Enter Username" name="unm" required>
          <label><b>Password</b></label>
          <input class="w3-input w3-border" type="password" name="pwd" placeholder="Enter Password"  required>
          <button class="w3-button w3-block w3-green w3-section w3-padding" type="submit" name="btnLog" >Login</button>
          <input class="w3-check w3-margin-top" type="checkbox" checked="checked"> Remember me
        </div>
      </form>

      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button  onclick="document.getElementById('id01').style.display='none'" type="button" class="w3-button w3-red">Cancel</button>
        <span class="w3-right w3-padding w3-hide-small">Forgot <a href="#">password?</a></span>
      </div>

    </div>
  </div>
</div>

</body>
</html>