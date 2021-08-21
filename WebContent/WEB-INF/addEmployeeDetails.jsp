<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<%
response.setHeader("Cache-Control","no-cache");
response.setHeader("Cache-Control","no-store");
response.setHeader("Pragma","no-cache");
response.setDateHeader ("Expires", 0);
if(session.getAttribute("userid")==null || session.getAttribute("role")==null)
{
	response.sendRedirect(request.getContextPath() + "/index.jsp");
}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Add Employee Details</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link href="styles.css" rel="stylesheet" type="text/css">
		<script>
			//if ( window.history.replaceState )
			if(<%request.getSession().getAttribute("role");%> == null)
			{
				//window.history.replaceState( null, null, window.location.href );
				window.history.replaceState( null, null, "${pageContext.request.contextPath}/index.jsp" );
			}
		</script>
	</head>
	<body>
		<!-- <h2>Add Employee Details<h2> -->
		<div class="container" style="margin:10px;">
			<ul class="nav">
				<li class="nav-item">
					<a class="btn btn-primary " href="adminDashboard.spring">Home</a>	
				</li>
			</ul>
		</div>
		<div class="container" style="border: 2px solid #66a7ba; padding: 30px; margin: 30px;">
			<form action="storeEmployeeDetails.spring" method="post">
				<!-- <div class="form-group" style="position: relative; top: 0px"> -->
				<div class="form-group" style="margin: 10px;">
					<label for="firstname" style="color:#210b63;font-family: Georgia, serif;">First Name</label>
					<input name="firstname" type="text" class="form-control" id="firstname" maxlength="45" required>
				</div>
				<div class="form-group" style="margin: 10px;">
					<label for="lastname" style="color:#210b63;font-family: Georgia, serif;">Last Name</label>
					<input name="lastname" type="text" class="form-control" id="lastname" maxlength="45" required>
				</div>
				<div class="form-group" style="margin: 10px;">
					<label for="dob" style="color:#210b63;font-family: Georgia, serif;">Date of Birth</label>
					<input name="dob" type="date" class="form-control" id="dob" required>
				</div>
				<div class="form-group" style="margin: 10px;">
					<label for="email" style="color:#210b63;font-family: Georgia, serif;">Email id</label>
					<input name="email" type="email" class="form-control" id="email" maxlength="100">
				</div>
				<div class="form-group" style="margin: 10px;">
					<label for="department_id" style="color:#210b63;font-family: Georgia, serif;">Department ID</label>
					<select name="department_id" class="form-control" id="department_id" required>
						<option disabled selected value> -- Choose from dropdown -- </option>
						<core:forEach items="${sessionScope.allDepartmentsDetails}" var="department">
							<option value=${department.department_id}>${department.department_nm}</option>
						</core:forEach>
					</select>
					<!-- <input name="department_id" type="text" class="form-control" id="department_id" required> -->
				</div>
				<div style="position: relative; top: 20px; margin: 10px;">
					<input type="submit" class="btn btn-primary " value="Submit"/>
				</div>
			</form>
		</div>
	</body>
</html>