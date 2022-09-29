<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>MyPage</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<style>

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
	
#jumbotron {
	display: flex;
	align-items: center;
	justify-content: center;
}


</style>
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#myPage"><strong>���� ������
						�� �ô�</strong></a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">

					<!-- �޴� -->
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">��Ÿ� <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">ī�װ�1</a></li>
							<li><a href="#">ī�װ�2</a></li>
							<li><a href="#">ī�װ�3</a></li>
						</ul></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">�԰Ÿ� <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">ī�װ�1</a></li>
							<li><a href="#">ī�װ�2</a></li>
							<li><a href="#">ī�װ�3</a></li>
						</ul></li>

					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">���Ÿ� <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="#">���</a></li>
							<li><a href="#">����</a></li>
							<li><a href="#">����</a></li>
						</ul></li>

					<li><a href="#contact">Ŀ�´�Ƽ</a></li>
					<li><a href="#myPage">����������</a></li>
					<li><a href="#join">ȸ������</a></li>

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

  <div id="jumbotron">
    <h3>����������</h3>
  </div>
 
 



</body>
</html>