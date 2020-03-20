<%@page import="java.util.*"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- for admin password= admin
for user password = user -->

<c:set var="flag" scope="session" value="${param.password}" />
<%
	List<String> fruits = new ArrayList<String>();
	fruits.add("Mango");
	fruits.add("Apple");
	fruits.add("Lichi");
	fruits.add("Banana");
	session.setAttribute("fruits", fruits);
%>
 

<c:redirect url="next.jsp" />