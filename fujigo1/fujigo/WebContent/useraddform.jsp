<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
<link rel="stylesheet" href="styles/registration.css">
<title></title>
<style>
body{
	background-image: linear-gradient(-225deg, #2CD8D5 0%, #C5C1FF 56%, #FFBAC3 100%);
}
</style>
<script type="text/javascript">
function myFunction() {
  alert("Thank you for Registration!!!");
 
}

</script>
</head>
<body>
<%@ include file="Header.html" %>
<h2 align="center">${useradderror}</h2>
	
	<div class="card">
	<h2>${message}</h2>
	
	<form action="addUser" method="post" onsubmit="validRegister()">
		<br>
		
		<i id="con" class="fa fa-user" aria-hidden="true" style="font-size:48px;color:#6600ff;"></i><h3>User Registration</h3>
		<div class="adminlog">
		
			<label id="role" for="fname" >Role</label>
			<select class="selectrole" name="role">
				 <option value ="Customer" style="text-align:center; color:#6600ff">Customer</option>
				 <option value ="Admin"style="text-align:center; color:#6600ff" >Admin</option>
			</select>	<br><br>
					
 			<label id="uname" for="fname" placeholder="Enter user Name">User Name</label>
  			<input type="text" id="uname" name="userName"><br><br><br>
  			
  		
  		
  			<label id="password" for="lname">Password </label>
  			<input type="password" id="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required><br><br><br>
  			
  			
  			<label id="confirmPasswd" for="cname">Confirm Password </label>
  			<input type="password" id="confirmPasswd" name="confirmPassword" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Not matching to Password" required><br><br><br>

				<div id="message">
					<h3>Password must contain the following:</h3>
					<p id="letter" class="invalid">
						A <b>lowercase</b> letter
					</p>
				     	<p id="capital" class="invalid">
						A <b>capital (uppercase)</b> letter
					</p>
					<p id="number" class="invalid">
						A <b>number</b>
					</p>
					<p id="length" class="invalid">
						Minimum <b>8 characters</b>
					</p>
				</div>

				<button id="admbutton"  onclick="myFunction()" href="addcust">Submit</button>
  			
  		
		</div>
		</form>
		</div>
		<%@ include file="footer.html" %>
</body>

</html>