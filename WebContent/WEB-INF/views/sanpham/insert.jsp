<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<base href="${pageContext.servletContext.contextPath}/">
<title>Thêm Sản Phẩm</title>
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
*[id$=errors] {
	color: red;
	font-style: italic;
}
</style>
</head>
<body>
	<h1>THÊM SẢN PHẨM</h1>
	<div style="color: red">${message}</div>
	<form:form action="sanpham/insert.htm" modelAttribute="sanpham" method="post" enctype="multipart/form-data">
		<div class="ip">
			<label> ID Sản Phẩm </label>
			<form:input path="idSP" />
			<form:errors path="idSP" />
		</div>
		<div class="ip">
			<label>Tên Sản Phẩm</label>
			<form:input path="tenSP" />
			<form:errors path="tenSP" />
		</div>
		<div class="ip">
			<label>Giá</label>
			<form:input path="gia" />
			<form:errors path="gia" />
		</div>
		<div class="ip">
			<label>Số Lượng</label>
			<form:input path="soLuong" />
			<form:errors path="soLuong" />
		</div>
		<div class="ip">
			<%-- 			<label>Hình ảnh</label>
			<form:input path="hinhSP" />
			<form:errors path="soLuong" /> --%>
			<label>Hình ảnh</label> <input type="file" name="photo">
			<form:errors path="hinhSP" />
		</div>
		<div class="ip">
			<label>Mô tả</label>
			<form:input path="moTa" />
			<form:errors path="moTa" />
		</div>
		<div style="margin-left: 170px; margin-top: 10px;">
			<button type="submit" class="btn btn-default">Thêm mới</button>

			<button type="reset" class="btn btn-defaut">Nhập lại</button>

			<button type="button" class="btn btn-defaut">
				<a href="http://localhost:9999/PTITHCMDA/sanpham/index.htm"
					style="text-decoration: none;">Thoát</a>
			</button>
		</div>
	</form:form>
</body>
</html>