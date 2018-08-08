<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.button {
	padding: 10px;
}
</style>

<body>
	<div>
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	<div align="center">
		<h3 style="color: red">Invalid Username or password...</h3>
		<form action="login.jsp" method="post">
			<div class="button">
				<input type="submit" value="Go back to Login">
			</div>
		</form>
	</div>
	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>