<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SWUP_수프</title>
<%@ include file="../myInclude/header.jsp" %>
<script type="text/javascript">
if(${sessionScope.userid==null}) {
	if (confirm("로그인 하지 않으면 관리자에게 익명으로 문의내용이 전달됩니다.\n로그인하시겠습니까?")) {
		location.href="${path}/swup_page/login.do";
	}	
}

$(function() {
	var address="${path}/swup_ask/";
	$("#btnMain").click(function() {
		location.href="${path}/swup_page/main.do";
	});
	$("#btnAskQ").click(function() {
		location.href=address+"question.do";
	});
	$("#btnAskT").click(function() {
		location.href=address+"thanks.do";
	});
	$("#btnAskA").click(function() {
		location.href=address+"ads.do";
	});
	$("#btnSubmit").click(function() {
		if($("#subject").val()=="") {
			alert("제목은 필수 입력사항입니다.");
			$("#subject").focus();
			return;
		}
		if($("#content").val()=="") {
			alert("내용은 필수 입력사항입니다.");
			$("#content").focus();
			return;
		}
		
		var param="subject="+$("#subject").val()+"&content="+$("#content").val()+"&target=report";
		
		$.ajax({
			type : "post",
			url : "${path}/swup_ask/insert.do",
			data : param,
			success: function(){
				alert("문의 사항이 접수되었습니다. \n답변은 게시판에 올라갑니다!");
				location.href="${path}/swup_page/main.do";
			}
		});
	});
	
});
</script>
<style type="text/css">
body {
	font: 20px Montserrat, sans-serif;
	line-height: 1.8;
	color: #f5f6f7;
	background-color: #f8f8f8;
}
p {
	font-size: 16px;
}
h1 {
font-weight: bold;
}
td {
padding: 5px 0px;
}
hr {
border-color: #fff;
}
.margin {
	margin-bottom: 45px;
}
.no_margin {
	margin: 0;
}
.bg-3 {
	background-color: #ffffff;
	color: #555555;
	border-radius: 20px;
	padding: 15px;
	font-size: 15px;
}
.bg-5 {
	background-color: #ff6666;
	color: #fff;
}
.bg-6 {
	background-color: #2f2f2f;
	color: #fff;
}
.container-fluid {
	padding: 50px 60px 80px 60px;
}
.ads-fluid {
	padding-top: 100px;
	padding-bottom: 100px;
	border-radius: 10px;
	border: 3px double #ccc;
}
.navbar {
	padding-top: 15px;
	padding-bottom: 15px;
	border: 0;
	border-radius: 0;
	margin-bottom: 0;
	font-size: 12px;
	letter-spacing: 5px;
}
.navbar-nav  li a:hover {
	color: #1abc9c !important;
}
</style>
</head>
<body>
	<nav class="navbar navbar-default" id="top" style="padding: 30px 0px;">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand" id="btnMain" style="font-size: 30px">SWUP_수프</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right" style="font-size: 20px">
					<li><a href="#" id="btnAskQ">QUASTIONS</a></li>
					<li><a>REPORT</a></li>
					<li><a  id="btnAskT">THANKS</a></li>
					<li><a  id="btnAskA">ADS</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container-fluid bg-5">
		<h1>ASK_Report</h1>
		<h4><b>신고 관련 페이지입니다</b></h4>
		<hr>
		<div class="bg-3">
			<table align="center" style="width: 90%;">
				<tr>
					<td>제목</td>
					<td><input style="width: 100%" id="subject"></td>
				</tr>
				<tr>
					<td colspan="2">
						<textarea rows="15" style="width: 100%" placeholder="문의내용을 여기에 입력해주세요" id="content"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<a href="#" class="btn btn-lg btn-danger" id="btnSubmit">제출</a>
					</td>
				</tr>
			</table>
		</div>
		<hr>
		<h4><b>감사합니다.</b></h4>
	</div>
	<footer class="bg-6 text-center bottom" style="padding: 50px 0px;">
		<p>&copy;SWUP</p>
	</footer>
</body>
</html>