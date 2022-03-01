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
<h3 align="center" style="padding: 10px 0; margin-bottom: 20px; background-color: #555; color: #fff;">게시판 목록 페이지입니다.</h3>
<table style="width: 100%">
	<tr>
		<th>게시글 번호</th>
		<th>아이디</th>
		<th>제목</th>
		<th>내용</th>
		<th>게시일</th>
		<th>조회수</th>
		<th>회원ip주소</th>
		<th>파일명</th>
		<th>파일크기</th>
		<th>파일 다운로드수</th>
		<th>추천수</th>
		<th>수정여부</th>
	</tr>
	<c:forEach var="dto" items="${listAdmin}">
		<tr>
			<td>${dto.num}</td>
			<td>${dto.userid}</td>
			<td>${dto.subject}</td>
			<td>${dto.content}</td>
			<td><fmt:formatDate value="${dto.reg_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
			<td>${dto.readcount}</td>
			<td>${dto.ip}</td>
			<td>${dto.filename}</td>
			<td>${dto.filesize}</td>
			<td>${dto.downcount}</td>
			<td>${dto.recommendcount}</td>
			<td>${dto.edited}</td>
		</tr>
	</c:forEach>
</table>
<%@ include file="../myInclude/adminFooter.jsp" %>
</body>
</html>