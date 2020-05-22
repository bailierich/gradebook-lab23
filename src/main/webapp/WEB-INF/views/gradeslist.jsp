<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Grades</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
<div class="container">
		<h1>Gradebook</h1>
		<table class="table">
			<thead>
				<tr>
					<th>Name</th><th>Type</th><th>Score</th><th>Total</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="grade" items="${grades}" >
				<tr>
					<td><a href="LINK TO DETAIL HERE"><c:out value="${grade.name}"></c:out></a></td>
					<td><c:out value="${grade.type}"></c:out></td>
					<td><fmt:formatNumber value = "${grade.score}" pattern = "##.#"></fmt:formatNumber></td>
					<td>${grade.total}</td>
					<td><a href="/grades/delete?id=${grade.id}" class="btn btn-secondary">Delete</a></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<c:if test="${grades = null}">
		<h3><c:out value="There are no grades available to view"></c:out></h3>
		</c:if>
		<a href="/grades/add" class="btn btn-secondary">Add Grade</a>
	</div>
</body>
</html>