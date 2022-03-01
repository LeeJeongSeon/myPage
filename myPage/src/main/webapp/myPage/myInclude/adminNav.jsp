<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SWUP_Include</title>
<%@ include file="header.jsp" %>
<style type="text/css">
a, a:visited {
color: #555;
}
</style>
</head>
<body>
	<table style="width: 100%; margin: 20px 0; text-align: center; font-size: 25px; background: #eee;">
		<tr>
			<td style="padding: 10px 0"><a href="${path}/swup_page/admin.do">관리자 메인</a></td>
			<td><a href="${path}/swup_member/list.do">회원 목록</a></td>
			<td><a href="${path}/swup_post/adminList.do">게시판 목록</a></td>
			<td><a href="${path}/swup_comment/adminList.do">댓글 목록</a></td>
			<td><a href="${path}/swup_ask/list.do">문의 내역</a></td>
			<td><a href="${path}/swup_page/main.do">서비스 페이지로 돌아가기</a></td>
		</tr>
	</table>
</body>
</html>