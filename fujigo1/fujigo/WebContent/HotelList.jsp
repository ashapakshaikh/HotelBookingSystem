<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p" %><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fujigo</title>
<link rel="Stylesheet" type="text/css" href="styles/Home.css">
<link rel="Stylesheet" type="text/css" href="styles/headfoot.css">
<link rel="Stylesheet" type="text/css" href="styles/ListTemplete.css">

<style>
.b1{
	background-image: linear-gradient(to right, #ffc3a0 0%, #ffafbd 100%);	
}
</style>

</head>
<body class="b1">

<form action="search" method="post">	
	<%@ include file="Header.html" %>
	<div id="d1">
		<table align="center">
			<!-- <tr>
				<td><h2 id="hd1" align="center">FujiGo</h2></td>
			</tr>
			<tr>
				<td id="d2" align="center">Dont Book We Book For You<br>You
					Choose We Take Care Of
				</td>
			</tr> -->
			<tr>
			<div align="center"><img alt="" src="Hlogo.png"></div>
			
			</tr>
			<tr>
				<td id="i1"><input class="inp" type="search" name="city"
					placeholder="${param.city }"> 
				<!-- <input class="inp" type="search"
					placeholder="Enter Locality"> -->
		 		 <button class="srchButton"  type="submit">Search</button></td>

			</tr>
		</table>
	</div>
	</form>
	<p:forEach var="hl" items="${sessionScope.hotelList }" >		
		
	<div class="d1">

		<img class="i1" src="${hl.photo }">

 		<div class="d2"> 
			<p class="p1">${hl.hotelName}</p>
 			<br> <br>
			<p class="hc2">${hl.address}</p>
			<br> 		
			</div> 
		
		<div class="d3">
		<p id="Price1"></p>
		<a href="addbooking?city=${hl.city}"><button class="button">Book Now</button>	</a>
		</div>
	</div>
	
		</p:forEach>
	
	<%@ include file="footer.html" %>
</body>
</html>

		
