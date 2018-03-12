<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"/>
</head>
<body>
	<h1>Listado de clientes</h1>
	<ul>
		<c:forEach items="${CLIENTES}" var="c">
			<li>${c.dni}.- ${c.nombre} ${c.apellidos} - ${c.saldo}</li>
		</c:forEach>
	</ul>
</body>
</html>