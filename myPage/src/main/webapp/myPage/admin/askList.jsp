<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SWUP_Admin</title>
<%@ include file="../myInclude/header.jsp" %>
<style type="text/css">
input {
width: 23px; 
height: 25px; 
padding: 0;
}
</style>
</head>
<body>
<%@ include file="../myInclude/adminNav.jsp" %>
<h3 align="center" style="padding: 10px 0; margin-bottom: 20px; background-color: #555; color: #fff;">문의 내역 페이지입니다.</h3>
<table style="width: 100%">
	<tr>
		<th>번호</th>
		<th>아이디</th>
		<th>제목</th>
		<th>내용</th>
		<th>날짜</th>
		<th>항목</th>
		<th>중요도</th>
	</tr>
	<c:forEach var="dto" items="${list4}">
		<tr>
			<td>${dto.num}</td>
			<td>${dto.userid}</td>
			<td>${dto.subject}</td>
			<td>${dto.content}</td>
			<td><fmt:formatDate value="${dto.ask_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
			<td>${dto.target}</td>
			<td>
				<c:if test="${dto.target=='questions'}"><input type="color" disabled value="#00ff00"></c:if>
				<c:if test="${dto.target=='report'}"><input type="color" disabled value="#ff0000"></c:if>
				<c:if test="${dto.target=='thanks'}"><input type="color" disabled value="#ffbbbb"></c:if>
				<c:if test="${dto.target=='ads'}"><input type="color" disabled value="#ffff00"></c:if>
			</td>
		</tr>
	</c:forEach>
</table>
<%@ include file="../myInclude/adminFooter.jsp" %>
</body>
</html>