<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<title >Employee Management System - Admin Home</title>
		<link rel="stylesheet"
				href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
				integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
				crossorigin="anonymous" /> 
		<link rel="stylesheet" type="text/css" href="styles.css" />

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
		<h2 style="text-align:center;margin-top:10px;color:#210b63;font-family:sans-serif">Employee Management System - Admin Home</h2>
		<hr />
		<h4 style="position: relative; left: 10px;color:#210b63">Departments</h4>
		<ul class="nav" style="position: relative;background-color:#e4f0eb">
			<li class="nav-item">
				<a class="nav-link" href="createDepartment.spring">Add Department</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="viewDepartmentsDetails.spring">List Department Names</a>
			</li>
		</ul>
		<h4 style="position: relative; margin-top:10px;margin-left:10px;color:#210b63">Employees</h4>
		<ul class="nav" style="position: relative;background-color:#e4f0eb">
			<li class="nav-item">
				<a class="nav-link" href="addEmployeeDetails.spring">Add Employee Information</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="viewEmployeesDetails.spring">List All Employees</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="inputEmployeeId.spring">Update Employee Details</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="deleteEmployeeDetails.spring">Delete Employee Details</a>
			</li>
		</ul>
		<h4 style="position: relative; margin-top:10px;margin-left:10px;color:#210b63">Regulations</h4>
		<ul class="nav" style="position: relative;background-color:#e4f0eb">
			<li class="nav-item">
				<a class="nav-link" href="createCompliance.spring">Add Regulation</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="viewCompliancesDetails.spring"">View Regulations</a>
			</li>
		</ul>
		<h4 style="position: relative; margin-top:10px;margin-left:10px;color:#210b63">Compliance Tracking</h4>
		<ul class="nav" style="position: relative;background-color:#e4f0eb">
		 
			<li class="nav-item">
				<a class="nav-link" href="viewStatusReportsDetails.spring">Show Status</a>
			</li>
		</ul>
		<hr />
		<a class="btn btn-primary" href="logout.spring" style="position: relative;margin-left: 20px;">Logout</a>
		<div style="position: relative;">
			<span style="color: red">${requestScope.msg}</span>
		</div>
	</body>
</html>