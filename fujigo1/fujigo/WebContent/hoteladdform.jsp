<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Hotel Form</title>
<link rel="stylesheet" href="styles/hoteladdformstyle.css">
<script type="text/javascript" src="scripts/hoteladdvalidation.js"></script>
<link rel="Stylesheet" type="text/css" href="styles/headfoot.css">
<script type="text/javascript" src="scripts/preScripts/angular.min.js" ></script>
<style>
body{
	background-image: linear-gradient(-225deg, #2CD8D5 0%, #C5C1FF 56%, #FFBAC3 100%);
}
</style>
</head>
<body>
	<%@ include file="Header.html"%>


	<h2>${addhotelerror}</h2>
	<form name="addForm" action="addHotel" method="post"
		onsubmit="return validateHotelForm()" enctype="multipart/form-data">
		<div class="hotelcontainer">

			<label for="hnm">Hotel Name:</label> <input type="text"
				name="hotelName" id="hnm" placeholder="Enter hotel name"> <label
				for="hwb">Website:</label> 
			<input type="text" name="website"
				id="hwb" placeholder="Enter hotel website"> <label for="pno">Phone
				no:</label>
			<input type="tel" pattern="[0-9]{10}" name="phoneNo" id="pno"
				placeholder="Enter hotel phoneNo"> <label for="email">Email
				id:</label> 
			<input type="text" name="emailId" id="email"
				placeholder="Enter email id of hotel"> <label for="addr">Address:</label>
			<input type="text" name="address" id="addr"
				placeholder="Enter address of hotel"> <label for="cntr">Countrycode:</label>
			<input type="number" name="countrycode" id="cntr"
				placeholder="Enter countrycode of hotel"> <label for="con">Country:</label>
			<input type="text" name="country" id="con"
				placeholder="Enter country of hotel"> <label for="stat">State:</label>
			<input type="text" name="state" id="stat"
				placeholder="Enter state of hotel"> <label for="cit">City:</label>
			<input type="text" name="city" id="cit"
				placeholder="Enter city of hotel"> <label for="zp">Zip:</label>
			<input type="number" name="zip" id="zp"
				placeholder="Enter zip of hotel"> <label for="ph">Upload
				Hotel Photo:</label> <input type="file" name="hotelPhoto" id="ph"> <label
				for="tr">Total No. of Rooms:</label> 
			<input type="number"
				name="totalNoOfRooms" id="tr"
				placeholder="Enter Total No. of Rooms in hotel"> 
				<label for="ar">Available Rooms:</label> 
			<input type="number"
				name="availableRooms" id="ar"
				placeholder="Enter Available Rooms in hotel"> 
				<input type="submit" value="Submit"> <input type="reset">

		</div>
	</form>

<%@ include file="footer.html" %>


</body>
</html>








