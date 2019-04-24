function validateUserForm()
{
var userId=document.getElementById("uid").value;
var userName=document.getElementById("unm").value;
var role=document.getElementById("url").value;
var password=document.getElementById("ups").value;
var confirmPassword=document.getElementById("uconp").value;



if(userId==null || userId==""){
	window.alert("User Id can not be empty.!")
	return false;
}

if(userName==null || userName=="")
	{
	window.alert(" User Name can not be empty.!")
	
	return false;
	}

if(password==null || password=="")
{
window.alert(" Password can not be empty.!")

return false;
}

if(confirmPassword==null || confirmPassword=="")
{
window.alert(" Password Confirmation can not be empty.!")

return false;
}

if(role==null || role=="")
	{
	window.alert("User Role can not be empty.!")
	
	return false;
	}

	return true;


}