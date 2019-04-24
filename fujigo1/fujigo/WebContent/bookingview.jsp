<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
	background-image: linear-gradient(-225deg, #2CD8D5 0%, #C5C1FF 56%, #FFBAC3 100%);
}
</style>
</head>
<body>
<%@ include file="Header.html" %>


	 <table>
		<tr>
			<th>Booking Id</th>
			<th>checkInDate</th>
			<th>checkOutDate</th>
			<th>checkInTime</th>
			<th>checkOutTime</th>
			<th>noOfAdults</th>
			<th>noOfChildren</th>
			<th>numberOfRooms</th>
			<th>hotelId</th>
			<th>customer_Id</th>
		</tr>
		<c:forEach var="b" items="${sessionScope.bookingList}">
			<tr>
				<td>${b.bookingId}</td>
				<td>${b.checkInDate}</td>
				<td>${b.checkOutDate}</td>
				<td>${b.checkInTime}</td>
				<td>${b.checkOutTime }</td>
				<td>${b.numberOfRooms }</td>
				<td>${b.noOfAdults }</td>
				<td>${b.noOfChildren }</td>
				<td></td>
				<td></td>
				<td><a href="delete?bookingId=${b.bookingId}&checkInDate=${b.checkInDate}&checkOutDate=${b.checkOutDate}&checkInTime=${b.checkInTime}
				&checkOutTime=${b.checkOutTime}&numberOfRooms=${b.numberOfRooms}&noOfAdults=${b.noOfAdults}&noOfChildren=${b.noOfChildren}">Delete</a></td>
			</tr> 
		</c:forEach>
	</table>




<%@ include file="footer.html" %>
</body>
</html>