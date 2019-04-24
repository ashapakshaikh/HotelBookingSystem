<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hotel Edit form</title>
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

<div class="hotelcontainer">

<form name="addForm" action="edithotel"  method="post" onsubmit="return validateHotelForm()"> 

<label for="hid">Hotel Id:</label>
<input type="number" name="hotelId" id="hid" value="${param.hotelId}" readonly>


<label for="hnm">Hotel Name:</label>
<input type="text" name="hotelName" id="hnm" value="${param.hotelName}">

<label for="hwb">Website:</label>
<input type="text" name="website" id="hwb" value="${param.website }">


<label for="pno">Phone no:</label>
<input type="number" name="phoneNo" id="pno" value="${param.phoneNo}">


<label for="email">Email id:</label>
<input type="text" name="emailId" id="email" value="${param.emailId}">

<label for="addr">Address:</label>
<input type="text" name="address" id="addr" value="${param.address}">

<label for="cntr">Countrycode:</label>
<input type="number" name="countrycode" id="cntr" value="${param.countrycode }">


<label for="con">Country:</label>
<input type="text" name="country" id="con" value="${param.country}">



<label for="stat">State:</label>
<input type="text" name="state" id="stat" value="${param.state}">

<label for="cit">City:</label>
<input type="text" name="city" id="cit" value="${param.city }">

<label for="zp">Zip:</label>
<input type="number" name="zip" id="zp" value="${param.zip }">

<label for="tr">Total No of Rooms:</label>
<input type="number" name="totalNoOfRooms" id="tr" value="${param.totalNoOfRooms}" >

<label for="ar">Available Rooms:</label>
<input type="number" name="availableRooms" id="ar" value="${param.availableRooms }" >

<input type="submit" value="Edit"">
<input type="reset">

</form>
</div>
<%@ include file="footer.html" %>

</body>
</html>


