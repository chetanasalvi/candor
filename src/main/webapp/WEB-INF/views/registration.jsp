<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html ng-app>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.7/angular.min.js"></script>

	<script type="text/javascript"
		src="http://documentcloud.github.com/underscore/underscore-min.js"></script>
	
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

	<title>Employee Registration Form</title>
	
	<style>
		.error {
			color: #ff0000;
		}
	</style>

</head>

<body>

	<h2>Registration Form</h2>

	<form:form method="POST" modelAttribute="employee">
		<form:input type="hidden" path="id" id="id" />
		<table>
			<tr>
				<td><label for="name">Name: </label></td>
				<td><form:input path="name" id="name" /></td>
				<td><form:errors path="name" cssClass="error" /></td>
			</tr>
			<tr>
				<td><label for="joiningDate">Joining Date: </label></td>
				<td><form:input path="joiningDate" id="joiningDate" /></td>
				<td><form:errors path="joiningDate" cssClass="error" /></td>
			</tr>

			<tr>
				<td><label for="salary">Salary: </label></td>
				<td><form:input path="salary" id="salary" /></td>
				<td><form:errors path="salary" cssClass="error" /></td>
			</tr>

			<tr>
				<td><label for="ssn">SSN: </label></td>
				<td><form:input path="ssn" id="ssn" /></td>
				<td><form:errors path="ssn" cssClass="error" /></td>
			</tr>

			<tr>
				<td colspan="3"><c:choose>
						<c:when test="${edit}">
							<input type="submit" value="Update" />
						</c:when>
						<c:otherwise>
							<input type="submit" value="Register" />
						</c:otherwise>
					</c:choose></td>
			</tr>
		</table>
	</form:form>
	<br />
	<h2>{{ngname}}</h2>
	<br /> Go back to
	<a href="<c:url value='/list' />">List of All Employees</a>
</body>
</html>