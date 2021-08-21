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
		<title>Edit Employee Details</title>
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
			<form action="submitEmployeeId.spring" method="post">
				<div class="form-group" style="margin: 10px;">
					<label for="empid" style="color:#210b63;font-family: Georgia, serif;">Employee ID:</label>
					<input name="empid" type="text" class="form-control" id="empid" maxlength="10" required>
				</div>
				<div style="position: relative; top: 10px; margin: 10px;">
					<input type="submit" class="btn btn-primary " value="Proceed to Update"/>
				</div>
			</form>
		</div>
	</body>
</html>