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
	$("#btnLogin").click(function() {
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
		
		var param="userid="+$("#userid").val()+"&passwd="+$("#passwd").val();
		
		$.ajax({
			type : "post",
			url : address2+"login.do",
			data : param,
			success: function(result){
				$("#result").html(result);
			}
		});
	});
	$("#btnFindId").click(function() {
		var email=prompt("가입할 때 입력한 이메일을 입력하세요", "");
		
		$.ajax({
			type: "post",
			url: address2+"findId.do",
			data: "email="+email,
			success: function(result){
				$("#result").html(result);
			}
		});
	});
	$("#btnFindPw").click(function() {
		var userid=prompt("가입할 때 입력한 아이디를 입력하세요", "");
		
		$.ajax({
			type: "post",
			url: address2+"findPw.do",
			data: "userid="+userid,
			success: function(result){
				$("#result").html(result);
			}
		});
	});
	$("#btnJoin").click(function() {
		location.href=address1+"join.do";
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
	<div class="btnToMain">
		<a href="#" class="navbar-brand" id="btnMain" style="font-size: 30px; color: #555">SWUP_수프</a>
	</div>
	<div class="container-fluid">
		<h1 class="margin">Log-in</h1>
		<table align="center" class="margin">
			<tr>
				<th>ID</th>
				<td><input id="userid" name="userid"></td> 
			</tr>
			<tr>
				<th>PW</th>
				<td><input type="password" id="passwd" name="passwd"></td>
			</tr>
			<tr>
				<td colspan="2"><div id="result"></div></td>
			</tr>
		</table>
		<button class="margin btn btn-lg" id="btnLogin">Enter</button>
		<div class="bottom">
			<div class="margin">
				<h4>아이디가 기억이 안날 땐 <a href="#" class="btn btn-lg btn-default" id="btnFindId">Find ID</a></h4>
				<h4>비밀번호가 기억이 안날 땐 <a href="#" class="btn btn-lg btn-default" id="btnFindPw">Find PW</a></h4> 
			</div>
			<h4>아직 가입하지 않으셨나요? <a href="#" class="btn btn-lg btn-default" id="btnJoin">Join</a></h4>
		</div>
	</div>
</body>
</html>