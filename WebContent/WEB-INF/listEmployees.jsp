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
		<title>Employees</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="styles.css" />
		<script>
			//if ( window.history.replaceState )
			if(<%request.getSession().getAttribute("role");%> == null)
			{
				//window.history.replaceState( null, null, window.location.href );
				window.history.replaceState( null, null, "${pageContext.request.contextPath}/index.jsp" );
			}
		</script>
		<style>
			table
			{
				width:100%;
			}
			table, th, td
			{
				border: 1px solid black;
				border-collapse: collapse;
			}
			th, td
			{
				padding: 15px;
				text-align: left;
			}
			#t01 tr:nth-child(even)
			{
				background-color: #aae6da;
			}
			#t01 tr:nth-child(odd)
			{
				background-color: #e4ebf2;
			}
			#t01 th
			{
				background-color: #3d4f61;
				color: white;	
			}
		</style>
	</head>
	<body>
		
			<div class="container" style="margin:10px;">
			<ul class="nav">
				<li class="nav-item">
					<a class="btn btn-primary " href="adminDashboard.spring">Home</a>	
				</li>
			</ul>
		</div>
		<div class="container">
			<h3 style="text-align:center;margin:20px;color:#210b63;font-family:sans-serif">View All Employees Details</h3>
			<table id="t01">
				<tr>
					<th>Employee ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Date of Birth</th>
					<th>Email</th>
					<th>Department</th>
				</tr>
				<core:forEach items="${sessionScope.allEmployeesDetails}" var="employee">
					<tr>
						<td>${employee.empid}</td>
						<td>${employee.firstname}</td>
						<td>${employee.lastname}</td>
						<td>${employee.dob}</td>
						<td>${employee.email}</td>
						<td>${sessionScope.allDepartmentsDetails.get(employee.department_id)}</td>
					</tr>
				</core:forEach>
			</table>
		</div>
	</body>
</html>