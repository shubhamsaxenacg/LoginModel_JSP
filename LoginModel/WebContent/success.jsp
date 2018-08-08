<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<jstl:if test='${sessionScope.username!=null}'>
	<body>
		<div>
			<jsp:include page="header.jsp"></jsp:include>
		</div>
		<div align="center">
			<h3 style="color: green">Hello ${sessionScope.username}</h3>
			<h3 style="color: green">You have successfully logged in...</h3>
		</div>
		<div>
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</body>
</jstl:if>
<jstl:if test='${sessionScope.username==null}'>
	<jstl:redirect url="login.jsp"></jstl:redirect>
</jstl:if>
</html>