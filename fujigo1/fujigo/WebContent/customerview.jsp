<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customers</title>
<style>
body{
	background-image: linear-gradient(-225deg, #2CD8D5 0%, #C5C1FF 56%, #FFBAC3 100%);
}
</style>
</head>
<body>
	<%@ include file="Header.html"%>
	<table>
		<tr>
			<th>customer_Id</th>
			<th>customer_Name</th>
			<th>country_Code</th>
			<th>PhoneNo</th>
			<th>email</th>
			<th>Address</th>
			<th>city</th>
			<th>state</th>
			<th>country</th>
			<th>zip</th>
			<th>Age</th>
			<th>Gender</th>
			<th>Id_Type</th>
			<th>Id_No</th>
			<th>Nationality</th>
		</tr>
		<c:forEach var="c" items="${sessionScope.customerList}">
			<tr>
				<td>${c.customer_Id}</td>
				<td>${c.customer_Name}</td>
				<td>${c.country_Code}</td>
				<td>${c.phone_No}</td>
				<td>${c.email_Id}</td>
				<td>${c.address}</td>
				<td>${c.city}</td>
				<td>${c.state}</td>
				<td>${c.country}</td>
				<td>${c.zip}</td>
				<td>${c.age}</td>
				<td>${c.gender}</td>
				<td>${c.id_Type}</td>
				<td>${c.id_No}</td>
				<td>${c.nationality}</td>
				<td><a href="editcust?customer_Id=${c.customer_Id}&customer_Name=${c.customer_Name}&country_Code=${c.country_Code}&phone_No=${c.phone_No}&email_Id=${c.email_Id}&address=${c.address}&city=${c.city}&state=${c.state}&country=${c.country}&zip=${c.zip}&age=${c.age}&gender=${c.gender}&id_Type=${c.id_Type}&id_No=${c.id_No}&nationality=${c.nationality}">Edit</a></td>
				<td><a href="deletecust?customer_Id=${c.customer_Id}&customer_Name=${c.customer_Name}&country_Code=${c.country_Code}&phone_No=${c.phone_No}&email_Id=${c.email_Id}&address=${c.address}&city=${c.city}&state=${c.state}&country=${c.country}&zip=${c.zip}&age=${c.age}&gender=${c.gender}&id_Type=${c.id_Type}&id_No=${c.id_No}&nationality=${c.nationality}">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
	<%@ include file="footer.html"%>
</body>
</html>