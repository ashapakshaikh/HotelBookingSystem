<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.b1{
	background-image: linear-gradient(-225deg, #2CD8D5 0%, #C5C1FF 56%, #FFBAC3 100%);
}
</style>

</head>
<body class="b1">

	<%@ include file="Header.html" %>
 <center><h1>Payment Successful...!!!</h1></center>
 
 Your Payment Id is ${param.paymentId}
 
 Do you want to view bill?
 <a href="bills">Yes</a>
 <button>No</button>
 
 <%@ include file="footer.html" %>
</body>
</html>