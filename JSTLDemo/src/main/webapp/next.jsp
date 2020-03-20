<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:if test="${flag=='admin'}">
	<%-- Admin is currently logged in --%>
	<a href="${pageContext.request.contextPath}/index.jsp">Home</a> | <a>User
		List</a> | <a href="#">Logout</a>
	<table>
		<tr>
			<th>S.No</th>
			<th>Name of Fruit</th>
		</tr>
		<c:forEach var="f" items="${sessionScope.fruits}" varStatus="c">
			<tr>
				<td>${c.count}</td>
				<td>${f}</td>
			</tr>
		</c:forEach>
	</table>
</c:if>
<c:if test="${empty flag}">
	Please Enter password
	<c:import url="index.jsp" />
</c:if>
<c:if test="${flag=='user'}">
	<%-- User is currently logged in --%>
	<a href="${pageContext.request.contextPath}/index.jsp">Home</a> |
	<a href="#">Add Contact</a> | <a href="#">Contact List</a> | <a
		href="#">Logout</a>
</c:if>
