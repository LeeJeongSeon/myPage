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
		<h3 align="center">πνμν©λλ€π</h3>
		<hr>
		<h4 align="center">λ³Έ νμ΄μ§λ μ μ²΄νλ©΄μ <br>κΆμ₯νκ³  μμ΅λλ€.</h4>
		<h4 align="center">μ΄μ©μ μ°Έκ³  λ°λλλ€!<br>μ€λλ μ’μνλ£¨ λμΈμπ</h4>
	</div>
</body>
</html>