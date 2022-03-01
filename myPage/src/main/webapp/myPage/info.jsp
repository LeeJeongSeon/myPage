<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SWUP_수프</title>
<%@ include file="myInclude/header.jsp" %>
<script type="text/javascript">
var address1="${path}/swup_page/";
var address2="${path}/swup_member/";

$(function(){
	$("#btnMain").click(function() {
		location.href=address1+"main.do";
	});
	$("#btnInfo").click(function() {
		if($("#passwd").val()=="") {
			alert("비밀번호는 필수 입력사항입니다.");
			$("#passwd").focus();
			return;
		}
		if($("#name").val()=="") {
			alert("이름은 필수 입력사항입니다.");
			$("#name").focus();
			return;
		}
		if($("#email").val()=="") {
			alert("이메일은 필수 입력사항입니다.");
			$("#email").focus();
			return;
		}
		
		var param="userid="+$("#userid").val()+"&passwd="+$("#passwd").val()
		+"&name="+$("#name").val()+"&email="+$("#email").val()+"&introduce="+$("#introduce").val();
		
		$.ajax({
			type : "post",
			url : address2+"edit.do",
			data : param,
			success: function(result){
				$("#result").html(result);
			}
		});
	});
	$("#btnDelete").click(function() {
		if(confirm("정말 탈퇴하시겠습니까?\n탈퇴 이후에는 되돌릴 수 없습니다.")) {
			location.href=address2+"delete.do?userid="+$("#userid").val();
		}
	});
});
</script>
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
	padding-top: 100px;
	padding-bottom: 100px;
	width: 100%;
	text-align: center;
}
th {
padding: 10px 30px 10px 0;
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
	<div id="result"></div>
	<div class="btnToMain">
		<a href="#" class="navbar-brand" id="btnMain" style="font-size: 30px; color: #555">SWUP_수프</a>
	</div>
	<div class="container-fluid">
		<h1>Edit Information</h1>
		<h3 class="margin">회원 정보 변경 페이지입니다 (●'◡'●)</h3>
		<table align="center" class="margin">
			<tr>
				<th>ID</th>
				<td><input id="userid" name="userid" value="${sessionScope.userid}" disabled></td>
			</tr>
			<tr>
				<td colspan="2"><div id="result"></div></td>
			</tr>
			<tr>
				<th>PW</th>
				<td><input type="password" id="passwd" name="passwd" value="${sessionScope.passwd}"></td>
			</tr>
			<tr>
				<th>NAME</th>
				<td><input id="name" name="name" value="${sessionScope.name}"></td> 
			</tr>
			<tr>
				<th>EMAIL</th>
				<td><input id="email" name="email" value="${sessionScope.email}"></td> 
			</tr>
			<tr>
				<th>Introduce Your Self<br>
				(Can be Blank)</th>
				<td><textarea id="introduce" name="introduce">${sessionScope.introduce}</textarea></td> 
			</tr>
		</table>
		<button class="btn btn-lg margin" id="btnInfo">수정</button>
		<button class="btn btn-lg btn-danger margin" id="btnDelete">탈퇴</button>
	</div>
</body>
</html>