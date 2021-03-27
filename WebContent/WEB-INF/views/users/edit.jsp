<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Sửa Admin</title>
<base href="${pageContext.servletContext.contextPath}/">
<style type="text/css">
.ip {
	display: flex;
}

.ip label {
	width: 10%;
	margin-right: 30px;
	padding: 6px;
	margin-bottom: 10px;
}

.ip input {
	width: 500px;
	padding: 10px;
	margin-bottom: 10px;
}

h1 {
	color: purple;
}
</style>
</head>
<body>
		<h1>SỬA ADMIN</h1>
		<div style="color: red">${message}</div>
		<form:form action="users/edit/${id_User}.htm" modelAttribute="user" method="post">
			<div class="ip">
				<label> ID Admin </label> <input value="${user.id_User}" name="id_User" />
				<form:errors path="id_User" />
			</div>
			<br>
			<div class="ip">
				<label> Email </label> <input value="${user.username}"
					name="username"/>
				<form:errors path="username" />
			</div>
			<br>
			<div class="ip">
				<label> Password </label> <input value="${user.password}"
					name="password"/>
				<form:errors path="password" />
			</div>
			<br>
			<div>
				<div style="margin-left: 170px; margin-top: 10px;">
					<button type="submit" class="btn btn-default">Update</button>

					<button type="button" class="btn btn-defaut">
						<a href="http://localhost:9999/PTITHCMDA/users/index.htm"
							style="text-decoration: none;">Thoát</a>
					</button>
				</div>
		</form:form>
</body>
</html>