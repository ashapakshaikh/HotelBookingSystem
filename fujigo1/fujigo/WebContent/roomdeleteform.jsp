<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete rooms</title>
<link rel="stylesheet" href="styles/roomformstyle.css">
<link rel="Stylesheet" type="text/css" href="styles/headfoot.css">
<script type="text/javascript" src="scripts/preScripts/angular.min.js"></script>
<style>
body {
	background-image: linear-gradient(-225deg, #2CD8D5 0%, #C5C1FF 56%, #FFBAC3 100%);
}
</style>
</head>
<body>
	<%@ include file="Header.html"%>
	<h2>${addroomerror}</h2>
	<div class="Roomcontainer">

		<form name="addForm" action="deleteRoom" method="post"
			onsubmit="return validateRoomForm()">
			<label for="rid">Room ID</label> 
			<input type="text" name="roomId" id="rid" value="${param.roomId }" readonly> 
			<label for="rtp">Room type:</label> 
			<input type="text" name="roomType" id="rtp" value="${param.roomType }" readonly> 
			<label for="rpr">Room price:</label> 
			<input type="number" name="roomprice" id="rpr" value="${param.roomprice }" readonly> <br>
			<label for="avl">Availability:</label> 
			<input type="text" name="availability" id="avl" value="${param.availability }" readonly>
			<label for="hid">Hotel:</label> 
			<input type="number" name="hotel" value="${param.hotel}" id="hid" readonly> 
				<input type="submit" value="Delete"> 
				
				</form>
	</div>
	<%@ include file="footer.html"%>
</body>
</html>








