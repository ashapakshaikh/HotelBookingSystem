  function loginValidateForm() {
        var un = document.login.userName.value;
        var pw = document.login.password.value;
        var username = "userName"; 
        var password = "password";
        if ((un == userName) && (pw == password)) {
            alert("Login is Successful!!")
        	return true;
        }
        else {
            alert ("Login was unsuccessful, please check your username and password");
            return false;
        }
  }

  