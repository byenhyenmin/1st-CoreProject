<%@page import="com.smhrd.model.MemberDAO"%>
<%@page import="com.smhrd.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>


<!DOCTYPE html>
<html lang="en">
<head>
<title>Main</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

.navbar {
	font-family: Montserrat, sans-serif;
	margin-bottom: 0;
	background-color: #000;
	border: 0;
	font-size: 11px !important;
	letter-spacing: 4px;
	opacity: 0.9;
}

.navbar li a, .navbar .navbar-brand {
	color: #fff !important;
}

.navbar-nav li a:hover {
	color: #fff !important;
}

.navbar-nav li.active a {
	color: #fff !important;
	background-color: #29292c !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
}

.open .dropdown-toggle {
	color: #fff;
	background-color: #555 !important;
}

.dropdown-menu li a {
	color: #000 !important;
}

.dropdown-menu li a:hover {
	background-color: green !important;
}

/* Add a black background color and some padding to the footer */
footer {
	background-color: #000;
	padding: 25px;
}

footer {
	background-color: #000;
	color: #f5f5f5;
	padding: 32px;
}

footer a {
	color: #f5f5f5;
}

footer a:hover {
	color: #777;
	text-decoration: none;
}

.carousel-inner img {
	width: 100%; /* Set width to 100% */
	margin: auto;
	min-height: 200px;
}

/* Hide the carousel text when the screen is less than 600 pixels wide */
@media ( max-width : 600px) {
	.carousel-caption {
		display: none;
	}
}

#btn {
	background-color: black;
	border-color: black;
	height: 35px;
	width: 80px;
	color: white;
}

.map {
	position: relative;
	overflow-x: scroll;
	overflow-y: scroll;
	width: 100%;
	height: 300px;
}

.well {
	width: 500px;
	height: 100px;
	background-color: green;
}

.row {
	margin-right: -15px;
	margin-left: -15px;
}

.col-sm-6 {
	width: 50%;
}
</style>
<script type="text/javascript"
	src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=rrv1szjpt7"></script>
</head>
<body>

<% MemberDTO loginDto = (MemberDTO) session.getAttribute("loginDto"); %>

	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href=""><strong>���� ������
						�� �ô�</strong></a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">

					<!-- �޴� -->
					
					<li><a href="main.jsp">Ȩ</a></li>
					<li><a href="#">����Ұ�</a></li>
					<li><a href="shop.jsp">��Ÿ�</a></li>
					<li><a href="food.jsp">�԰Ÿ�</a></li>
					<li><a href="attraction.jsp">���Ÿ�</a></li>						
					<li><a href="selectAll.do">Ŀ�´�Ƽ</a></li>
					
					<!-- �α��� ���ο� ���� ������ ���� �ٸ�! -->
					<% if(loginDto != null) { %>
						<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown">���������� <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="update.do">ȸ����������</a></li>
							<li><a href="mypage_bookmark.jsp">���ã��</a></li>
						</ul></li>					
						<li><a href="logout.do">�α׾ƿ�</a></li>					
					<% } else {  %>
							<li><a href="GoJoinCon.do">ȸ������</a></li>
					<% } %>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">language <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">�ѱ���</a></li>
							<li><a href="#">English</a></li>
						</ul></li>

					<li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="assets/images/main-bg.png" alt="Image">
				<div class="carousel-caption">
					<h1>
						<b>�����޹�߽��� ����</b>
					</h1>
					<p>�帮�ӽ� ����! ����ŷ ����! ǳ������! ARü��! �پ��� �԰Ÿ�!</p>
				</div>
			</div>

			<div class="item">
				<img src="assets/images/main-bg2.png" alt="Image">
				<div class="carousel-caption">
					<h1>
						<b>ACC�����ƽþƹ�ȭ����</b>
					</h1>
					<p>�پ��� ���ÿ� ����! ACC�˾�! ��ȭü������!</p>
				</div>
			</div>
		</div>

		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<div class="container">
		<br>
		<div class="row">
			<div class="col-sm-6">
				<div id="map" style="width: 100%; height: 400px;">
					<p>���̹� ���� ���� api</p>
					<img src="#" class="img-responsive" style="width: 300%;"
						alt="Image">
				</div>
			</div>
			<% if (loginDto == null) { %>
			<form action="login.do" method="post">
				<div class="col-sm-6">
					<div class="well">
						<input type="text" name="id" placeholder="���̵�"
							style="height: 35px"> <input type="password" name="pw"
							placeholder="��й�ȣ" style="height: 35px">
						<button type="submit" id="btn">�α���</button>
					</div>
				</div>
			</form>
			<% } else { %>
			<div class="col-sm-6">
				<div>
					<p><%=loginDto.getMem_id()%>�� ȯ���մϴ�.</p>
					<button onclick="location.href='GoSurveyCon.do?mem_id=<%=loginDto.getMem_id()%>'">��õ�ޱ�</button >
					<img src="#" class="img-responsive" style="width: 300%;"
						alt="Image">
				</div>
			</div>		
			<% } %>
		</div>
	</div>
	<br>

	<footer class="container-fluid text-center">

		<a class="up-arrow" href="#myPage" data-toggle="tooltip"
			title="TO TOP"> <span class="glyphicon glyphicon-chevron-up"></span>
		</a><br> <br>

		<script>
			$(document).ready(function() {
				// Initialize Tooltip
				$('[data-toggle="tooltip"]').tooltip();
			})
		</script>

		<p>@ma!-string ��õ�ý���</p>
	</footer>

	<script>
	var mapOptions = {
		    center: new naver.maps.LatLng(37.3595704, 127.105399),
		    zoom: 10
		};

	var map = new naver.maps.Map('map', mapOptions);
		</script>
</body>
</html>
</script>
</body>
</html>
