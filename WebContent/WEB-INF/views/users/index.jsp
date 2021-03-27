<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<base href="${pageContext.servletContext.contextPath}/">
<title>Danh sách Sản Phẩm</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link
	href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css"
	rel="stylesheet" type="text/css">
<style type="text/css">
<
script src ="templates /libs /jquery /jquery-3.5.1.min.js "> </script> <style type
	="text /css ">.panel-table .panel-body {
	padding: 0;
}

.panel-table .panel-body .table-bordered {
	border-style: none;
	margin: 0;
}

.panel-table .panel-body .table-bordered>thead>tr>th:first-of-type {
	text-align: center;
	width: 100px;
}

.panel-table .panel-body .table-bordered>thead>tr>th:last-of-type,
	.panel-table .panel-body .table-bordered>tbody>tr>td:last-of-type {
	border-right: 0px;
}

.panel-table .panel-body .table-bordered>thead>tr>th:first-of-type,
	.panel-table .panel-body .table-bordered>tbody>tr>td:first-of-type {
	border-left: 0px;
}

.panel-table .panel-body .table-bordered>tbody>tr:first-of-type>td {
	border-bottom: 0px;
}

.panel-table .panel-body .table-bordered>thead>tr:first-of-type>th {
	border-top: 0px;
}

.panel-table .panel-heading .col h3 {
	line-height: 30px;
	height: 30px;
}

.panel-table .panel-body .table-bordered>tbody>tr>td {
	line-height: 34px;
}

h1 {
	text-align: center;
	color: blue;
}

.view {
	max-width: 60%;
	max-height: 70%;
	width: auto;
	height: auto;
}

.tdHinh {
	width: 70px;
}
</style>
<form:form action="users/insert.htm" method="get">
	<div class="container">
		<ul class="breadcrumb">
			<li><a href="http://localhost:9999/PTITHCMDA/users/index.htm">USERS</a>
				<span class="divider">/</span></li>
			<li><a href="http://localhost:9999/PTITHCMDA/sanpham/index.htm">SẢN
					PHẨM</a></li>
		</ul>
		<h1>DANH SÁCH ADMIN</h1>
		<div class="container">
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="panel panel-default panel-table">
						<div class="panel-heading">
							<div class="row">
								<div class="col col-xs-6">
									<h3 class="panel-title">Danh sách Admin</h3>
								</div>
								<div class="col col-xs-6 text-right">
									<button type="submit" class="btn btn-sm btn-primary btn-create">Thêm
										mới</button>
									<button type="button" class="btn btn-defaut">
										<a href="trangchu.htm">Thoát</a>
									</button>
								</div>
							</div>
						</div>
						<div class="panel-body">
							<table class="table table-striped table-bordered table-list">
								<thead>
									<tr>
										<th><em class="fa fa-cog"></em></th>
										<th>ID Admin</th>
										<th>Email</th>
										<th>Password</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="u" items="${user}">
										<tr>
											<td align="center"><a href="users/edit/${u.id_User}.htm"
												class="btn btn-default"><em class="fa fa-pencil"></em></a> <a
												href="users/delete/${u.id_User}.htm" class="btn btn-danger"><em
													class="ion-close-round"></em></a></td>
											<td>${u.id_User}</td>
											<td>${u.username}</td>
											<td>${u.password}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>

</form:form>
</body>
</html>