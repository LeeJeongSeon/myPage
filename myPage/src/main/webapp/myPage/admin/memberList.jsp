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
<h3 align="center" style="padding: 10px 0; margin-bottom: 20px; background-color: #555; color: #fff;">회원 목록 페이지입니다.</h3>
<table style="width: 100%">
	<tr>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>이메일</th>
		<th>인사말</th>
		<th>관리자</th>
	</tr>
	<c:forEach var="dto" items="${list}">
		<tr>
			<td>${dto.userid}</td>
			<td>${dto.passwd}</td>
			<td>${dto.name}</td>
			<td>${dto.email}</td>
			<td>${dto.introduce}</td>
			<td>
				<c:choose>
					<c:when test="${dto.admin=='true'}">O</c:when>
					<c:otherwise>X</c:otherwise>
				</c:choose>
			</td>
		</tr>
	</c:forEach>
</table>
<%@ include file="../myInclude/adminFooter.jsp" %>
</body>
</html>