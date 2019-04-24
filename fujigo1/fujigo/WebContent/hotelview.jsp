<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HotelList</title>
<link rel="Stylesheet" type="text/css" href="styles/headfoot.css">
<link rel="Stylesheet" type="text/css" href="styles/ListTemplete.css">

<style>
body{
	background-image: linear-gradient(-225deg, #2CD8D5 0%, #C5C1FF 56%, #FFBAC3 100%);
}
.hc2{
	font-size: 12px;
}
.d2{
	display: inline-block;
}
button
{
	background-color: #4CAF50; /* Green */
	height: 30px;
  border: none;
  color: white;
  text-decoration: none;
  font-size: 16px;
  cursor: pointer;
-webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  border-radius: 10px;
}

</style>
</head>
<body>
	<%-- <table>
		<tr>
			<th>Hotel ID</th>
			<th>Name</th>
			<th>Website</th>
			<th>Rating</th>
			<th>Review</th>
			<th>Phone Number</th>
			<th>Address</th>
			<th>E-Mail Id</th>
			<th>Country COde</th>
			<th>City</th>
			<th>State</th>
			<th>Country</th>
			<th>Zip Code</th>
			<th>Total No of Rooms</th>
			<th>Available Rooms</th>
			
		</tr>
		<p:forEach var="hl" items="${sessionScope.hotelList }" >
		<tr>
			<td>${hl.hotelId }</td>
			<td>${hl.hotelName }</td>
			<td>${hl.website }</td>
			<td>${hl.rating }</td>
			<td>${hl.review }</td>
			<td>${hl.phoneNo }</td>
			<td>${hl.address }</td>
			<td>${hl.emailId }</td>
			<td>${hl.countrycode }</td>
			<td>${hl.city }</td>
			<td>${hl.state }</td>
			<td>${hl.country }</td>
			<td>${hl.zip }</td>
			<td>${hl.totalNoOfRooms}</td>
			<td>${hl.availableRooms}</td>
			
			<td>  
 <a href="edit?hotelId=${hl.hotelId}
&hotelName=${hl.hotelName}
&website=${hl.website}
&rating=${hl.rating}
&review=${hl.review}
&phoneNo=${hl.phoneNo}
&emailId=${hl.emailId}
&address=${hl.address}
&countrycode=${hl.countrycode}
&city=${hl.city}
&state=${hl.state}
&country=${hl.country}
&zip=${hl.zip}
&totalNoOfRooms=${hl.totalNoOfRooms}
&availableRooms=${hl.availableRooms}">Edit</a></td>

<td>
 <a href="delete?hotelId=${hl.hotelId}
&hotelName=${hl.hotelName}
&website=${hl.website}
&rating=${hl.rating}
&review=${hl.review}
&phoneNo=${hl.phoneNo}
&emailId=${hl.emailId}
&address=${hl.address}
&countrycode=${hl.countrycode}
&city=${hl.city}
&state=${hl.state}
&country=${hl.country}
&zip=${hl.zip}
&totalNoOfRooms=${hl.totalNoOfRooms}
&availableRooms=${hl.availableRooms}">Delete</a></td>
		 <td>
		<a href="addr?hotelId=${hl.hotelId}">Add Rooms</a></td>
		</tr>
		</table>
		 --%>
		 	<%@ include file="Header.html" %>
		 
		 
		<p:forEach var="hl" items="${sessionScope.hotelList }" >
			
	<div class="d1" align="center">

		<img class="i1" src="${hl.photo }">

		<div class="d2">
			<p align="left" class="p1">${hl.hotelName}</p>
			<br>
			<br><p align="left"  class="hc2">Hotel ID = ${hl.hotelId}
			<br>Website = ${hl.website }
			<br>Phone No = ${hl.phoneNo }
			<br>Email Id = ${hl.emailId }
			<br>City = ${hl.city}
			<br>Country =  ${hl.country}
			<br>Zip = ${hl.zip}
			<br>Number of rooms = ${hl.totalNoOfRooms}
			<br>Available Rooms = ${hl.availableRooms}
			</p>
			

		</div>
		<div class="d3">
		 <a href="edit?hotelId=${hl.hotelId}
&hotelName=${hl.hotelName}
&website=${hl.website}
&rating=${hl.rating}
&review=${hl.review}
&phoneNo=${hl.phoneNo}
&emailId=${hl.emailId}
&address=${hl.address}
&countrycode=${hl.countrycode}
&city=${hl.city}
&state=${hl.state}
&country=${hl.country}
&zip=${hl.zip}
&totalNoOfRooms=${hl.totalNoOfRooms}
&availableRooms=${hl.availableRooms}"><button>Edit</button></a><br>

 <br><a href="delete?hotelId=${hl.hotelId}
&hotelName=${hl.hotelName}
&website=${hl.website}
&rating=${hl.rating}
&review=${hl.review}
&phoneNo=${hl.phoneNo}
&emailId=${hl.emailId}
&address=${hl.address}
&countrycode=${hl.countrycode}
&city=${hl.city}
&state=${hl.state}
&country=${hl.country}
&zip=${hl.zip}
&totalNoOfRooms=${hl.totalNoOfRooms}
&availableRooms=${hl.availableRooms}"><button>Delete</button></a><br>
		
		<br><a href="addr?hotelId=${hl.hotelId}"><button>Add Rooms</button></a>
		</div>
	</div>
		</p:forEach>
<%@ include file="footer.html" %>

</body>
</html>