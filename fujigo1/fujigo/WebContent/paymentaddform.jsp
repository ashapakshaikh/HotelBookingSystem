<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="Styles/Payment.css">
<script type="text/javascript" src="Script/PaymentValidationForm.js"></script>

<script>
function myFunction() {
document.getElementById('pDate').value= Date();
}
</script>
<style>
body{
	background-image: linear-gradient(-225deg, #2CD8D5 0%, #C5C1FF 56%, #FFBAC3 100%);
}
</style>

</head>
<body onload="myFunction()">
	<%@ include file="Header.html" %>

<fieldset>
<h2>${productadderror}</h2>
<form name="addForm" action="addpayment" method="post" onsubmit="return validatePaymentForm()">

<table>

<tr><td><input type="hidden" name="paymentMode" id="myCheckBox" value="${param.paymentMode}" readonly size="50"></td></tr>



<tr><td>Payment Amount</td></tr>
<tr><td><input type="text" name="amount" id="payAmt" size="50"></td></tr>


<tr><td>Name on Card</tr>
<tr><td><input type="text" name="cardholderName" id="nmCard" placeholder="Enter Name..." ></td></tr>

 

<tr><td> Card Number</td></tr>
<tr><td><input type="number" name="cardNumber" id="cNo" placeholder="Enter Card Number..."><td></tr>

</table>

<table>
<tr>
<td>Expiery Date</td>
<td>CVV</td>
</tr>

<tr>
<td><input type="date" name="expieryDate" id="eDate"></td>
<td><input type="number" name="cardNo" id="cvv" placeholder="Enter CVV..." ></td>
</tr>
</table>



</fieldset>

<center>
<table>
<tr>
<td><input type="Submit" value="Submit"></td>
<td><input type="reset" value="Reset"></td>
<td><input type="button" value="Cancel"></td>
</tr>
</table>
</center>

</form>
<%@ include file="footer.html" %>
</body>
</html>