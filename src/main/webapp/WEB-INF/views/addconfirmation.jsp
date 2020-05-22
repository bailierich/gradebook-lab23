<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Grades</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
</head>
<body>
<div class="container">

<h1>Grade Added</h1>
<p>The grade was added to the database.</p>

<table class="table">
			<tr>
				<th scope="row">Name: </th>
				<td><c:out value="${name}"/></td>
			</tr>
			<tr>
				<th scope="row">Type: </th>
				<td><c:out value="${type}"/></td>
			</tr>
			<tr>
				<th scope="row">Score: </th>
				<td><fmt:formatNumber value = "${score}" pattern = "##.#"></fmt:formatNumber></td>
			</tr>
			<tr>
				<th scope="row">Total: </th>
				<td>${total}</td>
			</tr>
		</table>
		
</div>
<a href="/" class="btn btn-secondary">Back To Gradebook</a>
</body>
</html>