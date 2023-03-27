<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fruity Loops</title>

<link rel="stylesheet" type ="text/css" href="/css/style.css">
<script type="text/javascript" src="/js/app.js"></script>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container">
		<h1 class="center">Fruit Store</h1>
		<div class="fruit_table">
			<table class="table">
		  		<thead>
			    	<tr class="table">
				      	<th scope="col">Name</th>
				      	<th scope="col">Price</th>
			    	</tr>
			  	</thead>
			  	<tbody>
			  		<c:forEach var="fruit" items="${fruit}">
				    	<tr>
				    		<td>${fruit.name}</td>
				    		<td>${fruit.price}</td>
				    	</tr>
			  		</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>