<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Registration</title>
<script type="text/javascript" src="script/custvalidate.js"></script>
<style>
body{
	background-image: linear-gradient(-225deg, #2CD8D5 0%, #C5C1FF 56%, #FFBAC3 100%);
}
</style>
</head>
<body>
	<%@ include file="Header.html" %>
	<div class="card"
		style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2); max-width: 700px; margin: auto; text-align: center; font-family: arial; background-color: Gray;">
		<form name="addForm" action="addCustomer" method="post"
			onsubmit="return customerValidateForm()">
				<br>
				<h2>${customeradderror}</h2>
				<td><h3>REGISTRATION FORM</h3></td>
				<table align="center" cellpadding="10">

					<!----- Customer Name ---------------------------------------------------------->
					<tr>
						<td>Customer Name</td>
						<td><input type="text" name="customer_Name" maxlength="30">
						</td>
					</tr>
					<!----- Age -------------------------------------------------------->
					<tr>
						<td>Age</td>
						<td><input type="number" name="age" maxlength="4"></td>
					</tr>
					<!----- Email Id ---------------------------------------------------------->
					<tr>
						<td>EMAIL ID</td>
						<td><input type="email" name="email_Id"></td>
					</tr>
					<!----- Country Code -------------------------------------------------------->
					<tr>
						<td>COUNTRY CODE</td>
						<td><select name="country_Code" id="country_Code">
								<option data-countryCode="IN" value="+91">India (+91)</option>
								<option data-countryCode="USA" value="+1">USA(+1)</option>
								<option data-countryCode="Mexico" value="+52">Mexico(+52)</option>
								<option data-countryCode="China" value="+86">China(+86)</option>
								<option data-countryCode="japan" value="+81">japan(+81)</option>
								<!----- Mobile Number ---------------------------------------------------------->
								<td>MOBILE NUMBER</td>
								<td><input type="tel" pattern="[0-9]{10}"
									name="mobile_Number" maxlength="10"></td>
						</select></td>
					</tr>
					<!----- Gender ----------------------------------------------------------->
					<tr>
						<td>GENDER</td>
						<td>Male<input type="radio" name="gender" value="male" />
							Female<input type="radio" name="gender" value="female" /> Other<input
							type="radio" name="gender" value="other" />
						</td>
					</tr>
					<!----- Address ---------------------------------------------------------->
					<tr>
						<td>ADDRESS <br /> <br /> <br /></td>
						<td><textarea name="address" rows="4" cols="30"></textarea></td>
					</tr>
					<!----- City ---------------------------------------------------------->
					<tr>
						<td>CITY</td>
						<td><input type="text" name="city" maxlength="30" /></td>
					</tr>
					<!----- Pin Code ---------------------------------------------------------->
					<tr>
						<td>PIN CODE</td>
						<td><input type="text" name="zip" maxlength="6" /></td>
					</tr>
					<!----- State ---------------------------------------------------------->
					<tr>
						<td>STATE</td>
						<td><input type="text" name="state" maxlength="30" /></td>
					</tr>
					<!----- Country ---------------------------------------------------------->
					<tr>
						<td>COUNTRY</td>
						<td><input type="text" name="country"></td>
					</tr>
					<!----- Id Type ----------------------------------------------------------->
					<tr>
						<td>ID TYPE</td>
						<td>Adhaar Card <input type="radio" name="id_Type"
							value="Adhaar Card" /> Pan Card <input type="radio"
							name="id_Type" value="Pan Card " /> OTHER <input type="text"
							name="id_Type" />
						</td>
						<br>
						<br>
						<td>ID NUMBER</td>
						<td>Number <input type="TEXT" name="id_No" />
					</tr>
					<!----- Nationality ----------------------------------------------------------->
					<tr>
						<td>Nationality</td>
						<td><input type="text" name="nationality"></td>
					</tr>
					<!----- Submit and Reset ------------------------------------------------->
					<tr>
						<td colspan="2" align="center"><input type="submit"
							value="submit"> <input type="reset"
							value="Reset"></td>
					</tr>
				</table>
			</form>
		</form>
	</div>
	<%@ include file="footer.html" %>
</body>
</html>