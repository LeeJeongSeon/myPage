<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>SWUP_수프</title>
<%@ include file="../myInclude/header.jsp"%>
<script type="text/javascript">
function btnTop() {
	var btnTop = "<a href='#top' class='btn btn-default btn-lg'>"+
	"<span class='glyphicon glyphicon-arrow-up'></span>Top</a>"
	document.getElementById("btnTopField").innerHTML=btnTop;
}

$(function() {
	var address="${path}/swup_page/";
	$("#btnMain").click(function() {
		location.href=address+"main.do";
	});
	$("#btnPost").click(function() {
		location.href="${path}/swup_post/list.do";
	});
	$("#btnHome").click(function() {
		location.href=address+"home.do";
	});
	$("#btnWrite").click(function() {
		var subject = $("#subject").val();
		var content = $("#content").val();
		if (subject == "") {
			alert("제목을 입력하세요.");
			$("#subject").focus();
			return;
		}
		if (content == "") {
			alert("내용을 입력하세요.");
			$("#content").focus();
			return;
		}
		document.form1.submit();
	});
});
</script>
<style type="text/css">
body {
	font: 20px Montserrat, sans-serif;
	line-height: 1.8;
	color: #f5f6f7;
}

p {
	font-size: 16px;
}

h1 {
	font-weight: bold;
}

.bg-1 th,.bg-1 td {
padding: 10px;
}

.margin {
	margin-bottom: 45px;
}

.margin-all h3, .margin-all h4, .margin-all hr {
	margin-bottom: 45px;
}

.bg-1 {
	background-color: #47d1d1;
	color: #ffffff;
}

.bg-3 {
	background-color: #ffffff;
	color: #555555;
	border-radius: 20px;
	padding: 15px;
	font-size: 15px;
}

.bg-4 {
	background-color: #e1f6f6;
	color: #555555;
}

.bg-5 {
	background-color: #ffe6e6;
	color: #555555;
}

.bg-6 {
	background-color: #2f2f2f;
	color: #fff;
	clear: both;
}

.container-fluid {
	padding-top: 50px;
	padding-bottom: 80px;
}

.nav-fluid {
	padding: 40px;
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
<body onscroll="btnTop()">
	<nav class="navbar navbar-default" id="top" style="padding: 30px 0px;">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand" id="btnMain" style="font-size: 30px">SWUP_수프</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right" style="font-size: 20px">
					<li><a href="#" id="btnPost">POST_MAIN</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div>
		<div class="container-fluid bg-1 col-sm-10">
			<h1>Posting_</h1>
			<h4><b>게시판에서 서로의 정보를 공유하세요!</b></h4>
			<hr>
			<div class="bg-3">
				<form name="form1" method="post" enctype="multipart/form-data" action="${path}/swup_post/insert.do">
					<table style="width: 90%" align="center">
						<tr>
							<th>제목</th>
							<th><input style="width: 100%;" id="subject" name="subject"></th>
						</tr>
					</table>
					<table style="width: 90%" align="center">
						<tr>
							<td colspan="2">
								<textarea rows="15" style="width: 100%" placeholder="본문을 여기에 작성해주세요!" id="content" name="content"></textarea>
							</td>
						</tr>
						<tr>
							<td>
								<input type="file" name="file1" id="file1">
							</td>
							<td align="right">
								<a href="#" class="btn btn-default" id="btnWrite">등록</a>
							</td>
						</tr>
					</table>
				</form>
			</div>
			<hr class="margin">
		</div>
		<div class="container-fluid bg-5 col-sm-2" style="text-align: center;">
			<h3 class="margin">Welcome to SWUP_</h3>
			<c:if test="${sessionScope.userid != null}">
				<div id="profile" style="border: 5px soild #d6f5f5" class="margin" align="left">
					<img src="../images_for_myPage/person.png" width="100%">
					<table style="font-size: 11pt; width: 100%;">
						<tr>
							<td>이름</td>
							<td>${sessionScope.name}</td>
						</tr>
						<tr>
							<td>소개글</td>
							<td>${sessionScope.introduce}</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<a href="#" class="btn btn-default" id="btnHome"> <span
								class="glyphicon glyphicon-home"></span> My Page
								</a>
							</td>
						</tr>
					</table>
				</div>
			</c:if>
			<div class="bg-3">
				<img src="../images_for_myPage/img.PNG" width="100%" style="padding: 5% 0px">
			</div>
			<p class="margin">SWUP_수프가 <br><b>여러분을 응원합니다 :)</b></p>
			<h2>Guide</h2>
			<p>창업에 대한 정보 공유 페이지입니다.</p>
			<p>이미 공유된 정보를 얻을 수도<br>
			내가 아는 정보를 공유할 수도 있습니다. </p>
			<p class="margin">문제 사항은 건의를 함으로써 개선될 수 있습니다.</p>
			<p>이용해주셔서 감사합니다.</p>
		</div>
	</div>
	<div style="position: fixed; bottom: 10px; right: 10px;" id="btnTopField"></div>
	<footer class="bg-6 text-center bottom" style="padding: 50px 0px;">
		<p>&copy;SWUP</p>
	</footer>

</body>
</html>