<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Users</title>
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
			 <th>UserId</th><th></th>
			 <th>UserName</th><th></th>
			 <th>Password</th><th></th>
			  <th>Role</th>
			  </tr>
			<c:forEach var="u" items="${sessionScope.userList}">
			
			<tr>
				<td>${u.userId}</td><td></td>
				<td>${u.userName}</td><td></td>
				<td>${u.password}</td><td></td>				
				<td>${u.role}</td><td></td>
				<%-- <td>${u.confirmPass }</td> --%>
				
				<td><a href="edituser?userId=${u.userId}&userName=${u.userName}&password=${u.password}&role=${u.role}">Edit </a></td>
				<td><a href="deleteuser?userId=${u.userId}&userName=${u.userName}&password=${u.password}&role=${u.role}">Delete</a></td>
				
			</tr>
			</c:forEach>
			</table>	
			
		<%@ include file="footer.html" %>			
</body>


</html>			
			
			
			
			
