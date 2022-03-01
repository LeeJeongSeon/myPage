<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="my_page.dto.MyMemberDTO"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>SWUP_수프</title>
<%@ include file="myInclude/header.jsp" %>
<script type="text/javascript">
var address="${path}/swup_page/";
var address2="${path}/swup_ask/";

function btnTop() {
	var btnTop = "<a href='#top' class='btn btn-default btn-lg'>"+
	"<span class='glyphicon glyphicon-arrow-up'></span>Top</a>"
	document.getElementById("btnTopField").innerHTML=btnTop;
}

$(function() {
	$("#btnRead").click(function() {
		location.href=address+"read.do";
	});
	$("#btnPost").click(function() {
		location.href="${path}/swup_post/list.do";
	});
	$("#btnLogin").click(function() {
		location.href=address+"login.do";
	});
	$("#btnLogout").click(function() {
		location.href="${path}/swup_member/logout.do";
	});
	$("#btnJoin").click(function() {
		location.href=address+"join.do";
	});
	$("#btnAdmin").click(function() {
		location.href=address+"admin.do";
	});
	$("#btnAskQ").click(function() {
		location.href=address2+"question.do";
	});
	$("#btnAskR").click(function() {
		location.href=address2+"report.do";
	});
	$("#btnAskT").click(function() {
		location.href=address2+"thanks.do";
	});
	$("#btnAskA").click(function() {
		location.href=address2+"ads.do";
	});
	$("#btnInfo").click(function() {
		location.href=address+"info.do";
	});
});

function winOpen() {
	if(${sessionScope.popuped==null}) {	
		window.open("${path}/myPage/popup.jsp", "_blank", "width=310, height=280");
	}
}
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
.margin {
	margin-bottom: 45px;
}
.no_margin {
	margin: 0;
}
.bg-1 {
	background-color: #47d1d1;
	color: #ffffff;
}
.bg-2 {
	background-color: #474e5d;
	color: #ffffff;
}
.bg-3 {
	background-color: #ffffff;
	color: #555555;
}
.bg-4 {
	background-color: #d6f5f5;
	color: #555555;
}
.bg-5 {
	background-color: #ffe6e6;
	color: #555555;
}
.bg-6 {
	background-color: #2f2f2f;
	color: #fff;
}
.container-fluid {
	padding-top: 100px;
	padding-bottom: 100px;
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
.left {
float: left;
width: 80%;
}
.right {
float: right;
width: 20%;
}
.bottom {
clear: both;
}
</style>
</head>
<body onscroll="btnTop()" onload="winOpen()">
	<%
	MyMemberDTO dto=(MyMemberDTO)session.getAttribute("dto");
	%>
	<nav class="navbar navbar-default" id="top" style="padding: 30px 0px;">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<c:choose>
						<c:when test="${sessionScope.userid != null}">
							<span class="icon-bar"></span>
							<c:if test="${sessionScope.userid == 'admin'}">
								<span class="icon-bar"></span>
							</c:if>
						</c:when>
						<c:otherwise>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</c:otherwise>
					</c:choose>
				</button>
				<a class="navbar-brand" style="font-size: 30px">SWUP_수프</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right" style="font-size: 20px">
					<c:choose>
						<c:when test="${sessionScope.userid != null}">
							<li><a href="#" id="btnLogout">LOGOUT</a></li>
							<c:if test="${sessionScope.admin == 'true'}">
								<li><a href="#" id="btnAdmin">ADMIN</a></li>
							</c:if>
						</c:when>
						<c:otherwise>
							<li><a href="#" id="btnLogin">LOGIN</a></li>
							<li><a href="#" id="btnJoin">JOIN</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</nav>
	
	<div class="left">
		<div class="container-fluid bg-1 text-center">
			<h1 class="margin">Start-Up With Particular_</h1>
			<img src="../images_for_myPage/helper.jpg" class="img-responsive img-circle 
			margin" style="display: inline" alt="Helper" width="350" height="350">
			<h3>수프와 함께하는 특별한 창업 준비</h3>
			<h5>시작하려면 버튼을 클릭해주세요!</h5>
			<a href="#" class="btn btn-default btn-lg margin" id="btnRead"> <span
				class="glyphicon glyphicon-tasks"></span> Let's Go
			</a>
			<p>창업에 대한 관심은 나날이 높아져가고 있습니다.<br>
			그러나 시작할 때 대부분 막막함을 느낍니다.</p>
			<p>해당 웹은 창업을 시작하는 분들의 막막함을 덜어내고자 만들어졌습니다.<br>
			창업에 대한 다양한 정보를 제공합니다.</p>
			<p>하단에 창업을 하기 위해 꼭 알아야 하는 항목들이 있습니다.<br>
			유익한 정보가 되기를 바랍니다.</p>
		</div>
	
		<div class="container-fluid bg-2 text-center">
			<h1 class="margin">Share with_</h1>
			<img src="../images_for_myPage/friends.jpg" class="img-responsive img-circle 
			margin" style="display: inline" alt="Friends" width="350" height="350">
			<h3>모두와 함께하는 특별한 창업 준비</h3>
			<h5>시작하려면 버튼을 클릭해주세요!</h5>
			<a href="#" class="btn btn-default btn-lg margin" id="btnPost"> <span
				class="glyphicon glyphicon-edit"></span> Let's Go
			</a>
			<p>다른 사람들과 정보를 공유해보세요! <br>
			댓글을 달고 질문하거나 덧붙여보는 건 어떨까요?</p>
			<p>게시판을 통해 소통할 수 있습니다. <br>
			1:1 채팅 기능도 준비되어 있어요!</p>
			<p class="margin">혼자 고민하는 것보다 빨리 해결될지 몰라요 :)</p>
		</div>
	
		<div class="container-fluid bg-3 text-center">
			<h1>Ask To Us_</h1>
			<p class="margin">문의 사항이 있으신가요?</p>
			<div class="row">
				<div class="col-sm-4 margin">
					<p>게시물 관련 문의</p>
					<a href="#" class="btn btn-default btn-lg btn-primary" id="btnAskQ"> <span
						class="glyphicon glyphicon-send"></span> Questions
					</a>
				</div>
				<div class="col-sm-4 margin">
					<p>신고 사항</p>
					<a href="#" class="btn btn-default btn-lg btn-danger" id="btnAskR"> <span
						class="glyphicon glyphicon-alert"></span> Report
					</a>
				</div>
				<div class="col-sm-4 margin">
					<p>서비스 후기</p>
					<a href="#" class="btn btn-default btn-lg btn-success" id="btnAskT"> <span
						class="glyphicon glyphicon-thumbs-up"></span> Thanks
					</a>
				</div>
			</div>
			<h4>여러분의 의견이 큰 힘이 됩니다 :)</h4>
		</div>
	</div>
	
	<div class="container-fluid bg-4 text-center right">
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
							<a href="#" class="btn btn-default" id="btnInfo"> <span
							class="glyphicon glyphicon-home"></span> My Info
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
	
	<div class="container-fluid bg-5 text-center right">
		<p>If you want to put ADS</p>
		<p>Plz click this</p>
		<div class="margin">
			<a href="#" class="btn btn-default btn-lg" id="btnAskA"> 
				<span class="glyphicon glyphicon-blackboard"></span> ADS
			</a>
		</div>
		<div class="ads-fluid bg-3 margin">
			<h2>ADS</h2>
		</div>
		<div class="ads-fluid bg-3 margin">
			<h2>ADS</h2>
		</div>
		<div class="ads-fluid bg-3 margin">
			<h2>ADS</h2>
		</div>
	</div>
	
	<div style="position: fixed; bottom: 10px; right: 10px;" id="btnTopField"></div>
	<footer class="bg-6 text-center bottom" style="padding: 50px 0px;">
		<p>&copy;SWUP</p>
	</footer>
</body>
</html>
