<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">


<title>Edit Customer</title>
<style type="text/css">
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}


</style>

</head>
<body>
	<h2>${customeradderror}</h2>
	<div class="card">
		<form name="editCustomer" action="editCustomer" method="post">
			<i class="fa fa-pencil" aria-hidden="true"></i><br><br>
			<label for="cid">CustId:</label> <br><br>
			<input type="number" name="customer_Id" id="cid" value="${param.customer_Id}" readonly><br><br>
			
			<label for="cnm">CustName:</label><br><br>
			 <input type="text" name="customer_Name" id="cnm" value="${param.customer_Name}"><br><br>
			 
			 
			<label for="ccode">Country_Code:</label> <br><br>
			<input type="number" name="" id="ccode" value="${param.country_Code}"> <br><br>
			
			<label for="cphno">PhoneNo:</label><br><br>
			<input type="number" name="" id="cphno" value="${param.phone_No}"><br><br>
			
			<label for="cemail">Email:</label> <br><br>
			<input type="number" name=""id="cemail" value="${param.email_Id}"><br><br> 
			
			<label for="caddr">Address:</label><br><br>
			<input type="text" name="address" id="caddr" value="${param.address}"><br><br>
			
			<label for="ccity">City:</label> <br><br>
			<input type="number" name="" id="ccity" value="${param.city}"> <br><br>
			
			<label for="cstate">State:</label><br><br>
			<input type="number" name="" id="cstate" value="${param.state}"><br><br>
			
			<label for="ccountry">Country:</label><br><br>
			<input type="text" name="" id="ccountry" value="${param.country}"><br><br>
			
			<label for="czip">Zip:</label><br><br>
			<input type="text" name="" id="czip" value="${param.zip}"> <br><br>
			<label for="cage">Age:</label><br><br>
			<input type="date" name="" id="cage" value="${param.age}"> <br><br>
			
			<label for="cgender">Gender:</label><br><br> 
			<input type="text" name="gender" id="cgender" value="${param.gender}"><br><br>
			
			<label for="cidtype">IdType:</label><br><br> 
			<input type="text" name="type" id="cidtype" value="${param.id_Type}"><br><br>
			
			<label for="cidno">IdNumber:</label><br><br>
			<input type="number" name="" id="cidno" value="${param.id_No}"><br><br>
			
			
			<label for="cnationality">Nationality:</label> <br><br>
			<input type="text" name="" id="cnationality" value="${param.nationality}"><br><br>
			<input type="submit" value="Edit"><br><br>
		</form>
		</div>
</body>
</html>