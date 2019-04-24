<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New Booking</title>
<link rel="stylesheet" href="styles/booking.css"></link>
<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link href="https://code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css" rel="stylesheet">
<link rel="Stylesheet" type="text/css" href="styles/headfoot.css">
<script type="text/javascript" src="scripts/preScripts/angular.min.js" ></script>
<style>
body{
	background-image: linear-gradient(-225deg, #2CD8D5 0%, #C5C1FF 56%, #FFBAC3 100%);
}
</style>
<script type="text/javascript">
<!--  $(document).ready(function(){
	var minDate=new Date();
	$("#chin").datepicker({
		showAnim : 'drop',
		numberOfMonth : 1,
		minDate: minDate,
		dateFormat : 'mm/dd/yy',
		onClose: function(selectedDate){
			$('#chout').datepicker("option","minDate","selectedDate");
		}
	});
	$("#chout").datepicker({
		showAnim : 'drop',
		numberOfMonth : 1,
		minDate: minDate,
		dateFormat : 'mm/dd/yy',
		onClose: function(selectedDate){
			$('#chin').datepicker("option","minDate","selectedDate");
		}
	});
	
</script>
 <script type="text/javascript" src="scripts/Bookingaddvalidation.js"></script>

</head>
<body>
	<%@ include file="Header.html" %>
	<h2>${bookingadderror}</h2>
	
	  <div class="bookcontainer">
  
  	<form name="addForm" action="addBooking" method="post" >
  	
<h1 id="h1">Make Your Reservation</h1>

	<div  class="booking">
		
			<label for="location"> Location</label>
			<input type= "text" name="city" id="location" required>
			
			
			<label for="chin"> Check-In Date</label>
			<input type= "date" name="checkInDate" id="chin" required>
			
			<label for="chout">Check-Out Date</label>
			<input type="date" name="checkOutDate" id="chout" required>
			
			<label for="timein">Check-In Time</label>
			<input type="text" name="checkInTime" id="timein" required>
			
			<label for="timeout">Check-Out Time</label>
			<input type="text" name="checkOutTime" id="timeout" required>
			
			<label for="adults">&nbsp;No. Of Adults</label>
			<input type="number" name="noOfAdults" id="adults" min="1" max="10" required>			
			
			
			<label for="childern">No. Of Childern</label>
			<input type="number" name="noOfChildren" id="childern" min="1" max="10" required>
			
			<label for="rooms">No. Of Rooms</label>
			<input type="number" name="numberOfRooms" id="rooms" min="1" max="10" required>
						
			<input type="submit" value="Book Now">
		
		
		</div>
		</form>
		</div>
		
<%@ include file="footer.html" %>

</body>
</html>
