<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="Stylesheet" type="text/css" href="styles/ListTemplete.css">
<link rel="Stylesheet" type="text/css" href="styles/headfoot.css">
<title>Room List</title>
<style>
body{
	background-image: linear-gradient(-225deg, #2CD8D5 0%, #C5C1FF 56%, #FFBAC3 100%);
}
.hc2{
	font-size: 15px;
}
.p1{
	font-size: 30px;
}

button
{
	background-color: #4CAF50; /* Green */
	height: 40px;
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
	<%@ include file="Header.html" %>
	<p:forEach var="rl" items="${sessionScope.roomList }" >	
	<div class="d1" align="center">
		<div class="d2">
			<p align="left" class="p1"> Room ID = ${rl.roomId}
			<br>Room Price = ${rl.roomprice}
			<br>Room Type = ${rl.roomType }
			<br>Availibilty = ${rl.availability }
			<br>Hotel Id Of Room = ${rl.hotel.hotelId }
			<br>Hotel Name Of Room = ${rl.hotel.hotelName }
		</div> 
		
		<div class="d3">
		 <a href="editroom?roomId=${rl.roomId}
&roomType=${rl.roomType }
&availability=${rl.availability }
&roomprice=${rl.roomprice }
&hotel=${rl.hotel.hotelId }
"><button>Edit</button></a><br>

 <br><a href="deleteroom?roomId=${rl.roomId}
&roomType=${rl.roomType }
&availability=${rl.availability }
&roomprice=${rl.roomprice }
&hotel=${rl.hotel.hotelId }
"><button>Delete</button></a><br>
		
		</div>
	</div>
		</p:forEach>
<%@ include file="footer.html" %>

</body>
</html>