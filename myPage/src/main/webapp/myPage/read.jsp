<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>SWUP_수프</title>
<%@ include file="myInclude/header.jsp"%>
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

#div1>.nav-tabs, #div4>.nav-tabs {
	border-bottom: 1px solid white;
}

.panel-title {
	font-size: 18px;
}

.light a {
	color: white;
}

.dark a {
	color: black;
}

.leftForDiv1 {
	float: left;
	width: 55%;
}

.rightForDiv1 {
	float: right;
	width: 35%;
}

.leftForDiv3 {
	float: left;
	width: 35%;
}

.rightForDiv3 {
	float: right;
	width: 60%;
}

#type th {
	border-right: 3px double #555555;
	padding-right: 15px;
	width: 10%;
}

#type td {
	text-align: left;
	padding-left: 15px;
	width: 90%;
}

.round {
	border-radius: 30px;
}

.site .list-group-item {
	font-size: 17px;
	padding: 5px 8px;
	text-align: left;
	color: #555555;
}

.site .title {
	font-size: 19px;
	text-align: center; 
	background-color: #9aa1b1; 
	color: #fff; 
}

@media screen and (min-width: 1400px) {
	#div4 img {
		width: 55%;
	}
	.site ul {
		width: 65%;
	}
}

@media screen and (min-width: 768px) and (max-width: 1399px) {
	#div4 img {
		width: 70%;
	}
	.site ul {
		width: 80%;
	}
}

@media screen and (max-width: 767px) {
	#div4 img {
		width: 85%;
	}
	#div4 .list-group-item {
		font-size: 15px;
	}
	.leftForUl {
		float: left;
		width: 48%;
	}
	.rightForUl {
		float: right;
		width: 48%;
	}
	.clearForBtn {
		clear: both;
	}
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
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a href="#" class="navbar-brand" id="btnMain" style="font-size: 30px">SWUP_수프</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right" style="font-size: 20px">
					<li><a href="#div1">PREPARE</a></li>
					<li><a href="#div2">KIND</a></li>
					<li><a href="#div3">ONLINE MARKET</a></li>
					<li><a href="#div4">PLATFORM</a></li>
					<li><a href="#div5">FROM</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="nav-fluid bg-1 text-center" id="div1">
		<ul class="nav nav-tabs light">
			<li class="active"><a data-toggle="tab" href="#first1">First of All</a></li>
			<li><a data-toggle="tab" href="#step1">Step 1</a></li>
			<li><a data-toggle="tab" href="#step2">Step 2</a></li>
			<li><a data-toggle="tab" href="#step3">Step 3</a></li>
			<li><a data-toggle="tab" href="#step4">Step 4</a></li>
			<li><a data-toggle="tab" href="#step5">Step 5</a></li>
			<li><a data-toggle="tab" href="#step6">Step 6</a></li>
			<li><a data-toggle="tab" href="#addition1">In Addition</a></li>
		</ul>

		<div class="container-fluid tab-content">
			<div id="first1" class="tab-pane fade in active">
				<h1 class="margin">Prepare with_</h1>
				<img src="../images_for_myPage/prepare.png" class="img-responsive img-circle margin" 
				style="display: inline" alt="Prepare" width="350" height="350">
				<h4>창업 전 꼭 알아두어야 할 <b>Basic Information</b>입니다.</h4>
				<h4>하나하나 꼼꼼하게 읽어보는 것을 추천드려요!</h4>
			</div>
			<div id="step1" class="tab-pane fade">
				<h1>Step 1</h1>
				<h3 class="margin">창업 준비와 아이템 선정</h3>
				<h4>창업자의 경력과 능력, 적성, 자금조달능력, 인맥 등 </h4>
				<h4 class="margin">창업하기 적합한 여건이 조성되었는지 살펴보고, 창업 여부를 결정합니다.</h4>
				<h4>이후 창업 아이템을 선정하는데, </h4>
				<h4>이때 무조건 돈을 많이 벌 수 있는 항목보다는 자신에게 적합한 업종이 좋습니다. </h4>
				<h4>경기변동에 따라 업종의 변화를 고려해야 하며, 성장률과 안전성도 반드시 비교하고 따져봐야 합니다.</h4>
			</div>
			<div id="step2" class="tab-pane fade">
				<h1>Step 2</h1>
				<h3 class="margin">자료 분석 및 교육</h3>
				<h4 class="margin">창업 아이템을 선정했다면 필요한 각종 자료를 수집하고 분석합니다. </h4>
				<h4>인터넷 혹은 창업관련 기관이나 박람회에서 자료를 얻을 수 있으며, </h4>
				<h4 class="margin">경우에 따라서는 기관을 직접 방문해 창업상담사와 상담, 교육을 통해 창업을 준비할 수도 있습니다.</h4>
				<h4 class="margin">하단의 창업을 준비하는데 도움이 될 사이트와 정보들을 살펴보세요!</h4>
				<div class="btn-group margin">
					<a href="https://job.seoul.go.kr/Main.do?method=getMain" 
					class="btn btn-default btn-lg" target="_blank">서울일자리플러스센터</a>
					<a href="https://www.sbiz.or.kr/sup/main.do" 
					class="btn btn-default btn-lg" target="_blank">소상공인 포털</a>
					<a href="https://www.k-startup.go.kr/main.do" 
					class="btn btn-default btn-lg" target="_blank">창업넷</a>
				</div>
				<div class="panel-group">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">
								<a data-toggle="collapse" href="#collapse1">창업기업 실태조사</a>
							</h3>
						</div>
						<div class="panel-body" style="color: #555555; text-align: left; font-size: 15px">
							<h4>본 실태조사에서 활용한 창업기업의 모집단은 설계시점의 통계청 통계기업등록부 기준으로 
							2011.01.01 이후부터 2017.12.31 이전에 창업한 기업을 모집단으로 설정하여 조사한 
							것입니다. </h4>
							<h4 class="margin">※ 제목을 클릭하면 세부사항이 나타납니다.</h4>
							<div id="collapse1" class="panel-collapse collapse">
								<div class="panel-group" id="accordion">
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a data-toggle="collapse" data-parent="#accordion"
													href="#collapse2"> 창업 실행 단계</a>
											</h4>
										</div>
										<div id="collapse2" class="panel-collapse collapse in">
											<div class="panel-body">
												<ul class="nav nav-tabs dark" style="font-size: 15px;">
													<li class="active"><a data-toggle="tab" href="#c2p1">창업 형태</a></li>
													<li><a data-toggle="tab" href="#c2p2">자금 원천</a></li>
													<li><a data-toggle="tab" href="#c2p3">기술 원천</a></li>
													<li><a data-toggle="tab" href="#c2p4">창업 입지</a></li>
												</ul>
												<div class="nav-fluid tab-content">
													<div id="c2p1" class="tab-pane fade in active">
														<ul>
															<li>창업 시 단독창업의 경우 95.3%로 나타났으며, 창업 시 평균 대표자 수는 1.1명으로 이 중
															남성이 0.6명, 여성이 0.5명으로 나타납니다.</li>
															<li>창업 동기는 '더 큰 경제적 수입을 위하여'가 50.3%로 가장 높게 나타났으며, '적성에 맞는
															일이기 때문에' 40.5%, '경제/사회 발전에 이바지하기 위하여' 36.3% 등의 순으로 나타납니다.</li>
														</ul>
													</div>
													<div id="c2p2" class="tab-pane fade">
														<ul class="leftForDiv1">
															<li>창업 시 소요자금은 평균 291만원으로 나타났고, 이 중 자기자금이 가장 높은 94.5%를 차지합니다.</li>						
														</ul>
														<img src="../images_for_myPage/2-1.PNG" width="100%" class="rightForDiv1">
														<ul class="leftForDiv1">
															<li>창업 이후 추가 필요자금 조달 방법은 자기자금이 가장 높은 88.1%로 나타났고, 다음으로 은행/비은행 
															대출 11.4%, 개인 간 차용 4.4%, 정부 융자/보증 2.0%, 주식/회사채 발행 0.4%, 엔젤/벤처캐피탈 투자
															0.2% 순으로 나타납니다.</li>						
														</ul>
													</div>
													<div id="c2p3" class="tab-pane fade">
														<ul class="leftForDiv1">
															<li>창업 아이템 및 아이디어 원천은 본인만의 아이디어가 가장 높은 86.0%로 나타났고, 다음으로 
															기술 이전 8.8%, 아이디어 보유자와 함계 참여 2.7%, 아이디어 교류/협업을 통한 창업아이템 발굴
															2.6% 순으로 나타납니다.</li>						
														</ul>
														<img src="../images_for_myPage/2-2.PNG" width="100%"  class="rightForDiv1">
														<ul class="leftForDiv1">
															<li>기술이전 창업기업(8.8%)에 대한 기술이전 주체의 소재지 분포는 국내 소재가 8.5%로 나타났고, 
															국외 소재는 0.3%로 나타납니다.</li>
															<li>기술이전의 주체 유형은 중소기업이 가장 높은 4.3%로 나타났고, 다음으로 중견/대기업 2.2%, 기타 2.0%, 
															대학/대학교와 공공(연구)기관이 각각 0.1% 순으로 나타납니다.</li>
															<li>기술이전 주체와의 관계는 '본인이 소속되어 있지 않은 기업/기관으로부터 이술을 이전받아, 기술이전을
															해준 기업/기관과의 관계를 가맹본부-가맹점으로 하여 프랜차이즈 형태로 창업'이 가장 높은 4.0%로 나타났고,
															다음으로 '본인이 소속되어 있지 않은 기업/기관으로부터 기술을 이전받아, 기술이전을 해준 기업/기관과의
															관계를 가맹본부-가맹점으로 하지 않고 독립적으로 창업' 3.2%, '본인이 직원으로 소속되어 있는 기업/기관의
															기술을 이전받아, 소속된 기업/기관의 직원 신분이 아닌 독립된 기업 신분으로 창업' 1.2%, '본인이 직원으로
															소속되어 있는 기업/기관의 기술을 이전받아, 소속된 기업/기관의 직원 신분으로 창업' 0.4% 순으로 나타납니다.</li>
															<li>기술이전 방법은 '기술이전 기관의 기술매각 또는 기술양도'가 가장 높은 3.7%로 나타났고, 다음으로
															'둘 다 해당' 2.8%, '기술이전 기관의 실시권 허락(전용/통상/상호실시권 등)' 2.3% 순으로 나타납니다.</li>
														</ul>
													</div>
													<div id="c2p4" class="tab-pane fade">
														<ul class="leftForDiv1">
															<li>사업장의 입지로는 일반상업지역이 가장 높은 44.8%로 나타났고, 다음으로 일반주택지역 39.4%, 기타지역 
															9.9%, 산업단지 5.4%, 대학/연구기관 0.5% 순으로 나타납니다. </li>
														</ul>
														<img src="../images_for_myPage/2-3.PNG" width="100%" class="rightForDiv1">
														<ul class="leftForDiv1">
															<li>사업장 입지 선정 이유는 '제품/서비스를 소비자에게 빠르고 쉽게 제공할 수 있기 때문에'가 54.7%로
															가장 높게 나타났고, 다음으로 '기타 이유로' 23.8%, '본사(사무실), 영업장(공장) 등의 취득 비용이 저렴하기 때문에'
															20.9%, '제품/서비스의 생산하는 원료/재료를 빠르고 쉽게 구할 수 있기 때문에' 14.7% 등 순으로 나타납니다.</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a data-toggle="collapse" data-parent="#accordion"
													href="#collapse3"> 일반현황</a>
											</h4>
										</div>
										<div id="collapse3" class="panel-collapse collapse">
											<div class="panel-body">
												<div class="panel panel-default">
													<div class="panel-heading">
														<h3 class="panel-title">
															<a data-toggle="collapse" href="#collapse4">기업 수</a>
														</h3>
													</div>
													<div id="collapse4" class="panel-collapse collapse">
														<div class="panel-body">
															<ul class="nav nav-tabs dark" style="font-size: 15px;">
																<li class="active"><a data-toggle="tab" href="#c4p1">기업형태별 기업 수</a></li>
																<li><a data-toggle="tab" href="#c4p2">업력별 기업 수</a></li>
																<li><a data-toggle="tab" href="#c4p3">업종별 기업 수</a></li>
															</ul>
															<div class="nav-fluid tab-content">
																<div id="c4p1" class="tab-pane fade in active">
																	<ul class="leftForDiv1">
																		<li>2017년 기준 창업기업 수는 총 1,747,791개로 확인되었습니다.</li>
																		<li>기업형태별 기업 수는 개인이 1,537,885개, 법인이 209,906개로 각각 전체
																		창업기업 수의 88.0%, 12.0%를 차지하는 것으로 나타납니다. </li>
																	</ul>
																	<img src="../images_for_myMobile/2-4.PNG" width="100%" class="rightForDiv1">
																</div>
																<div id="c4p2" class="tab-pane fade">
																	<ul class="leftForDiv1">
																		<li>업력별 기업 수는 '1년'이 409,313개로 전체 창업기업의 23.4%를 차지하고 있으며,
																		'2년'이 369,751개로 21.2%, '3년'이 276,108개로 15.8%, '4년'이 220,662개로
																		12.6%, '5년'이 177,230개로 10.1%, '6년'이 155, 095개로 8.9%, '7년'이
																		139,632개로 8.0%를 차지합니다.</li>
																		<li>업력이 길어질수록 약 3%p 내외의 차이를 보이면서 비중이 감소하는 것으로 나타났으나,
																		'2년'기업과 '3년'기업은 5.4%p로 다소 큰 차이를 보이는 것을 알 수 있습니다.</li>
																	</ul>
																	<img src="../images_for_myPage/2-5.PNG" width="100%" class="rightForDiv1">
																</div>
																<div id="c4p3" class="tab-pane fade">
																	<ul class="leftForDiv1">
																		<li>업종별 기업 수는 '숙박 및 음식점업'이 전체 창업기업의 28.1%로 가장 많았으며,
																		다음으론느 '도매 및 소매업'이 27.0%, '제조업'이 9.0%, '협회 및 단체, 수리 및 
																		기타 개인서비스업'이 6.9%등의 순으로 많았습니다.</li>
																		<li>기업 수 기준 상위 2개 업종('숙박 및 음식점업', '도매 및 소매업')의 비중은
																		55.1%로 전체 창업기업 수의 절반 이상을 차지하는 것으로 나타납니다.</li>
																	</ul>
																	<img src="../images_for_myPage/2-6.PNG" width="100%" class="rightForDiv1">
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="panel panel-default">
													<div class="panel-heading">
														<h3 class="panel-title">
															<a data-toggle="collapse" href="#collapse5">매출액</a>
														</h3>
													</div>
													<div id="collapse5" class="panel-collapse collapse">
														<div class="panel-body">
															<ul class="nav nav-tabs dark" style="font-size: 15px;">
																<li class="active"><a data-toggle="tab" href="#c5p1">기업형태별 매출액</a></li>
																<li><a data-toggle="tab" href="#c5p2">업력별 매출액</a></li>
																<li><a data-toggle="tab" href="#c5p3">업종별 매출액</a></li>
															</ul>
															<div class="nav-fluid tab-content">
																<div id="c5p1" class="tab-pane fade in active">
																	<ul class="leftForDiv1">
																		<li>2017년 기준 창업기업의 전체 매출액은 총 705.5조원으로 확인됩니다.</li>
																		<li>기업형태별 매출액은 개인이 293.4조원, 법인이 412조원으로 각각 전체 창업기업
																		매출액의 41.6%, 58.4%를 차지합니다. </li>
																	</ul>
																	<img src="../images_for_myMobile/2-7.PNG" width="100%" class="rightForDiv1">
																</div>
																<div id="c5p2" class="tab-pane fade">
																	<ul class="leftForDiv1">
																		<li>업력별 매출액은 '1년'이 67조원으로 전체 창업기업 매출액의 9.5%를 차지하고 있으며,
																		'2년'이 123.1조원으로 17.4%, '3년'이 115.7조원으로 16.4%, '4년'이 108조원으로 15.3%, 
																		'5년'이 97.8조원으로 13.9%, '6년'이 103.3조원으로 14.6%, '7년'이 90.5조원으로 12.8%를 차지합니다.</li>
																	</ul>
																	<img src="../images_for_myPage/2-8.PNG" width="100%" class="rightForDiv1">
																</div>
																<div id="c5p3" class="tab-pane fade">
																	<ul class="leftForDiv1">
																		<li>업종별 매출액은 '도매 및 소매업'이 전체 창업기업의 40.9%로 가장 컸으며, 다음으로는 '제조업'이 21.5%,
																		'숙박 및 음식점업'이 10.4%, '건설업'이 6.9% 등의 순으로 나타납니다.</li>
																		<li>매출액 기준 상위 2개 업종('도매 및 소매업'이, '제조업')의 비중은 62.4%로 창업기업 전체 매출액의 절반
																		이상을 차지합니다. </li>
																	</ul>
																	<img src="../images_for_myPage/2-9.PNG" width="100%" class="rightForDiv1">
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="panel panel-default">
										<div class="panel-heading">
											<h4 class="panel-title">
												<a data-toggle="collapse" data-parent="#accordion"
													href="#collapse6"> 재무/자금 현황</a>
											</h4>
										</div>
										<div id="collapse6" class="panel-collapse collapse">
											<div class="panel-body">
												<ul class="nav nav-tabs dark" style="font-size: 15px;">
													<li class="active"><a data-toggle="tab" href="#c6p1">대차대조표</a></li>
													<li><a data-toggle="tab" href="#c6p2">손익계산서</a></li>
													<li><a data-toggle="tab" href="#c6p3">국내 판매액 및 수출액</a></li>
													<li><a data-toggle="tab" href="#c6p4">매출대상</a></li>
													<li><a data-toggle="tab" href="#c6p5">자금투입현황</a></li>
												</ul>
												<div class="nav-fluid tab-content">
													<div id="c6p1" class="tab-pane fade in active">
														<ul class="leftForDiv1">
															<li>창업기업의 자산은 총 924.7조원으로 나타났으며, 이중 부채가 68.6%, 자본이 31.4%를
															차지하는 것으로 나타났습니다.</li>						
														</ul>
														<img src="../images_for_myPage/2-10.PNG" width="100%" class="rightForDiv1">
														<ul class="leftForDiv1">
															<li>업력별로는 3년차 창업기업에서 자산대비 부채 비중이 가장 높게 나타납니다.</li>
															<li>업종별로 살펴보면, 부동산업에서 자산대비 부채 비중이 가장 높게 나타난 반면, 수도,
															하수 및 폐기물 처리, 원료 재생업은 자산대비 부채 비중이 42.2%로 가장 낮게 나타납니다.</li>
															<li>기업형태별로는 법인기업이 개인기업에 비해 자산대비 부채 비중이 상대적으로 높게 나타납니다.</li>					
														</ul>
													</div>
													<div id="c6p2" class="tab-pane fade">
														<ul class="leftForDiv1">
															<li>창업기업의 매출액은 총 705.5조원으로 나타났고, 영업이익은 매출액의 7.1%,
															금융비용(이자비용)은 1.8%, 당기순이익은 3.8%로 나타납니다.</li>						
														</ul>
														<img src="../images_for_myPage/2-11.PNG" width="100%" class="rightForDiv1">
														<ul class="leftForDiv1">
															<li>업력별로는 영업비익 비중의 경우 4년차 창업기업에서 가장 높았으며, 당기순이익 
															비중은 5년차 창업기업에서 가장 높은 것으로 나타납니다.</li>
															<li>업종별로는 숙박 및 음식점업에서 매출액대비 당기순이익 비중이 가장 높았으며, 
															영역이익 비중은 교육 서비스업이 가장 높은 것으로 나타납니다.</li>
															<li>기업형태별로는 법인기업보다 개인기업에서 영업이익과 당기순이익의 매출액대비 비중이
															높은 것으로 나타납니다.</li>
														</ul>
													</div>
													<div id="c6p3" class="tab-pane fade">
														<ul class="leftForDiv1">
															<li>'17년 12월말' 기준, 창업기업의 매출액 중 국내 판매액이 99.2%로 대부분을 
															차지하는 것으로 나타났고, 수출액은 0.8%로 나타납니다.</li>
														</ul>
														<img src="../images_for_myPage/2-12.PNG" width="100%"  class="rightForDiv1">
														<ul class="leftForDiv1">
															<li>업력별로도 역시 전체 응답 결과와 같은 분포를 보이며, 5년차에서 수출액 1.6%로 타업력
															대비 가장 높게 나타납니다.</li>
															<li>업종별로는 전기, 가스 증기 및 공기 조절 공급업과 정보통신업의 수출 비중이 각각 2.4%로 
															타업종 대비 가장 높게 나타납니다.</li>
															<li>기업형태별로는 개인기업이 99.6%, 법인기업이 97.9%로 국내 판매액이 대부분 차지하는 것으로
															나타납니다.</li>
														</ul>
													</div>
													<div id="c6p4" class="tab-pane fade">
														<ul class="leftForDiv1">
															<li>창업기업 매출대상은 B2C(소비자 매출)가 가장 높은 82.5%로 나타났고, 다음으로 B2B(기업 간
															매출) 15.9%, B2G(정부매출) 1.6% 순으로 나타납니다.</li>
															<li>B2B(기업 간 매출)는 중소기업이 13.4%, 대기업/중견기업이 2.5%로 나타납니다.</li>
														</ul>
														<img src="../images_for_myPage/2-13.PNG" width="100%" class="rightForDiv1">
														<ul class="leftForDiv1">
															<li>업력별 역시 B2C가 가장 높게 나타났고, 6년차를 제외한 대부분 업력에서 B2C가 80.0%를 
															상회하는 것으로 나타납니다.</li>
															<li>업종별 또한 대부분 B2C가 가장 높은 것으로 나타났으나, 농업, 어업 및 임업과 제조업은
															중소기업이 가장 놉게 나타납니다.</li>
															<li>기업형태별 창업기업 매출대상은 모두 B2C가 가장 높게 나타났으며, 법인기업은 개인기업에 비해 
															B2B와 B2G 수치가 더 높은 것으로 나타납니다.</li>
														</ul>
													</div>
													<div id="c6p5" class="tab-pane fade">
														<ul class="leftForDiv1">
															<li>창업기업의 연간 평균 자금투입금액은 342.3백만원으로 나타납니다.</li>
															<li>전체 투입금액 중 인건비가 30.7%로 가장 높은 비중으로 나타났고, 다음으로 재료비 24.1%,
															기타 경비 22.9%, 임차료 15.5% 등의 순으로 나타납니다.</li>
														</ul>
														<img src="../images_for_myPage/2-14.PNG" width="100%" class="rightForDiv1">
														<ul class="leftForDiv1">
															<li>업력별로는 1년차부터 4년차까지는 업력이 길수록 인건비 비중이 높았다가, 5년차부터 다시
															낮아지는 것으로 나타납니다.</li>
															<li>업종별로는 정보통신업에서 인건비 비중이 가장 높았으며, 제조업에서는 재료비 비중이 가장 높게 나타납니다.</li>
															<li>기업형태별 자금투입현황은 개인기업이 법인기업에 비해 임차료, 재료비 비중이 상대적으로 높았으며, 법인기업은 
															인건비, 판매비 비중이 높게 나타남</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="step3" class="tab-pane fade">
				<h1>Step 3</h1>
				<h3 class="margin">사업계획서 작성</h3>
				<h4 class="margin">아이템이 선정되면 사업계획서를 작성하여 사업 타당성을 분석하고 수익성을 검토합니다. </h4>
				<h4>먼저 예상비용을 산출한 후 예상수익을 계산하고 이에 따른 예상매출액을 산출합니다. </h4>
				<h4>이 과정에서 예상매출액 달성 가능이나 사업지속 가능 여부 등도 확실히 따져야 합니다. </h4>
			</div>
			<div id="step4" class="tab-pane fade">
				<h1>Step 4</h1>
				<h3 class="margin">입지선정</h3>
				<h4>좋은 입지를 선정하기 위해서는 상권과 입지를 최대한 많이 분석하는 일이 중요합니다. </h4>
				<h4 class="margin">세밀한 사업계획서에 따라 입지를 선정해야 하며, 도시발달 단계에 따라 조건을 고려하는 것도 좋습니다. </h4>
				<h4 class="margin">하단의 사이트를 방문해서 원하는 지역의 상권을 알아보세요!</h4>
				<a href="https://sg.sbiz.or.kr/godo/index.sg" class="btn btn-lg btn-default" target="_blank">상권 정보 서비스</a>
			</div>
			<div id="step5" class="tab-pane fade">
				<h1>Step 5</h1>
				<h3 class="margin">자금준비</h3>
				<h4>창업자금은 총 소요자금의 70%를 자기 자금으로 조달하는 것이 바람직하며,</h4>
				<h4 class="margin"> 특히 대출 등의 외부자금 조달은 30% 이내에서만 이루어지도록 합니다.</h4>
				<h4>만약 초기에 외부자금 조달이 너무 많으면, 창업 후 경영이 어려울 때 자금을 준비할 수 없게 됩니다. </h4>
				<h4 class="margin">창업 후 6개월까지의 현금흐름 계획을 작성해 미리 자금을 준비하는 것이 좋습니다.</h4>
				<h4>자금이 부족한 소상공인들이나 우수한 아이디어를 보유한 창업자들의 창업을 지원하기 위하여 정부에서는 다양한 종류의 자금을 운영 중입니다.</h4>
				<h4 class="margin">창업자금을 지원받기 위한 요건 및 지원조건은 기관별로 상이하니 지원기관의 홈페이지 정보를 확인해보시기 바랍니다.</h4>
				<a href="https://job.seoul.go.kr/www/establish/establish-fund_1.jsp" class="btn btn-lg btn-default" target="_blank">정책자금 및 유관기관 창업자금 안내</a>
			</div>
			<div id="step6" class="tab-pane fade">
				<h1>Step 6</h1>
				<h3 class="margin">개업 준비-오픈</h3>
				<h4 class="margin">오프라인 창업이라면 점포 계약을 준비하고, 온라인 창업이면 홈페이지 제작 등을 준비합니다. </h4>
				<h4>점포 계약 시 주의사항이나 채용정보 등을 점검하고 상품 준비 및 행정 인허가 사항 등을 확인합니다. </h4>
				<h4 class="margin">명함은 오픈 전이라도 미리 제작하여 사전 홍보에 활용하면 좋습니다. </h4>
				<h4>개업 준비를 마치고 오픈을 했다면, 지금부터 실질적인 마케팅 계획을 수립해 하나씩 실천하도록 합니다.</h4>
			</div>
			<div id="addition1" class="tab-pane fade">
				<h1>In Addition</h1>
				<h3 class="margin">❤ CEO가 준비해야 할 것</h3>
				<div align="left" style="color: #555555;">
					<ul class="list-group">
						<li class="list-group-item">
							<h3 class="margin">
								<b style="font-size: 25pt; border: 4px double #555555" class="bg-1">&nbsp;1&nbsp;</b> 
								확실한 매출전략 계획이 있어야 한다
							</h3>
							<h4>의외로 초기에 뚜렷한 매출전략 없이 막연하게 창업하는 경우가 많습니다.</h4>
							<h4>구체적이고 확실한 매출 전략이 있어야 성공률이 높아지고, 창업 후 성공과 실패를 분석할 수 있습니다.</h4>
						</li>
						<li class="list-group-item">
							<h3 class="margin">
								<b style="font-size: 25pt; border: 4px double #555555" class="bg-1">&nbsp;2&nbsp;</b> 
								평생직장을 구한다는 생각을 가진다
							</h3>
							<h4>짧은 기간 내에 많은 돈을 벌겠다는 마음가짐이라면 창업에 실패할 수 있습니다. </h4>
							<h4>평생직장을 마련한다는 생각으로 길게 바라보고 여유 있게 준비하도록 합니다.</h4>
						</li>
						<li class="list-group-item">
							<h3 class="margin">
								<b style="font-size: 25pt; border: 4px double #555555" class="bg-1">&nbsp;3&nbsp;</b> 
								기본적인 회계지식이 필요하다
							</h3>
							<h4>물론 회계의 모든 부분을 다 알아야 한다는 말이 아닙니다.</h4>
							<h4>회계를 모르면 정확한 원가분석을 할 수 없고, 이익과 손실의 정확한 정도도 파악하지 못합니다. </h4>
							<h4>또 판매가격이나 세금납부, 현금흐름 등을 제대로 알지 못해 사업을 접어야 하는 최악의 경우가 생기기도 합니다.</h4>
							<h4>따라서 정확한 경영상태를 확인하기 위해 기본적인 회계지식은 반드시 알고 있어야 합니다.</h4>
						</li>
						<li class="list-group-item">
							<h3 class="margin">
								<b style="font-size: 25pt; border: 4px double #555555" class="bg-1">&nbsp;4&nbsp;</b> 
								대비책을 미리 생각한다
							</h3>
							<h4 class="margin">창업 시작 전 대비책을 미리 정하지 않으면, 실패 후 예기치 못한 피해를 주게 됩니다.</h4>
							<h4>첫째, 부모나 형제 또는 지인에게 돈을 빌려 달라고 부탁하는 경우.</h4>
							<h4>둘째, 은행에서 대출한도 부족 및 신용등급 하락으로 대부업을 이용하는 경우.</h4>
							<h4 class="margin">셋째, 연속해서 6개월 이상 적자가 나는 경우.</h4>
							<h4>위의 세 가지 경우가 발생하게 된다면 사업을 접고, 실패의 원인을 분석하여 해결 방안을 찾은 후에 다시 시작하는 것이 좋습니다.</h4>
						</li>
					</ul>
				</div>
			</div>
		</div>

	</div>

	<div class="nav-fluid bg-3 text-center" id="div2">
		<ul class="nav nav-tabs dark">
			<li class="active"><a data-toggle="tab" href="#first2">First of All</a></li>
			<li><a data-toggle="tab" href="#type1">Type 1</a></li>
			<li><a data-toggle="tab" href="#type2">Type 2</a></li>
			<li><a data-toggle="tab" href="#type3">Type 3</a></li>
			<li><a data-toggle="tab" href="#type4">Type 4</a></li>
		</ul>
		<div class="container-fluid tab-content" id="type">
			<div id="first2" class="tab-pane fade in active">
				<h1 class="margin">Kind of Startups like_</h1>
				<img src="../images_for_myPage/type.PNG" class="img-responsive margin" 
				style="display: inline" alt="Prepare" width="350" height="350">
				<h4>가히 창업의 시대라고 할 만큼 퇴사와 창업이 열풍입니다.</h4>
				<h4>창업은 목표와 규모, 구조, BM에 따라 크게 <b>4가지 유형</b>으로 나누어 볼 수 있습니다. </h4>
				<h4>내가 어떤 유형의 창업을 하고 싶은지 한번 알아보고, 계획을 짜 보는 건 어떨까요?</h4>
			</div>
			<div id="type1" class="tab-pane fade">
				<h1>Type 1</h1>
				<h3 class="margin">1인기업</h3>
				<table>
					<tr>
						<th><h4>개념</h4></th>
						<td><h4>직원과 사무실 없이 자신만의 인력과 기술, 콘텐츠 등을 가지고 사업을 영위합니다.</h4></td>
					</tr>
					<tr>
						<th><h4>특징</h4></th>
						<td><h4>기업에서 용역을 수주하는 형태(프리랜서), 자신의 사업자를 내고 본인만의 콘텐츠나 제품을 판매합니다. (1인 기업)</h4></td>
					</tr>
					<tr>
						<th><h4>장점</h4></th>
						<td><h4>시간과 공간적 제약이 상대적으로 적어 자유롭고, 열심히 일한 만큼 벌 수도 있습니다.</h4></td>
					</tr>
					<tr>
						<th><h4>단점</h4></th>
						<td><h4>수익도 고정적이지 않고, 자유롭습니다. 열심히 일만 하고 못 벌 수도 있습니다.</h4></td>
					</tr>
					<tr>
						<th><h4>기타사항</h4></th>
						<td><h4>본인만의 특이점이 반드시 필요하고, 퍼스널 브랜딩도 중요합니다.</h4></td>
					</tr>
				</table>
			</div>
			<div id="type2" class="tab-pane fade">
				<h1>Type 2</h1>
				<h3 class="margin">소상공인</h3>
				<table>
					<tr>
						<th><h4>개념</h4></th>
						<td><h4>거리에서 흔히 볼 수 있는 요식업이나 마트, 가게 등 일반적인 자영업 형태입니다.</h4></td>
					</tr>
					<tr>
						<th><h4>특징</h4></th>
						<td><h4>로우 리스크 로우 리턴의 형식이며 경쟁은 치열하지만, 안정적인 사장에 일반적인 아이템으로 진입하게 됩니다.</h4></td>
					</tr>
					<tr>
						<th><h4>장점</h4></th>
						<td><h4>신사업이 아닌 성숙기의 시장이기 때문에 따로 개척할 필요가 없습니다. 약간의 차별화와 운영방식이 중요합니다.</h4></td>
					</tr>
					<tr>
						<th><h4>단점</h4></th>
						<td><h4>안정적인 시장인만큼 차별화 포인트를 찾기가 어려워 경쟁이 치열하고 이익률이 보통 낮습니다.</h4></td>
					</tr>
					<tr>
						<th><h4>기타사항</h4></th>
						<td><h4>대부분 실제 유형 제품을 판매하는 경우가 많은 만큼 제품력과 서비스 등이 중요합니다.</h4></td>
					</tr>
				</table>
			</div>
			<div id="type3" class="tab-pane fade">
				<h1>Type 3</h1>
				<h3 class="margin">에이전시</h3>
				<table>
					<tr>
						<th><h4>개념</h4></th>
						<td><h4>기업고객들을 대상으로 마케팅, 디자인, 개발 등의 서비스나 솔루션을 판매 및 대행하는 업체입니다.</h4></td>
					</tr>
					<tr>
						<th><h4>특징</h4></th>
						<td><h4>경쟁이 치열한 레드오션이기 때문에 우량 고객 확보에 어려움이 큽니다.</h4></td>
					</tr>
					<tr>
						<th><h4>장점</h4></th>
						<td><h4>기술을 바탕으로 1인 기업을 창업하게 된다면 에이전시로 확장하여 안정적인 수입창출원으로 삼기에 좋습니다.</h4></td>
					</tr>
					<tr>
						<th><h4>단점</h4></th>
						<td><h4>항상 을의 입장에 위치하기 때무에 스트레스가 심하고 업무 강도가 높습니다.</h4></td>
					</tr>
					<tr>
						<th><h4>기타사항</h4></th>
						<td><h4>에이전시 상태로 유지하는 것은 비전이 없지만, 이를 바탕으로 신규사업을 키우기에 좋습니다.본인만의 특이점이 반드시 필요하고, 퍼스널 브랜딩도 중요합니다.</h4></td>
					</tr>
				</table>
			</div>
			<div id="type4" class="tab-pane fade">
				<h1>Type 4</h1>
				<h3 class="margin">스타트업</h3>
				<table>
					<tr>
						<th><h4>개념</h4></th>
						<td><h4>시장의 문제를 해결하는 상품을 만들어 임팩트를 만들어내 고속 성장하는 기업입니다.</h4></td>
					</tr>
					<tr>
						<th><h4>특징</h4></th>
						<td><h4>비즈니스 생태계 구조 상, 대게 투자를 받아 단계별로 성장하게 됩니다.</h4></td>
					</tr>
					<tr>
						<th><h4>장점</h4></th>
						<td><h4>새로운 시장을 개척하는 것이기 때문에 하이 리스크 하이 리턴의 형식입니다.</h4></td>
					</tr>
					<tr>
						<th><h4>단점</h4></th>
						<td><h4>리스크가 너무 크기 때문에 초기 자본을 다 날릴 위험이 언제나 존재합니다.</h4></td>
					</tr>
					<tr>
						<th><h4>기타사항</h4></th>
						<td><h4>1인기업-에이전시-스타트업 형식으로 발전시키는 것이 가장 이상적인 창업 방식입니다.</h4></td>
					</tr>
				</table>
			</div>
		</div>
	</div>

	<div class="nav-fluid bg-5 text-center" id="div3">
		<ul class="nav nav-tabs dark">
			<li class="active"><a data-toggle="tab" href="#first3">First of All</a></li>
			<li><a data-toggle="tab" href="#s_w">Strength / Weakness</a></li>
			<li><a data-toggle="tab" href="#steps">Steps</a></li>
		</ul>

		<div class="container-fluid tab-content">
			<div id="first3" class="tab-pane fade in active">
				<h1 class="margin">About Online Market_</h1>
				<img src="../images_for_myPage/online.png" class="img-responsive img-circle margin" 
				style="display: inline" alt="Prepare" width="350" height="350">
				<h4>창업을 하는 것에 있어서 빼놓을 수 없는 요소 <b style="color: red;">리스크</b>!</h4>
				<h4>리스크가 비교적 적은 온라인 창업에 대해 알아봅시다 :)</h4>
			</div>
			<div id="s_w" class="tab-pane fade">
				<h1>Strength / Weakness</h1>
				<h3 class="margin">온라인 창업의 장단점</h3>
				<div class="nav-fluid panel-body bg-3 round margin">
					<ul class="nav nav-tabs dark" style="font-size: 15px;">
						<li class="active"><a data-toggle="tab" href="#strength">장점</a></li>
						<li><a data-toggle="tab" href="#weakness">단점</a></li>
					</ul>
					
					<div class="nav-fluid tab-content margin-all">
						<div id="strength" class="tab-pane fade in active">
							<h3>초기비용이 적다.</h3>
							<h4>인터넷 쇼핑몰의 최고의 장점은 바로 창업비용이 적다 라는 것입니다.</h4>
							<h4 style="margin: 10px 0">오프라인 창업의 경우, 상권에 따른 임대로, 보증금 인테리어 비용 등 고가의 비용이 지출되는 것에 비해 </h4>
							<h4> 온라인 창업은 위와 같은 비용이 들지 않습니다.</h4>
							<h4 style="margin: 10px 0">1인 창업 쇼핑몰을 개설하는 데는 무료~300만원 정도의 초기진입비용이 들어 </h4>
							<h4>오프라인 마켓 창업과 비교할 때 부담이 적게 듭니다.</h4>
							<hr>
							<h3>사업 실패 후 리스크가 적다.</h3>
							<h4 style="margin: 10px 0">창업의 경험이 없는 예비 창업자의 경우, 창업을 해보려는 의욕이 앞서지만 </h4>
							<h4>반대의 경우, 즉 실패의 고배를 마실 때의 경우를 생각하지 않을 수 없습니다.</h4>
							<h4 style="margin: 10px 0">온라인 쇼핑몰의 90%가 망한다는 이야기가 있을 정도로 이 시장은 경쟁이 치열하고 힘들지만 </h4>
							<h4 style="margin: 10px 0">그럼에도 불구하고 매일매일 새로 생겨나는 쇼핑몰이 많은 이유는 그만큼 리스크가 적다는 이유 때문입니다.</h4>
							<hr>
							<h3>공간이나 시간의 구속에서 비교적 자유롭다.</h3>
							<h4>24시간 무인으로 돌아가는 자신만의 자판기가 되어줍니다. </h4>
							<h4 style="margin: 10px 0">오프라인에서 24시간 상점을 돌리려면 상대적으로 많은 인건비가 지출되지만 온라인 마켓은 무료입니다.</h4>
							<h4>온라인 쇼핑몰에서 판매되는 상품은 꼭 국내에만 국한되어 있는 것이 아니기 때문에 </h4>
							<h4>지방이나 해외에 있는 소비자들에게도 내 상품을 팔 수 있는 기회와 요건이 충족됩니다.</h4>
							<hr>
							<h3>나만의 자동판매기</h3>
							<h4>앞서 설명처럼 24시간 무인으로 돌아가기 때문에 소비자들은 어느 시간대에도 쇼핑을 즐길 수 있습니다.</h4>
							<h4 style="margin: 10px 0">또한 프로그램을 통해 주문, 회원가입, 아이쇼핑 등이 자동으로 돌아가 </h4>
							<h4>한번 프로그램을 적용 시켜 놓으면 시스템을 바꾸기 전까지는 오토루팅으로 돌아갑니다.</h4>
							<hr>
							<h3>데이터 분석이 가능하다. </h3>
							<h4 style="margin: 10px 0">인터넷 쇼핑몰에서 구매를 하거나 접속을 하게 되면 </h4>
							<h4>회원의 정보나 방문자의 정보가 내 사이트에 로그라는 파일로 저장됩니다.</h4>
							<h4 style="margin: 10px 0">언제, 어디서 접속을 했고 어떤 상품과 페이지들을 클릭해보고 나갔는지를 알려주므로</h4>
							<h4>로그분석을 통해 고객의 행동 패턴을 이용해 분석 상품의 판매 패턴을 알 수 있습니다.</h4>
							<hr>
							<h3>오프라인 마켓에 비해 재고부담이 적다.</h3>
							<h4 style="margin: 10px 0">오프라인 마켓의 경우 매장에 디스플레이를 해놓아야 하기 때문에 재고량이 중요하지만</h4>
							<h4>온라인의 경우 물건이 없고 이미지만 있어도 바로 판매가 시작됩니다.</h4>
							<h4 style="margin: 10px 0">소비자가 쇼핑몰에 들어와서 주문을 하면 상품을 준비/배송해주는 방식이므로 재고의 부담이 적습니다.</h4>
						</div>
						<div id="weakness" class="tab-pane fade">
							<h3>고객응대</h3>
							<h4>쇼핑몰에서 가장 중요한 부분 중 하나가 바로 이 cs응대입니다. </h4>
							<h4 style="margin: 10px 0">고객을 직접 상대하는 오프라인 상점과는 다르게</h4>
							<h4 style="margin: 10px 0">오로지 상품의 이미지와 설명하는 글만을 가지고 우리의 물건을 판매하는 입장이기 때문에 </h4>
							<h4>고객과의 충돌이 종종 있습니다.</h4>
							<h4 style="margin: 10px 0">고객 응대 시 쇼핑몰에서의 1:1 대화나 게시판의 글로 상담을 하기 때문에 전달이 용이하지 않고,</h4>
							<h4>전화 상담 또한 흥분한 소비자의 경우 창업 초보들에게는 힘든 응대가 될 수도 있습니다.</h4>
							<hr>
							<h3>배송사고</h3>
							<h4 style="margin: 10px 0">택배서비스를 이용하게 되는 인터넷 쇼핑몰은 전국으로 물건이 배달되기 때문에 배송사고가 발생하기 쉽습니다.</h4>
							<h4>이럴때는 고객들의 불만을 빨리 해소시켜주며 후속조치를 취하는 것이 필요합니다.</h4>
							<h4 style="margin: 10px 0">주문시에 고객들이 가장 원하는 것은 빠른 배송입니다.</h4>
							<h4>자신이 원하는 물건을 가진 고객은 한시라도 빨리 그 물건을 확인하고 사용해 보고 싶어 합니다.</h4>
							<h4>이런 상황에서 물건이 파손되거나 물건의 도착여부에 따라 판매자의 빠른 대처와 그에 따르는 보상이 이루어져야 합니다.</h4>
							<hr>
							<h3>반품</h3>
							<h4>가장 많이 일어나고 예민한 문제가 바로 이 반품 문제입니다.</h4>
							<h4 style="margin: 10px 0">예전에는 판매자의 역량에 따라 구매 시 조건에 따라 반품이 되지 않게끔 판매자 임의로 지정할 수 있었는데</h4>
							<h4>지금은 법으로 일주일 까지는 구매자의 단순변심에 따른 환불이라도 환불을 해줘야 합니다.</h4>
							<h4 style="margin: 10px 0">제품이 하자 있을 경우 역시 반품이 들어 오는데 배송비의 추가결제, 수리비 청구 등의 부분에 있어</h4>
							<h4>운영자가 미리 운영정책을 제시하여 고객과 마찰이 일어나지 않도록 신경써야 합니다.</h4>
							<hr>
							<h3>홍보비</h3>
							<h4>쇼핑몰을 오픈하면 아무도 내 사이트에 오지 않습니다. 고객이 내 사이트에 오게 하려면 홍보는 필수적입니다.</h4>
							<h4>홍보와 광고로 들어가는 비용과 쇼핑몰의 매출은 정비례하기 때문에 비용 또는 시간을 들여 홍보를 하는 것은 중요합니다.</h4>
							<h4 style="margin: 10px 0">하지만 홍보 비용이 만만치 않고, 인터넷 쇼핑몰의 경우 카드결제의 정산주기가 일주일을 넘고 </h4>
							<h4>에스크로 서비스의 제약이 있어 자금융통의 어려움 또한 대비해야 합니다.</h4>
							<hr>
							<h3>상품 수</h3>
							<h4>재고가 많이 필요하지는 않지만 상품의 다양함이 필요한 것이 인터넷 쇼핑몰입니다.</h4>
							<h4 style="margin: 10px 0">패션 관련 쇼핑몰의 경우 계절에 따른 다양한 상품들에 따라 매출이 증가하거나 감소하기도 하므로</h4>
							<h4>신상품 업데이트를 자주 해 주어야 합니다.</h4>
							<hr>
							<h3>상권 보호</h3>
							<h4>어느 상품이 대박이 나면 얼마 지나지 않아 관련 상권이 치열해지는 것이 우리나라 특성입니다.</h4>
							<h4 style="margin: 10px 0">판매자들은 자신들의 상권이 계속 유지되기를 바라지만 진입장벽이 상대적으로 낮은 온라인 쇼핑몰의 경우</h4>
							<h4 style="margin: 10px 0">경쟁구도가 치열하기 때문에 이런 리스크를 극복하기 위해 </h4>
							<h4> 끊임없이 틈새 아이템 루트 개발을 해야 하는 고충이 있습니다.</h4>
						</div>
					</div>
				</div>
				<h4>
					화면이 너무 길다면 상단으로 이동해 'First of All' 메뉴를 클릭해주세요 
					<a href="#div3" class="btn btn-lg btn-default">클릭!</a>
				</h4>
			</div>
			<div id="steps" class="tab-pane fade">
				<h1>Steps</h1>
				<h3 class="margin">쇼핑몰 창업의 절차</h3>
				<h4 class="margin">온라인 쇼핑몰은 쉽게 창업하고 쉽게 포기하는 경향이 있습니다.</h4>
				<h4>오프라인에서 가게를 오픈할 때보다 비용이 많이 들어가지 않고 쇼핑몰만 있으면 시작할 수 있다고 생각하기 때문입니다.</h4>
				<h4 class="margin">하지만 제대로 된 온라인 쇼핑몰 창업이라면 가게를 오픈하는 것과 같으며 오랜시간 준비해야 하는 일이 많습니다.</h4>
				<h4 class="margin">하단의 항목들은 오픈 전 준비에 도움이 될 항목들입니다. :)</h4>
				<div class="nav-fluid panel-body bg-3 round margin">
					<ul class="nav nav-tabs dark" style="font-size: 15px;">
						<li class="active"><a data-toggle="tab" href="#one">사업 준비</a></li>
						<li><a data-toggle="tab" href="#two">쇼핑몰 제작</a></li>
						<li><a data-toggle="tab" href="#three">쇼핑몰 오픈 준비</a></li>
						<li><a data-toggle="tab" href="#four">쇼핑몰 운영 및 마케팅</a></li>
					</ul>
					
					<div class="nav-fluid tab-content" align="left">
						<div id="one" class="tab-pane fade in active">
							<ul class="list-group margin margin-all">
								<li class="list-group-item">
									<h4>
										<b style="font-size: 20pt; border: 4px double #555555" class="bg-5">&nbsp;1&nbsp;</b> 
										아이템 선정
									</h4>
									<h4>
										<b style="font-size: 20pt; border: 4px double #555555" class="bg-5">&nbsp;2&nbsp;</b> 
										시장 조사
									</h4>
									<h4>
										<b style="font-size: 20pt; border: 4px double #555555" class="bg-5">&nbsp;3&nbsp;</b> 
										창업계획 수립
									</h4>
									<h4>
										<b style="font-size: 20pt; border: 4px double #555555" class="bg-5">&nbsp;4&nbsp;</b> 
										벤치마킹
									</h4>
									<h4 style="margin: 10px 0">
										<b style="font-size: 20pt; border: 4px double #555555" class="bg-5">&nbsp;5&nbsp;</b> 
										설립 준비
									</h4>
								</li>
							</ul>
							<div align="center">
								<h4>위의 내용은 온라인 쇼핑몰을 창업하기 위하여 준비해야 하는 내용입니다. </h4>
								<h4>이중에서 가장 중요한 것이 아이템의 선정입니다. </h4>
								<h4 class="margin">아이템이 올바르지 못하면 성공 가능성이 높지 않기 때문입니다.</h4>
								<h4 class="margin">아이템의 나만의 아이디어, 독창성 등 차별화가 매우 중요합니다.</h4>
								<h4>아이템이 선정되고 난 후 시장조사를 충분히 진행해야 합니다. </h4>
								<h4>내 상품이 시장에서 어느 가격에 얼마만큼 판매될 수 있는지, 문제점은 없는지를 조사하고 분석해야 합니다. </h4>
								<h4>시장조사과 함께 조사된 내용을 바탕으로 창업게획(사업계획)을 수립합니다. </h4>
								<h4>창업계획은 기획서 형식으로 단기, 중기, 장기 계획으로 구분하여 상세하고치밀한 계획을 수립해야 합니다. </h4>
								<h4 class="margin">조급하면 허점을 보이기 쉽기 때문에 치밀하게 시간을 두고 준비하고 수정 과정을 반복합니다.</h4>
								<h4>시장조사과 함께 수행해야 하는 것이 벤치마킹입니다. </h4>
								<h4>벤치마킹이랑 만들고자 하는 쇼핑몰과 동종 또는 유사업종의 특징을 분석하는 과정입니다.</h4>
								<h4 class="margin">이 과정에서 제작하고자 하는 사이트와 유사한 참고사이트도 선정하고 사이트맵도 구성하여 봅니다.</h4>
								<h4>가끔 온라인 쇼핑몰 창업을 한다고 하면서 직접 쇼핑몰을 제작까지 하겠다고 하는 경우를 볼 수 있습니다. </h4>
								<h4>이 경우 쇼핑몰부터 제작하면 창업이 된다고 생각하기 때문이며, </h4>
								<h4 class="margin">템플릿을 이용하면 쉽게 제작할 수 있다고 판단하기 때문입니다. </h4>
								<h4>하지만 템플릿으로 제작한다 해도 제작과정에서 폰트, 디자인이미지 구입 등을 고려해야 하고</h4>
								<h4 class="margin">템플릿의 코딩 구조 등을 공부해야 하는 등 난관이 많습니다.</h4>
								<h4>창업을 위해서는 회사 상호도 구상하고, 로고를 만들고, 도메인을 등록하고, 상호를 상표등록하는 등의 과정이 필요하며, </h4>
								<h4>상품구매 과정, 홍보, 광고 등 준비하고, 공부해야 하는 일이 너무 많습니다. </h4>
								<h4 class="margin">단지 쇼핑몰만 제작되면 창업이 완료되는 것이 아니기 때문에 쇼핑몰 제작은 제작 전문가에게 의뢰하는 것이 합리적입니다.</h4>
								<h4>온라인 쇼핑몰 제작 업체를 선정하는 것은 매우 중요합니다. 가격으로 저렴한 것도 중요하고 고품질의 디자인도 중요합니다. </h4>
								<h4 class="margin">하지만 가장 중요한 것은 제작된 사이트가 확장성과 이요의 편리성이 있는 상태로 제작되는 것이 더 중요합니다.</h4>
								<h4 class="margin">업체를 선정할 때 반드시 확인해야 할 것은 사업자 등록증, 포트폴리오, 견적 내용, 계약서, 추진과정 등입니다.</h4>
								<h4>쇼핑몰 제작회사(웹에이전시)는 인터넷분야의 전문지식이 있는 회사이기 때문에 </h4>
								<h4>제작 이외에도 인터넷 분야의 다양한 지원(컨설팅)을 요구할 수 있기 때문에 </h4>
								<h4>어디까지 지원하는지도 중요한 결정요소가 됩니다.</h4>
							</div>
						</div>
						<div id="two" class="tab-pane fade">
							<ul class="list-group leftForDiv3 margin-all">
								<li class="list-group-item">
									<h4>
										<b style="font-size: 20pt; border: 4px double #555555" class="bg-5">&nbsp;1&nbsp;</b> 
										쇼핑몰 제작업체 선정
									</h4>
									<h4>
										<b style="font-size: 20pt; border: 4px double #555555" class="bg-5">&nbsp;2&nbsp;</b> 
										쇼핑몰 제작 계약
									</h4>
									<h4>
										<b style="font-size: 20pt; border: 4px double #555555" class="bg-5">&nbsp;3&nbsp;</b> 
										콘텐츠 준비
									</h4>
									<h4>
										<b style="font-size: 20pt; border: 4px double #555555" class="bg-5">&nbsp;4&nbsp;</b> 
										상품 등록 준비
									</h4>
									<h4 style="margin: 10px 0">
										<b style="font-size: 20pt; border: 4px double #555555" class="bg-5">&nbsp;5&nbsp;</b> 
										검수 및 상품 등록 TEST
									</h4>
								</li>
							</ul>
							<div class="rightForDiv3">
								<h4>온라인 쇼핑몰 창업은 사이트 제작 이외에도 준비해야 할 일이 많고 고려해야 할 사항도 많습니다. </h4>
								<h4 class="margin">하지만 쇼핑몰 제작 단계부터는 전문업체와 함께 협업으로 진행할 수 있습니다.</h4>
								<h4>업체가 사이트를 제작하는 동안 상품 촬영, 사진 편집, 상품 가격과 SPEC 정리, 상품 특징 정리 등을 준비하고 </h4>
								<h4>의뢰한 사이트가 제대로 제작되었는가를 검수하며, 준비된 상품을 쇼핑몰에 등록하면서 Test하는 과정이 필요합니다.</h4>
								<h4></h4>
							</div>
						</div>
						<div id="three" class="tab-pane fade">
							<ul class="list-group leftForDiv3 margin-all">
								<li class="list-group-item">
									<h4>
										<b style="font-size: 20pt; border: 4px double #555555" class="bg-5">&nbsp;1&nbsp;</b> 
										통신판매업 신고
									</h4>
									<h4>
										<b style="font-size: 20pt; border: 4px double #555555" class="bg-5">&nbsp;2&nbsp;</b> 
										사업자 통장 개설 및 안전 거래 인증
									</h4>
									<h4>
										<b style="font-size: 20pt; border: 4px double #555555" class="bg-5">&nbsp;3&nbsp;</b> 
										결제사 계약 및 연동
									</h4>
									<h4>
										<b style="font-size: 20pt; border: 4px double #555555" class="bg-5">&nbsp;4&nbsp;</b> 
										문자 계약 및 연동
									</h4>
									<h4>
										<b style="font-size: 20pt; border: 4px double #555555" class="bg-5">&nbsp;5&nbsp;</b> 
										택배 업체 선정
									</h4>
									<h4 style="margin: 10px 0">
										<b style="font-size: 20pt; border: 4px double #555555" class="bg-5">&nbsp;6&nbsp;</b> 
										쇼핑몰 오픈
									</h4>
								</li>
							</ul>
							<div class="rightForDiv3">
								<h4 class="margin">쇼핑몰 제작이 완료되었다고 쇼핑몰을 바로 오픈할 수 있는 것은 아닙니다.</h4>
								<h4>사업자등록이 되었다면 사업자 명의로 통장을 개설하고 </h4>
								<h4>안전거래 인증마크를 신청하여 쇼핑몰에 연동하는 과정이 필요합니다. </h4>
								<h4 class="margin">또한 해당 구청의 지역경제과에서 통신판매허가를 받아서 사이트에 표현하는 등의 과정이 있어야 오픈 가능합니다. </h4>
								<h4>필요에 따라서는 카드 결제를 위하여 PG사와 계약하고 연동해야 하며, </h4>
								<h4>문자서비스 업체와 계약하고 사이트에 연동하는 과정도 진행해야 합니다. </h4>
							</div>
						</div>
						<div id="four" class="tab-pane fade">
							<ul class="list-group leftForDiv3 margin-all">
								<li class="list-group-item">
									<h4>
										<b style="font-size: 20pt; border: 4px double #555555" class="bg-5">&nbsp;1&nbsp;</b> 
										포탈사이트 등록
									</h4>
									<h4>
										<b style="font-size: 20pt; border: 4px double #555555" class="bg-5">&nbsp;2&nbsp;</b> 
										마케팅 전략 수립
									</h4>
									<h4>
										<b style="font-size: 20pt; border: 4px double #555555" class="bg-5">&nbsp;3&nbsp;</b> 
										수익률 분석
									</h4>
									<h4 style="margin: 10px 0">
										<b style="font-size: 20pt; border: 4px double #555555" class="bg-5">&nbsp;4&nbsp;</b> 
										쇼핑몰 유지관리
									</h4>
								</li>
							</ul>
							<div class="rightForDiv3">
								<h4 class="margin">쇼핑몰을 오픈하였다고 수익이 발생하는 것은 아닙니다. </h4>
								<h4>쇼핑몰을 제작하는 과정까지는 쉬운 과정에 속하며, </h4>
								<h4>쇼핑몰을 운영하여 수익을 발생기키는 과정은 장시간에 거쳐 다양한 마케팅 전략으로 시행착오를 거치게 됩니다. </h4>
								<h4 class="margin">이 경우에도 전문업체와 협의하여 진행할 수 있고, 도움을 받을 수 있기 때문에 업체 선정이 중요합니다. </h4>
								<h4>하지만 마케팅 방법과 전략이라는 것이 수익을 창출하기 위한 과정이고 이 과정은 정답이 없습니다.</h4>
								<h4>업체별로 마케팅 투자비용이 다르고 방법이 다르기 때문에 얼마든지 수익이 다르게 창출될 수 있습니다.</h4>
							</div>
						</div>
					</div>
				</div>
				<h4>
					화면이 너무 길다면 상단으로 이동해 'First of All' 메뉴를 클릭해주세요 
					<a href="#div3" class="btn btn-lg btn-default">클릭!</a>
				</h4>
			</div>
		</div>
	</div>
	
	<div class="nav-fluid bg-2 text-center" id="div4">
		<ul class="nav nav-tabs light">
			<li class="active"><a data-toggle="tab" href="#first4">First of All</a></li>
			<li><a data-toggle="tab" href="#site1">Site 1</a></li>
			<li><a data-toggle="tab" href="#site2">Site 2</a></li>
			<li><a data-toggle="tab" href="#site3">Site 3</a></li>
			<li><a data-toggle="tab" href="#site4">Site 4</a></li>
			<li><a data-toggle="tab" href="#site5">Site 5</a></li>
		</ul>

		<div class="container-fluid tab-content site">
			<div id="first4" class="tab-pane fade in active">
				<h1 class="margin">Easy to Open with_</h1>
				<img src="../images_for_myPage/site.jpg" class="img-responsive img-circle margin" 
				style="display: inline; width: 350px; height: 350px" alt="Prepare">
				<h4>온라인 마켓 플랫폼에는 <b>다양한 기능과 혜택</b>이 있습니다.</h4>
				<h4>직접 쇼핑몰을 구상하고 만들거나 온라인 쇼핑몰 제작 업체에 의뢰하기 부담된다면 아래의 플랫폼들을 이용해보세요!</h4>
			</div>
			<div id="site1" class="tab-pane fade">
				<h1>Site 1</h1>
				<h3 class="margin">네이버 스마트스토어</h3>
				<img src="../images_for_myPage/5-1.PNG" class="margin">
				<div align="center" class="margin">
					<ul class="list-group leftForUl">
						<li class="title list-group-item">네이버 스마트스토어의 혜택</li>
						<li class="list-group-item">온라인 상품 판매를 위한 제출서류 고지</li>
						<li class="list-group-item">윈도에 노출</li>
						<li class="list-group-item">구매안전서비스 이용확인증 제공</li>
						<li class="list-group-item">스토어 활동에 필요한 메뉴얼 제공</li>
						<li class="list-group-item">스토어 개설, 상품 등록, 판매 수수료 무료</li>
						<li class="list-group-item">스토어 개설부터 운영까지 온/오프라인 종합 교육 제공</li>
					</ul>
					<ul class="list-group rightForUl">
						<li class="title list-group-item">네이버 스마트스토어의 여러 기능</li>
						<li class="list-group-item">네이버페이와 결제 연동</li>
						<li class="list-group-item">네이버 톡톡으로 고객 상담</li>
						<li class="list-group-item">애널리틱스로 트래픽 분석 지원</li>
						<li class="list-group-item">입점/등록/판매 수수료 무료</li>
						<li class="list-group-item">네이버 지도로 매장 위치 검색 가능</li>
						<li class="list-group-item">간편 사이트 등록</li>
						<li class="list-group-item">네이버 기능들과 스토어 연결</li>
						<li class="list-group-item">간단한 가격비교 연동</li>
					</ul>
				</div>
				<h4 class="clearForBtn">
					화면이 너무 길다면 상단으로 이동해 'First of All' 메뉴를 클릭해주세요 
					<a href="#div4" class="btn btn-lg btn-default">클릭!</a>
				</h4>
			</div>
			<div id="site2" class="tab-pane fade">
				<h1>Site 2</h1>
				<h3 class="margin">위메프 파트너스</h3>
				<img src="../images_for_myPage/5-2.png" class="margin">
				<div align="center" class="margin">
					<ul class="list-group leftForUl">
						<li class="title list-group-item">위메프 파트너스의 혜택</li>
						<li class="list-group-item">신상품 홍보/양질의 구매후기 지원 이벤트</li>
						<li class="list-group-item">매출 향사을 위한 특가 가격 관리</li>
						<li class="list-group-item">투데이 특가 광고 이벤트</li>
						<li class="list-group-item">파트너스 활동에 필요한 메뉴얼 제공</li>
					</ul>
					<ul class="list-group rightForUl">
						<li class="title list-group-item">위메프 파트너스의 여러 기능</li>
						<li class="list-group-item">위메프 광고물품 소개</li>
						<li class="list-group-item">제휴 파트너사 무료노출 프로모션</li>
						<li class="list-group-item">신규 파트너사 지원 프로그램</li>
						<li class="list-group-item">입점/제휴 상담 서비스</li>
					</ul>
				</div>
				<h4 class="clearForBtn">
					화면이 너무 길다면 상단으로 이동해 'First of All' 메뉴를 클릭해주세요 
					<a href="#div4" class="btn btn-lg btn-default">클릭!</a>
				</h4>
			</div>
			<div id="site3" class="tab-pane fade">
				<h1>Site 3</h1>
				<h3 class="margin">쿠팡 Wing</h3>
				<img src="../images_for_myPage/5-3.png" class="margin">
				<div align="center" class="margin">
					<ul class="list-group leftForUl">
						<li class="title list-group-item">쿠팡 Wing의 혜택</li>
						<li class="list-group-item">성과 리포트와 정산 안내</li>
						<li class="list-group-item">다양한 광고 제작 가능</li>
						<li class="list-group-item">높은 커미션으로 창출하는 더 많은 수익률</li>
						<li class="list-group-item">파트너스 활동에 필요한 가이드 제공</li>
					</ul>
					<ul class="list-group rightForUl">
						<li class="title list-group-item">쿠팡 Wing의 여러 기능</li>
						<li class="list-group-item">성과 리포트와 정산 안내</li>
						<li class="list-group-item">다양한 광고 제작 가능</li>
						<li class="list-group-item">높은 커미션으로 창출하는 더 많은 수익률</li>
						<li class="list-group-item">파트너스 활동에 필요한 가이드 제공</li>
					</ul>
				</div>
				<h4 class="clearForBtn">
					화면이 너무 길다면 상단으로 이동해 'First of All' 메뉴를 클릭해주세요 
					<a href="#div4" class="btn btn-lg btn-default">클릭!</a>
				</h4>
			</div>
			<div id="site4" class="tab-pane fade">
				<h1>Site 4</h1>
				<h3 class="margin">카카오톡 스토어 판매자센터</h3>
				<img src="../images_for_myPage/5-4.png" class="margin">
				<div align="center" class="margin">
					<ul class="list-group leftForUl">
						<li class="title list-group-item">톡스토어 판매자센터의 혜택</li>
						<li class="list-group-item">다양한 카카오쇼핑에서 판매 가능</li>
						<li class="list-group-item">커머스형 메세지 홍보</li>
						<li class="list-group-item">간편 결제 적용으로 카카오톡 내에서 구매부터 결제까지 가능</li>
						<li class="list-group-item">판매자를 위한 매뉴얼과 도움말 제공</li>
					</ul>
					<ul class="list-group rightForUl">
						<li class="title list-group-item">톡스토어 판매자센터의 여러 기능</li>
						<li class="list-group-item">입점 절차에 대한 절차와 서류 안내</li>
						<li class="list-group-item">카카오 채널 연동</li>
						<li class="list-group-item">1:1 상당톡 기능</li>
						<li class="list-group-item">톡딜 설정으로 전시 영역에 노출</li>
						<li class="list-group-item">소문내면 할인 프로모션</li>
						<li class="list-group-item">카카오페이 결제 연동</li>
					</ul>
				</div>
				<h4 class="clearForBtn">
					화면이 너무 길다면 상단으로 이동해 'First of All' 메뉴를 클릭해주세요 
					<a href="#div4" class="btn btn-lg btn-default">클릭!</a>
				</h4>
			</div>
			<div id="site5" class="tab-pane fade">
				<h1>Site 5</h1>
				<h3 class="margin">아이디어스 작가웹</h3>
				<img src="../images_for_myPage/5-5.png" class="margin">
				<div align="center" class="margin">
					<ul class="list-group leftForUl">
						<li class="title list-group-item">아이디어스 작가웹의 혜택</li>
						<li class="list-group-item">핸드메이드 원부자재 최저가로 구매 가능한 작가 스토어</li>
						<li class="list-group-item">명함, 로고, 전단 등 브랜드를 위한 디자인 서비스</li>
						<li class="list-group-item">온라인 마케팅, 손익관리, 법률, 서비스 등 다양한 교육</li>
						<li class="list-group-item">맞춤 컨설팅 및 판매 심화 교육</li>
						<li class="list-group-item">포토그래퍼 무료 촬영 대행</li>
						<li class="list-group-item">한진택배 제휴/기사님 방문 픽업</li>
						<li class="list-group-item">종합검진 일부지원</li>
					</ul>
					<ul class="list-group rightForUl">
						<li class="title list-group-item">아이디어스 작가웹의 여러 기능</li>
						<li class="list-group-item">후원금 서비스</li>
						<li class="list-group-item">온/오프라인 클래스 판매 오픈</li>
						<li class="list-group-item">오프라인 매장/마켓 지원</li>
					</ul>
				</div>
				<h4 class="clearForBtn">
					화면이 너무 길다면 상단으로 이동해 'First of All' 메뉴를 클릭해주세요 
					<a href="#div4" class="btn btn-lg btn-default">클릭!</a>
				</h4>
			</div>
		</div>
	</div>
	
	<div class="nav-fluid bg-4 text-center" id="div5">
		<ul class="nav nav-tabs dark">
			<li class="active"><a data-toggle="tab" href="#first5">First of All</a></li>
			<li><a data-toggle="tab" href="#from">The Informations are From Here!</a></li>
		</ul>

		<div class="container-fluid tab-content">
			<div id="first5" class="tab-pane fade in active">
				<h1 class="margin">All the Information from_</h1>
				<img src="../images_for_myPage/from.png" class="img-responsive img-circle margin" 
				style="display: inline" alt="Prepare" width="350" height="350">
				<h4>창업 준비 및 통계 자료 참고 페이지들입니다.</h4>
				<h4>더 알고 싶은 정보가 있다면 방문해보세요!</h4>
			</div>
			<div id="from" class="tab-pane fade">
				<h1>The Informations are From Here!</h1>
				<h3 class="margin"></h3>
				<h4>창업 준비 및 통계 자료 참고 페이지</h4>
				<p class="margin">IBK기업은행 blog https://blog.ibk.co.kr/1825 방문(21.12.21 17:17)
				중소벤처기업부 창업진흥원 https://www.k-startup.go.kr/common/post/detail.do 방문(21.12.22 17:17)</p>
				<h4>창업 유형 참고 페이지</h4>
				<p class="margin">브런치페이지의  https://brunch.co.kr/@brunchovbw/49 방문(21.12.23 16:57)</p>
				<h4>온라인 창업 참고 페이지</h4>
				<p>리스크 이미지 https://economiology.com/%EC%8B%9C%EC%8A%A4%ED%85%9C%EB%A6%AC%EC%8A%A4%ED%81%AC-%EC%A0%95%EC%9D%98-%EB%B0%8F-%EA%B0%9C%EB%85%90/ 방문(21.12.28 17.27)</p>
				<p class="margin">블로거 김대리닷컴 https://01pro.tistory.com/entry/%EC%9D%B8%ED%84%B0%EB%84%B7-%EC%87%BC%ED%95%91%EB%AA%B0-%EC%B0%BD%EC%97%85%EC%A0%84-%EC%9D%B4%EA%B2%83%EB%A7%8C%EC%9D%80-%EC%95%8C%EC%95%84%EB%91%90%EC%9E%90-1 방문(21.12.27 15:20)</p>
				<h4>온라인 마켓 추천 페이지의 각 사이트 정보</h4>
				<p>네이버 스마트스토어 https://sell.smartstore.naver.com/#/home/about 방문(21.12.27 13:02)</p>
				<p>위메프 파트너스 https://front.wemakeprice.com/partners 방문(21.12.27 13:20)</p>
				<p>쿠팡 Wing https://partners.coupang.com/#  방문(21.12.27 13:40)</p>
				<p>톡스토어 판매자센터 https://store-sell.kakao.com/ 방문(21.12.27 13:50)</p>
				<p>아이디어스 https://idus.com/w/board/notice/detail?id=76 방문(21.12.27 14:05)</p>
			</div>
		</div>
	</div>

	<div style="position: fixed; bottom: 10px; right: 10px;" id="btnTopField"></div>
	<footer class="container-fluid bg-6 text-center bottom" style="padding: 50px 0px;">
		<p>&copy;SWUP</p>
	</footer>
</body>
</html>