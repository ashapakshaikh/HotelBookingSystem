<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Booking</title>
<link rel="stylesheet" href="styles/booking.css"></link>
<style>
body{
	background-image: linear-gradient(-225deg, #2CD8D5 0%, #C5C1FF 56%, #FFBAC3 100%);
}
</style>
</head>

<body>
	<%@ include file="Header.html" %>
<h2>${bookingadderror}</h2>
	
	
	  <div class="bookcontainer">
  		<h1 id="h1">Make Your Reservation</h1>
  	
  	<form name="deleteForm" action="deleteBooking" method="post" >
  	


	 <div  class="booking">
			
			<label for="bid"> Booking Id</label>
			<input type= "number" name="bookingId" id="bid" value="${param.bookingId}" readonly>
				
			<label for="chin"> Check-In Date</label>
			<input type= "date" name="checkInDate" id="chin" value="${param.checkInDate}" readonly>
			
			<label for="chout">Check-Out Date</label>
			<input type="date" name="checkOutDate" id="chout" value="${param.checkOutDate}" readonly>
			
			<label for="timein">Check-In Time</label>
			<input type="text" name="checkInTime" id="timein" value="${param.checkInTime}" readonly>
			
			<label for="timeout">Check-Out Time</label>
			<input type="text" name="checkOutTime" id="timeout" value="${param.checkOutTime}" readonly>
			
			<label for="adults">&nbsp;No. Of Adults</label>
			<input type="number" name="noOfAdults" id="adults" min="1" max="10" value="${param.noOfAdults}" readonly>			
			
			
			<label for="childern">No. Of Childern</label>
			<input type="number" name="noOfChildren" id="childern" min="1" max="10" value="${param.noOfChildren}" readonly>
			
			<label for="rooms">No. Of Rooms</label>
			<input type="number" name="numberOfRooms" id="rooms" min="1" max="10" value="${param.numberOfRooms}" readonly> 
						
			<input type="submit" value=" Are you sure you want to cancel this booking?">
		</div>
		
		
		</form>
		</div>
		

<%@ include file="footer.html" %>
</body>
</html>