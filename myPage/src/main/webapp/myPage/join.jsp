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
	$("#btnCheckId").click(function() {
		if($("#userid").val()=="") {
			alert("아이디를 입력한 후 중복확인 해주세요!");
		}
		
		$.ajax({
			type: "post",
			url: address2+"checkId.do",
			data: "userid="+$("#userid").val(),
			success: function(result){
				$("#result").html(result);
			}
		});
	});
	$("#btnJoin").click(function() {
		if($("#userid").val()=="") {
			alert("아이디는 필수 입력사항입니다.");
			$("#userid").focus();
			return;
		}
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
		+"&name="+$("#name").val()+"&email="+$("#email").val()+"&introduce="+"."+$("#introduce").val();
		
		$.ajax({
			type : "post",
			url : address2+"join.do",
			data : param,
			success: function(result){
				$("#result").html(result);
			}
		});
	});
	$("#btnLogin").click(function() {
		location.href=address1+"login.do";
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
	<div class="btnToMain">
		<a href="#" class="navbar-brand" id="btnMain" style="font-size: 30px; color: #555">SWUP_수프</a>
	</div>
	<div class="container-fluid">
		<h1 class="margin">Join</h1>
		<table align="center" class="margin">
			<tr>
				<th>ID</th>
				<td><input id="userid" name="userid"></td> 
				<td style="padding-left: 30px">
					<button type="button" class="btn btn-lg" id="btnCheckId">중복확인</button>
				</td>
			</tr>
			<tr>
				<td colspan="3"><div id="result"></div></td>
			</tr>
			<tr>
				<th>PW</th>
				<td><input type="password" id="passwd" name="passwd"></td>
			</tr>
			<tr>
				<th>NAME</th>
				<td><input id="name" name="name"></td> 
			</tr>
			<tr>
				<th>EMAIL</th>
				<td><input id="email" name="email"></td> 
			</tr>
			<tr>
				<th>Introduce Your Self<br>
				(Can be Blank)</th>
				<td><textarea id="introduce" name="introduce"></textarea></td> 
			</tr>
		</table>
		<button class="btn btn-lg margin" id="btnJoin">Enter</button>
		<div class="bottom">
			<h4>이미 가입하셨나요? <a href="#" class="btn btn-lg btn-default" id="btnLogin">Login</a></h4>
		</div>
	</div>
</body>
</html>