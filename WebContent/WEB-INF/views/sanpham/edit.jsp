<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Sửa Sản Phẩm</title>
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
*[id$=errors] {
	color: red;
	font-style: italic;
}
</style>
</head>
<body>
	<h1>SỬA SẢN PHẨM</h1>
	<div style="color: red">${message}</div>
	<form:form action="sanpham/edit/${idSP}.htm" modelAttribute="sanpham" method="post" enctype="multipart/form-data">
		<div class="ip">
			<label> ID Sản Phẩm </label> <input value="${sanpham.idSP}"
				name="idSP" />
			<form:errors path="idSP" />
		</div>
		<br>
		<div class="ip">
			<label>Tên Sản Phẩm</label> <input value="${sanpham.tenSP}"
				name="tenSP" />
			<form:errors path="tenSP" />
		</div>
		<br>
		<div class="ip">
			<label>Giá</label> <input value="${sanpham.gia}" name="gia" />
			<form:errors path="gia" />
		</div>
		<br>
		<div class="ip">
			<label>Số lượng</label> <input value="${sanpham.soLuong}"
				name="soLuong" />
			<form:errors path="soLuong" />
		</div>
		<br>
		<div class="ip">
			<label>Hình ảnh</label>  <input type="file" name="photo"/>
			<form:errors path="hinhSP" />
		</div>
		<br>
		<div class="ip">
			<label>Mô tả</label> <input value="${sanpham.moTa}" name="moTa" />
			<form:errors path="moTa" />
		</div>
		<br>
		<div>
			<div style="margin-left: 170px; margin-top: 10px;">
				<button type="submit" class="btn btn-default">Update</button>

				<button type="button" class="btn btn-defaut">
					<a href="http://localhost:9999/PTITHCMDA/sanpham/index.htm"
						style="text-decoration: none;">Thoát</a>
				</button>
			</div>
	</form:form>
</body>
</html>