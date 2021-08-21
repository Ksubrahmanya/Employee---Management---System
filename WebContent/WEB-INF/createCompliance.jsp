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
		<title>Create Compliance</title>
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
		<div class="container" style="margin:10px;">
			<ul class="nav">
				<li class="nav-item">
					<a class="btn btn-primary " href="adminDashboard.spring">Home</a>	
				</li>
			</ul>
		</div>
		<div class="container" style="border: 2px solid #66a7ba; padding: 30px; margin: 30px;">
			<form action="storeComplianceInformation.spring" method="post">
				<!-- <div class="form-group" style="position: relative; top: 0px"> -->
				<div class="form-group" style="margin: 10px;">
					<label for="rltype" style="color:#210b63;font-family: Georgia, serif;">Regulation Type</label>
					<input name="rltype" type="text" class="form-control" id="rltype" maxlength="15" required>
				</div>
				<div class="form-group" style="margin: 10px;">
					<label for="details" style="color:#210b63;font-family: Georgia, serif;">RL Description</label>
					<input name="details" type="text" class="form-control" id="details" maxlength="250" required>
				</div>
				<div class="form-group" style="margin: 10px;">
					<label for="createdate" style="color:#210b63;font-family: Georgia, serif;">Date of RL Creation</label>
					<input name="createdate" type="date" class="form-control" id="createdate" required>
				</div>
				<div class="form-group" style="margin: 10px;">
					<label for="department_id" style="color:#210b63;font-family: Georgia, serif;">Department </label>
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