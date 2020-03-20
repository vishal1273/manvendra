<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var="num1" value="${param.fnum}" scope="session"></c:set>
<c:set var="num2" value="${param.snum}"></c:set>
<c:set var ="total" value="${num1+num2}"></c:set>

<c:out value="${'Sum of'}"></c:out>
<c:out value="${num1}"></c:out> and
<c:out value="${num2}"></c:out>
<c:out value="${total}"></c:out>
<hr>

<c:remove var="total" />
<c:out value="${'Sum of'}"></c:out>
<c:out value="${num1}"></c:out> and
<c:out value="${num2}"></c:out>
<c:out value="${total}"></c:out>
 
</body>
</html>