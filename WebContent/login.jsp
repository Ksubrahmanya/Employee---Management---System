<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Employee Management System - Login</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link href="styles.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<div class="container" style="border: 2px solid #66a7ba; padding: 30px; margin: 30px;">
			<form action="loginCheck.spring" method="post">
				<div class="form-group" style="position: relative; top: -10px">
					<label for="userid" style="color:#210b63;font-family: Georgia, serif;">Username</label>
					<input type="text" class="form-control" id="userid" name="userid" style="background-color:#e4f0eb" placeholder="Enter UserID" required>
				</div>
				<div class="form-group" style="position: relative; top: 0px">
					<label for="password"  style="color:#210b63;font-family: Georgia, serif;">Password</label>
					<input name="password" type="password" class="form-control" id="password" style="background-color:#e4f0eb"  placeholder="Enter Secret Key" required>
				</div>
				<div style="position: relative; top: 20px; ">
					<input type="submit" class="btn btn-primary " value="Sign In"/>
				</div>
			</form>
			<div style="position: relative; top: 25px">
				<span style="color: red">${requestScope.msg}</span>
			</div>
		</div>
	</body>
</html>