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
	var address1="${path}/swup_page/";
	var address2="${path}/swup_member/";
	$("#btnMain").click(function() {
		location.href=address1+"main.do";
	});
	$("#btnLogin").click(function() {
		location.href=address1+"login.do";
	});
	$("#btnLogout").click(function() {
		location.href=address2+"logout.do";
	});
	$("#btnJoin").click(function() {
		location.href=address1+"join.do";
	});
	$("#btnAdmin").click(function() {
		location.href=address2+"list.do";
	});
	$("#btnInfo").click(function() {
		location.href=address1+"info.do";
	});
	$("#btnWrite").click(function() {
		location.href="${path}/swup_post/write.do";
	});
});

function list(page) {
	location.href = "${path}/swup_post/list.do?curPage="+page;
}
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

.bg-1 th {
border-top: 2px solid gray;
border-bottom: 2px solid gray;
text-align: center;
}

.bg-1 td {
border-top: 1px solid #ddd;
border-bottom: 1px solid #ddd;
}

a, a:hover, a:focus {
color: #666666;
text-decoration: none;
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
				<a href="#" class="navbar-brand" id="btnMain" style="font-size: 30px">SWUP_수프</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right" style="font-size: 20px">
					<c:choose>
						<c:when test="${sessionScope.userid != null}">
							<li><a href="#" id="btnLogout">LOGOUT</a></li>
							<c:if test="${sessionScope.userid == 'admin'}">
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
	<div>
		<div class="container-fluid bg-1 col-sm-10">
			<h1>Post_</h1>
			<h4><b>게시판에서 서로의 정보를 공유하세요!</b></h4>
			<hr>
			<div class="bg-3">
				<form action="${path}/swup_post/search.do" name="form1" method="post">
					<div style="float: left">
						제목검색
						<input name="keyword" size="30">
					</div>
					<div style="float: right" class="margin">
						<select name="array">
							<option value="num desc">최신순</option>
							<option value="num">날짜순</option>
							<option value="readcount desc">조회순</option>
							<option value="recommendcount desc">추천순</option>
						</select>
						<button class="btn btn-default">확인</button>
						<c:if test="${sessionScope.userid != null}">
							<a href="#" class="btn btn-default" id="btnWrite">글쓰기</a>
						</c:if>
					</div>
				</form>
				<div style="clear: both;">
					<table align="center" style="width: 100%">
						<tr class="bg-4">
							<th style="width: 10%">번호</th>
							<th style="width: 55%">제목[댓글]</th>
							<th style="width: 15%">게시일</th>
							<th style="width: 10%">조회수</th>
							<th style="width: 10%">추천수</th>
						</tr>
						<c:forEach var="row" items="${list}">
							<tr align="center">
								<td>${row.num}</td>
								<td style="text-align: left; padding-left: 10px;">
									<a href="${path}/swup_post/view.do?num=${row.num}">
										${row.subject} <c:if test="${row.edited=='Y'}">(수정)</c:if> 
										[${row.commentcount}]
									</a>
								</td>
								<td><fmt:formatDate value="${row.reg_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
								<td>${row.readcount}</td>
								<td>${row.recommendcount}</td>
							</tr>
						</c:forEach>
						<tr align="center">
							<td colspan="6" style="border-bottom: 2px solid gray;">
								<c:if test="${page.curPage > 1 }">
									<a href="#" onclick="list('1')">[처음]</a>
								</c:if>
								<c:if test="${page.curBlock > 1 }">
									<a href="#" onclick="list('${page.prevPage}')">[이전]</a>
								</c:if>
								<c:forEach var="num" begin="${page.blockStart}" end="${page.blockEnd}">
									<c:choose>
										<c:when test="${num == page.curPage}">
											<span style="color: blue;">${num}</span>
										</c:when>
										<c:otherwise>
											<a href="#" onclick="list('${num}')">${num}</a>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<c:if test="${page.curBlock < page.totBlock}">
									<a href="#" onclick="list('${page.nextPage}')">[다음]</a>
								</c:if>
								<c:if test="${page.curPage < page.totPage}">
									<a href="#" onclick="list('${page.totPage}')">[끝]</a>
								</c:if>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<hr>
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
	</div>
	<div style="position: fixed; bottom: 10px; right: 10px;" id="btnTopField"></div>
	<footer class="bg-6 text-center bottom" style="padding: 50px 0px;">
		<p>&copy;SWUP</p>
	</footer>

</body>
</html>