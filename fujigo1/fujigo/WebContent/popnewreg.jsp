<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>POPUPFORM</title>
</head>
<body>
	<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="styles/popcss.css"></link>
<type="text/css">
<title>popup form</title>
<style>
body{
	background-image: linear-gradient(-225deg, #2CD8D5 0%, #C5C1FF 56%, #FFBAC3 100%);
}
</style>

</head>
<body >
	<%@ include file="Header.html" %>

	<form action="login.jsp"></form>
	<h2>${message}</h2>
	<h1>Thank you !!</h1>
	<h1 style="text-align: center;">Registration is Successful....</h1>
	<div class="box">
		<a class="button" href=" ">Login</a>
	</div>
	<div id="popup1" class="overlay">
		<div class="popup">
			<h2>Please Login</h2>
			<a class="close" href="#">×</a>
			<div class="content"></div>
		</div>
	</div>
	<%@ include file="footer.html" %>
</body>
</html>


