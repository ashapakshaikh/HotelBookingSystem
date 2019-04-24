<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payments</title>

<style>
body{
	background-image: linear-gradient(-225deg, #2CD8D5 0%, #C5C1FF 56%, #FFBAC3 100%);
}
</style>
table{
 margin-left: 30px;
}
</style>
</head>
<body>
		<%@ include file="Header.html" %>
	<center><h3>Payment History</h3>	</center>	
<table border=1>
	<tr><th>Payment Id</th>
	<th>PaymentMode</th>
	<th>Amount</th>
	<th>Customer Name</th>
	<th>Card Number</th>
	<th>ExpieryDate</th>
	<th>PaymentDate</th>
	</tr>	

 <c:forEach var="p" items="${sessionScope.paymentList}">	
	
	<tr>
		<td> ${p.paymentId} </td>
		<td> ${p.paymentMode} </td>
		<td> ${p.amount} </td>
		<td> ${p.cardholderName} </td>
		<td> ${p.cardNumber} </td>
		<td> ${p.expieryDate} </td>
		<td> ${p.paymentDate} </td>
	</tr>
				
</c:forEach>				
			
</table>
			<%@ include file="footer.html" %>
</body>
</html>