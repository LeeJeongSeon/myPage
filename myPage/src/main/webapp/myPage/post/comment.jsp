<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>SWUP_수프</title>
<%@ include file="../myInclude/header.jsp"%>
<style type="text/css">
body {
	font: 20px Montserrat, sans-serif;
	line-height: 1.8;
	color: #f5f6f7;
}

p {
	font-size: 16px;
}

h1 {
	font-weight: bold;
}

.post th, .post td {
padding: 5px 10px;
}

.post thead td {
width: 200px;
}

.margin {
	margin-bottom: 45px;
}

.margin-all h3, .margin-all h4, .margin-all hr {
	margin-bottom: 45px;
}

.bg-1 {
	background-color: #47d1d1;
	color: #ffffff;
}

.bg-3 {
	background-color: #ffffff;
	color: #555555;
	border-radius: 20px;
	padding: 15px;
	font-size: 15px;
}

.bg-4 {
	background-color: #e1f6f6;
	color: #555555;
}

.bg-5 {
	background-color: #ffe6e6;
	color: #555555;
}

.bg-6 {
	background-color: #2f2f2f;
	color: #fff;
	clear: both;
}

.container-fluid {
	padding-top: 50px;
	padding-bottom: 80px;
}

.nav-fluid {
	padding: 40px;
}

.navbar {
	padding-top: 15px;
	padding-bottom: 15px;
	border: 0;
	border-radius: 0;
	margin-bottom: 0;
	font-size: 12px;
	letter-spacing: 5px;
}

.navbar-nav  li a:hover {
	color: #1abc9c !important;
}

#btn2, #btn4 {
display: none;
}
</style>
</head>
<body>
	<table style="width: 90%;" align="center">
		<tr>
			<td colspan="2"><hr></td>
		<tr>
		<c:forEach var="row" items="${list2}">
			<tr>
				<td>${row.content}</td>
				<td align="right"><fmt:formatDate value="${row.reg_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
			</tr>
			<tr>
				<td colspan="2" align="right">작성자 ${row.name}</td>
			</tr>
			<c:if test="${row.userid==sessionScope.userid}">
				<tr>
					<td align="center" colspan="2">
						<a href="${path}/swup_comment/delete.do?num=${row.num}&post_num=${row.post_num}" class="btn btn-default" onclick="alert('삭제되었습니다.')">삭제하기</a>						
					</td>
				</tr>
			</c:if>
			<tr>
				<td colspan="2"><hr></td>
			<tr>
		</c:forEach>
	</table>
</body>
</html>