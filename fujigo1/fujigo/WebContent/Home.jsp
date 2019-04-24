<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fujigo</title>
<link rel="Stylesheet" type="text/css" href="styles/Home.css">
<link rel="Stylesheet" type="text/css" href="styles/headfoot.css">
<script type="text/javascript" src="scripts/preScripts/angular.min.js" ></script>
<style>
.b1{
background-image: linear-gradient(to right, #ffc3a0 0%, #ffafbd 100%);
</style>
</head>
<body class="b1">

	<%@ include file="Header.html" %>
<form action="search" method="post">	
	<div id="d1">
		<table align="center">
			<tr>
			<div align="center"><img alt="" src="Hlogo.png"></div>
			
			</tr>
			<tr>
				<td id="i1"><input class="inp" type="search" name="city"
					placeholder="Enter City"> 
				<!-- <input class="inp" type="search"
					placeholder="Enter Locality"> -->
		 		 <button class="srchButton"  type="submit">Search</button></td>

			</tr>
		</table>
	</div>
	</form>
	
	<br>
<%@ include file="footer.html" %>
</body>
</html>