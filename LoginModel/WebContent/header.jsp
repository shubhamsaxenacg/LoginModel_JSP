<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.foot {
	background-color: grey;
	color: white;
}
</style>
<body>
	<div class="foot" align="center">
		<h1>MyDOCS Login Page</h1>
	</div>

	<jstl:if test='${sessionScope.username!=null}'>
		<h4>Welcome ${sessionScope.username}</h4>
		<div align="right">
			<h3>
				<a href="logout.app">Logout</a>
			</h3>
		</div>
	</jstl:if>

</body>
</html>