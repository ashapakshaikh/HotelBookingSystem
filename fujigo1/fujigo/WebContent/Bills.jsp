<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bill</title>
</head>
<body>
<table>

<tr>
<th>Bill Id</th>
<th>TotalAmt</th>
<th>BillDate</th>
</tr>
<%-- <td> ${bill.billId}  </td>
		<td> ${bill.total_amt} </td>
		<td> ${bill.bill_date}</td>
		<td> ${bill.paymentId} </td>	 --%>
  
  <c:forEach var="b" items="${sessionScope.billList }">		
	
	<tr>
		<td> ${b.billId}  </td>
		<td> ${b.total_amt} </td>
		<td> ${b.bill_date}</td>
	</tr>  
	</c:forEach>


</table>

</body>
</html>