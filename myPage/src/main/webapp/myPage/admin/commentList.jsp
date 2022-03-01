<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SWUP_Admin</title>
<%@ include file="../myInclude/header.jsp" %>
</head>
<body>
<%@ include file="../myInclude/adminNav.jsp" %>
<h3 align="center" style="padding: 10px 0; margin-bottom: 20px; background-color: #555; color: #fff;">댓글 목록 페이지입니다.</h3>
<table style="width: 100%">
	<tr>
		<th>댓글번호</th>
		<th>아이디</th>
		<th>이름</th>
		<th>내용</th>
		<th>게시물번호</th>
		<th>등록일</th>
	</tr>
	<c:forEach var="dto" items="${list3}">
		<tr>
			<td>${dto.num}</td>
			<td>${dto.userid}</td>
			<td>${dto.name}</td>
			<td>${dto.content}</td>
			<td>${dto.post_num}</td>
			<td><fmt:formatDate value="${dto.reg_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
		</tr>
	</c:forEach>
</table>
<%@ include file="../myInclude/adminFooter.jsp" %>
</body>
</html>