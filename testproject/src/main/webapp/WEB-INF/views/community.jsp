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
	font-size: 18px;
}

.navbar-content {
	float: right;
}

.dropdown-menu li a:hover {
	background-color: green;
	color: white;	
}

.dropdown-menu li a {
	font-size: 18px;
}

.jumbotron {
	background-size: 100%;
	background-image: url(assests/images/community-bg.jpg);
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

/* 게시판 스타일 */
.panel {
	margin-bottom: 20px;
	background-color: white;
	padding: 30px;
	width: 100%;
	height: 1200px;
}

.panel-body {
	font-size: 18px;
	text-align: center;
}

.table {
	table-layout: fixed;
}

.table th {
	text-align: center;
}

.btn {
	background-color: black;
	color: white;
}

.btn-lg {
	background-color: green; 
	color: white;
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
		<h2>커뮤니티</h2>
	</div>

	<!-- 내용(게시판 목록) -->
	<div class="container">
		<div class="panel">
			<div class="panel-body">
				<table class="table table-striped table-hover">
					<colgroup>
						<col style="width: 10%"/>
						<col style="width: 40%"/>
						<col style="width: 20%"/>
						<col style="width: 20%"/>
						<col style="width: 10%"/>
					</colgroup>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>비고</th>
					</tr>

					<!-- el 표현식을 활용하면 scope영역에 객체바인딩 된 데이터를 바로 꺼내올 수 있다. -->
					<c:forEach var="board" items="${list}">
						<tr>
							<td>${board.BOARD_NUM}</td>
							<td><a
								href="SelectOne.do?boardnum=${board.board_num}">${board.board_title}</a></td>
							<td>${board.board_mem_id}</td>
							<td>${board.board_wd}</td>

							<!-- admin일 경우에만 삭제 가능 -->
							<td>
								<button class="btn" 
									onclick="location.href='DeleteCon.do?boardnum=${board.board_num}'">삭제</button>
							</td>
						</tr>
					</c:forEach>

					<tr align="right">
						<td colspan="5">
							<button onclick="location.href='GoInsert.do'"
								class="btn btn-lg">글쓰기</button>
						</td>
					</tr>
				</table>
				<div class="panel-footer">
					<b>에티켓을 지킵시다</b>
				</div>
			</div>
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