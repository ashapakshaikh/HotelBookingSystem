<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<link rel="Stylesheet" type="text/css" href="styles/headfoot.css">

<style>
body{
	background-image: linear-gradient(-225deg, #2CD8D5 0%, #C5C1FF 56%, #FFBAC3 100%);
}

button{
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
	<%@ include file="Header.html" %>


	<h2 align="center" >Welcome To The Administratration Of Website </h2>
	<br>
	<br>
		<ul align="center">
			<li><a href="hotels"><button>Hotels</button></a></li>
			<br>
			<li><a href ="add"><button>Add Hotels</button></a></li>
			<br>
			<li><a href ="rooms"><button>View Rooms</button></a></li>
			<br>
			<li><a href="users"><button>View Users</button></a></li>
			<br>
			<li><a href="customers"><button>View Customers</button></a></li>
			<br>
			<li><a href="bookings"><button>view Bookings</button></a></li>
			
			
		</ul>
		<%@ include file="footer.html" %>
		
</body>
</html>