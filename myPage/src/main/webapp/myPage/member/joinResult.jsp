<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SWUP_수프</title>
<%@ include file="../myInclude/header.jsp"%>
<style type="text/css">
body {
	font: 20px Montserrat, sans-serif;
	line-height: 1.8;
	color: #555;
	background-color: #f8f8f8;
}
h1 {
font-weight: bold;
font-size: 40pt;
}
h4 {
display: inline;
}
button {
background-color: #bbb;
color: white;
}
.margin {
	margin-bottom: 40px;
}
.container-fluid {
	padding-top: 150px;
	padding-bottom: 100px;
	width: 100%;
	text-align: center;
}
th {
padding: 20px 30px 20px 0;
}
.bottom {
width: 98%;
text-align: center;
}
.btnToMain {
position: absolute;
left: 30px;
top: 10px; 
border-radius: 10px;
}
#result {
font-size: 15px;
color: blue;
}
</style>
</head>
<body>
	<c:choose>
		<c:when test="${sessionScope.checked == 'true'}">
			<script type="text/javascript">
			alert("가입에 성공하여 로그인 화면으로 이동합니다!");
			location.href="${path}/swup_page/login.do";
			</script>	
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
			alert("중복확인 절차가 생략되거나 중복된 아이디입니다.");
			</script>		
		</c:otherwise>
	</c:choose>


</body>
</html>