<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign In Page</title>
<style>
.forms {
	position: relative;
	top: 70px;
}

.button {
	padding: 10px;
}
</style>
</head>
<body>
	<div>
		<jsp:include page="header.jsp"></jsp:include>
	</div>
	<div class="forms" align="center">
		<form action="login.app" method="post">
			USERNAME: <input type="text" name="username" /><br> PASSWORD: <input
				type="password" name="password" /><br>
			<div class="button">
				<input type="submit" value="Sign In">
			</div>
		</form>
	</div>
	<div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>