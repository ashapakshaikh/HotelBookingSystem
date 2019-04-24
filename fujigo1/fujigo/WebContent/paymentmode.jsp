<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment Mode</title>

<link rel="stylesheet" href="Styles/Payment.css">
<style>
body{
	background-image: linear-gradient(-225deg, #2CD8D5 0%, #C5C1FF 56%, #FFBAC3 100%);
}
</style>
</head>
<body>
	<%@ include file="Header.html" %>
<form action="paymentaddform.jsp">
<fieldset>
<h2>Select Payment Option</h2>
  <input type="radio" name="paymentMode" value="ATM" id="myCheckBox" required> ATM<br>
  <input type="radio" name="paymentMode" value="DebitCard" id="myCheckBox"> DebitCard<br>
  <input type="radio" name="paymentMode" value="NetBanking" id="myCheckBox"> NetBanking<br>
  <br>
  
<h2>Other Payment options</h2>
	
	<a href="https://www.bhimupi.org.in/" name="upi">UPI</a><br>
	
	<h2>Wallets</h2>
	<a href="https://paytm.com/" name="paytm">Paytm</a><br>
	
	<a href="https://pay.google.com/intl/en_in/about/?gclid=Cj0KCQjwyoHlBRCNARIsAFjKJ6DLtIcGkGkwyaS1j0S6GMFchAVLC3C_eP9LqGjelr_2aSWQZeUXpsoaAsL4EALw_wcB" name="GooglePay">GooglePay</a>
    <br>
    
	<a href="https://www.phonepe.com/en/" >PhonePe</a>
	<br>
	
	<br>
</fieldset>
   <center>
<table>
<tr>
<td><a href="paymentaddform.jsp?payMode=${payMode}"><input type="submit"></a></td>
<td><button type="reset">Cancel</button></td>
 </tr>
</table>
</center>  
   
    
</form> 
<%@ include file="footer.html" %>
</body>
</html>