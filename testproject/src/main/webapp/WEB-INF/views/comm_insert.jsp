<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

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

.form-group label {
	align-content: left;
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

	<div class="container">
		<div class="panel">
			<div class="panel-body">
				<form action="Insert.do" enctype="multipart/form-data" method="post">
					<div class="form-group">
						<label style="color: green;">제목:</label> 
						<input type="text" class="form-control" name="title">
					</div>
					<div class="form-group">
						<label style="color: green;">작성자:</label> 
						<input type="text" class="form-control" name="writer">
					</div>
					<div class="form-group">
						<label>첨부파일</label> <input type="file" name="file">
					</div>
					<div class="form-group">
						<label>내용:</label>
						<textarea rows="10" class="form-control" name="content"></textarea>
					</div>

					<button type="submit" class="btn btn-primary btn-sm">글쓰기</button>
				</form>

			</div>
		</div>
</body>
</html>