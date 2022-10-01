<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
body {
	background-color: #F2F2F2;
}

/* menu */
.navbar {
	margin-bottom: 0;
	justify-content: space-between;
}

.navbar-content {
	float: right;
}

.dropdown-menu li a:hover {
	background-color: green;
	color: white;
}

.jumbotron {
	background-size: 100%;
	background-image: url(assests/images/attraction-bg.jpg);
	color: white;
}

/* content */
.container {
	background: white;
}

.centents {
	width: 100%;
	height: 1200px;
}

/* table list */
.detailed.contents table tr {
	border-bottom: 1px solid #e0e0e0;
}

.detailed.contents table td.explain {
	padding: 30px;
	width: 80%;
}

.detailed.contents table td {
	padding: 30px;
}

/* page number */
.paging a.on {
	border-color: green;
	background-color: green;
	color: white;
	font-weight: 700;
}

.paging a {
	border: 1px solid #cbcbcb;
	width: 50px;
	height: 50px;
	display: inline-block;
	line-height: 50px;
	color: black;
	font-size: 14px;
}

.paging {
	padding: 50px;
	width: 100%;
}
</style>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">

	<!-- 로그인 상태에 따라 메뉴 다름!! 
로그인 x : 홈, 살거리, 먹거리, 볼거리, 커뮤니티, 회원가입, language
로그인 o : 홈, 살거리, 먹거리, 볼거리, 커뮤니티, 마이페이지, language -->

	<!-- 메뉴 -->
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand">시장 투어 가이드</a>
			</div>

			<div class="navbar-content">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#none">홈</a></li>
					<li><a href="#none">살거리</a></li>
					<li><a href="#none">먹거리</a></li>
					<li><a href="#none">볼거리</a></li>
					<li><a href="#none">커뮤니티</a></li>

					<!-- 로그인 여부에 따라 페이지 구성 다름(구글링) -->
					<!-- 로그인 했을 경우 -->
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#none">마이페이지<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#none">즐겨찾기</a></li>
							<li><a href="#none">회원정보수정</a></li>
						</ul></li>

					<!-- 로그인 안 했을 경우 -->
					<li><a href="#none">회원가입</a></li>


					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#none">language<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#none">한국어</a></li>
							<li><a href="#none">English</a></li>
						</ul></li>

				</ul>
			</div>
		</div>
	</nav>

	<div class="jumbotron text-center">
		<h2>페이지</h2>
	</div>

	<!-- 내용 -->
	<div class="container">
		<div class="centents">

			<!-- table list 시작 -->
			<div class="detailed contents">
				<table>
					<tr>
						<td><img src="" width="280" height="180" alt=""></td>
						<td class="explain">
							<h3>상점1</h3> <span>설명1</span><br> <span>설명2</span>
						</td>
					</tr>
					<tr>
						<td><img src="" width="280" height="180" alt=""></td>
						<td class="explain">
							<h3>상점2</h3> <span>설명1</span><br> <span>설명2</span>
						</td>
					</tr>
					<tr>
						<td><img src="" width="280" height="180" alt=""></td>
						<td class="explain">
							<h3>상점3</h3> <span>설명1</span><br> <span>설명2</span>
						</td>
					</tr>
				</table>
			</div>
			<!-- table list 끝 -->
		</div>

		<!-- page number 시작 -->
		<div class="paging text-center">
			<a href="#none" class="prevduPage" title="처음 페이지로 이동">&lt;&lt;</a> <a
				href="#none" class="prevPage" title="이전 페이지로 이동">&lt;</a> <a
				href="#none" class="on">1</a> <a href="#none" class="nextPage"
				title="다음 페이지로 이동">&gt;</a> <a href="#none" class="nextduPage"
				title="마지막 페이지로 이동">&gt;&gt;</a>
		</div>
		<!-- page number 끝 -->
	</div>


</body>
</html>