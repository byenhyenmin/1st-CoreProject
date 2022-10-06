<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>mypage_memberinfo</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- 설문조사 폼 CSS -->
<style>
.container {
	display: flex;
	align-items: center;
	justify-content: center;
}

.form-group {
	width: 300px;
	height: 50px;
}

.radio {
	width: 300px;
	height: 34px;
}

.btn {
	background-color: green;
	border-color: green;
	width: 300px;
	height: 34px;
	color: white;
}

td {
	padding: 5px;
}
</style>
</head>
<body>

<!-- 기능 -->
 <script type="text/javascript">
 //jquery event처리하기
	 $('#shopping').on('click',function(){
		 //클릭하면 check박스가 check되었는지 여부를 판단
		 ${}
		 
		 //check가 되었다면 shop1 div태그의 css를 display 'block'으로 변경
		 $('#shop1').css('display','block');
		 
		 
		 
	 })
 
 
 
 
 </script>

<!-- 설문조사 폼 -->
	<div class="header">
		<h1>설문조사</h1>
	</div>
	<div class="container">
		<!-- ★ Flask 연동 ★ : 설문조사 내용 Python으로 연동!! action = 주소값 -->
		<form action="" method="post">
			<div class="form-group">
				<p><strong>관광목적</strong></p>
				<label for="checkbox-inline"><input id="shopping" type="checkbox" name="shop">쇼핑</label>
				<label for="checkbox-inline"><input type="checkbox" name="food">식사</label>
				<label for="checkbox-inline"><input type="checkbox" name="tour">관광</label>
			</div>

			<div class="form-group">
				<p><strong>선호하는 항목 선택해주세요!!(중복가능)</strong></p>
				
				<div id = "shop1" style="display:none;">
					<label class="checkbox-inline"><input type="checkbox">살거리1</label>
					<label class="checkbox-inline"><input type="checkbox">살거리2</label>
				</div>
				
				<div id = "shop2" style="display:none;">
					<label class="checkbox-inline"><input type="checkbox">먹거리1</label>
					<label class="checkbox-inline"><input type="checkbox">먹거리2</label>
				</div>
				
				<div id = "shop3" style="display:none;">
					<label class="checkbox-inline"><input type="checkbox">볼거리1</label>
					<label class="checkbox-inline"><input type="checkbox">볼거리2</label>
			    </div>
			
			</div>

			<button type="submit" class="btn">추천받기</button>
		</form>
	</div>

		 


</body>
</html>