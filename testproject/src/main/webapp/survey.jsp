<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
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

<% String mem_id = (String) request.getAttribute("mem_id"); %>
<!-- 설문조사 폼 -->
	<div class="header">
		<h1>설문조사</h1>
	</div>
	<div class="container">
		<!-- ★ Flask 연동 ★ : 설문조사 내용 Python으로 연동!! action = 주소값 -->
		<form accept-charset="utf-8" action="" method="post">
			<div class="form-group">
				<label for="mem_id"></label><br><input type="hidden" name="mem_id" value="${mem_id}"> 
			</div>
		
			<div class="form-group">
				<p><strong>관광목적</strong></p>
				<label class="radio-inline"><input id="shopping" type="radio" name="genre" value="살거리">쇼핑</label>
				<label class="radio-inline"><input id="eating" type="radio" name="genre" value="먹거리">식사</label>
				<label class="radio-inline"><input id="sightseeing" type="radio" name="genre" value="볼거리">관광</label>
				<label class="radio-inline"><input id="" type="radio" name="genre" value="할거리">체험</label>
			</div>

			<div class="form-group">
				<p><strong>선호하는 항목 선택해주세요!!</strong></p>
				
				<div id = "cate1" style="display:none;">
					<label class="radio-inline"><input type="radio" name="sub-cate">의류</label>
					<label class="radio-inline"><input type="radio" name="sub-cate">수산</label>
					<label class="radio-inline"><input type="radio" name="sub-cate">식품(기타)</label>
					<label class="radio-inline"><input type="radio" name="sub-cate">떡</label>
					<label class="radio-inline"><input type="radio" name="sub-cate">축산</label>
					<label class="radio-inline"><input type="radio" name="sub-cate">청과물</label>
					<label class="radio-inline"><input type="radio" name="sub-cate">건어물</label>
					<label class="radio-inline"><input type="radio" name="sub-cate">잡화</label>
				</div>
				
				<div id = "cate2" style="display:none;">
					<label class="radio-inline"><input type="radio" name="sub-cate">국밥</label>
					<label class="radio-inline"><input type="radio" name="sub-cate">회</label>
					<label class="radio-inline"><input type="radio" name="sub-cate">식품(기타)</label>
					<label class="radio-inline"><input type="radio" name="sub-cate">전</label>
					<label class="radio-inline"><input type="radio" name="sub-cate">고깃집</label>
				</div>
				
				<div id = "cate3" style="display:none;">
					<label class="radio-inline"><input type="radio" name="sub-cate">갤러리</label>
					<label class="radio-inline"><input type="radio" name="sub-cate">정원</label>
					<label class="radio-inline"><input type="radio" name="sub-cate">공방</label>
					<label class="radio-inline"><input type="radio" name="sub-cate">기타</label>
			    </div>
			    
			    <div id = "cate4" style="display:none;">
					<label class="radio-inline"><input type="radio" name="sub-cate">공방</label>
					<label class="radio-inline"><input type="radio" name="sub-cate">체험</label>
			    </div>   			    
			</div>
			
			<div class="form-group">
				<p><strong>성별</strong></p>
				<label class="radio-inline"><input type="radio" name="gender" value="남성">남</label>
				<label class="radio-inline"><input type="radio" name="gender" value="여성">여</label>
			</div>
			
			<div class="form-group">
				<p><strong>나이</strong></p>
				<label class="radio-inline"><input type="radio" name="age" value="20대">20대</label>
				<label class="radio-inline"><input type="radio" name="age" value="30대">30대</label>
				<label class="radio-inline"><input type="radio" name="age" value="40대">40대</label>
				<label class="radio-inline"><input type="radio" name="age" value="50대">50대</label>
				<label class="radio-inline"><input type="radio" name="age" value="60대 이상">60대 이상</label>
				
			</div>
			
			<div class="form-group">
				<label for="reputaion">평점(점 이상, 범위: 0 ~ 5.0)</label><br><input type="text" name="reputaion"> 
			</div>
			
			<div class="form-group">
				<label for="budget">예산(원)</label><br><input type="text" name="budget">
			</div>

			<button type="submit" class="btn">추천받기</button>
		</form>
	</div>


<!-- 기능 -->
<script>
//jquery radio event처리하기
$("input[name='genre']").change(function() {
	// 살거리 선택 시
	// checked 되었는지 확인하고,
	if($("input[name='genre']:checked").val() == '살거리') {
		// 해당 카테고리인 cate1만 보여주기
		$('#cate1').show();
		$('#cate2').hide();
		$('#cate3').hide();
		$('#cate4').hide();
	}
	// 먹거리 선택 시
	else if($("input[name='genre']:checked").val() == '먹거리') {
		$('#cate1').hide();
		$('#cate2').show();
		$('#cate3').hide();
		$('#cate4').hide();	
	}
	// 볼거리 선택 시
	else if($("input[name='genre']:checked").val() == '볼거리') {
		$('#cate1').hide();
		$('#cate2').hide();
		$('#cate3').show();
		$('#cate4').hide();	
	}
	// 할거리 선택 시
	else {
		$('#cate1').hide();
		$('#cate2').hide();
		$('#cate3').hide();
		$('#cate4').show();	
	}
	
})
 
</script>
		 


</body>
</html>