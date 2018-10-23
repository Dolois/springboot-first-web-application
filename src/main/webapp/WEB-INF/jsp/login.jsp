<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="description" content="">
    <meta name="author" content=""> -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link	rel="stylesheet"
			href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
			integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
			crossorigin="anonymous">
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">

    <title>First Web Application</title>
  </head>
  
  <body>
	<font color="red">${errorMessage}</font>
    
	<form class="form-signin" method="post" onsubmit="return validate()" style='margin-left: 35vw;'>
		<h1 class="h3 mb-3 font-weight-normal">Login</h1>
		
		<label for="inputName" class="sr-only">Name</label> <input
			type="name" id="inputName" class="form-control"
			placeholder="Nom" required="" autofocus="" name="name">
        
        <label for="inputPassword" class="sr-only">Password</label> <input
			type="password" id="inputPassword" class="form-control"
			placeholder="Mot de passe" required="" name="password">
        
		<label> <input type="checkbox" value="remember-me">Se souvenir de moi</label>
				
		<div class="checkbox mb-3">
		<button class='btn btn-outline-success btn-lg font-weight-bold text-white' style='background-color: #9cd9b6'
			type="submit">Se connecter</button>
	</form>
	
  </body>
</html>