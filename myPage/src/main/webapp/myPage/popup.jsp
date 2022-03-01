<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SWUP_POPUP</title>
<%@ include file="myInclude/header.jsp" %>
<style type="text/css">
div {
margin: 30px;
border-radius: 20px;
background-color: #fff;
width: 250px;
height: 210px;
padding: 10px;
}
</style>
</head>
<body style="background-color: #eeffee">
<%
session.setAttribute("popuped", "Y");
%>
	<div>
		<h3 align="center">💌환영합니다💌</h3>
		<hr>
		<h4 align="center">본 페이지는 전체화면을 <br>권장하고 있습니다.</h4>
		<h4 align="center">이용에 참고 바랍니다!<br>오늘도 좋은하루 되세요💕</h4>
	</div>
</body>
</html>