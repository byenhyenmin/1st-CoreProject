<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Join</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

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
</style>

</head>
<script>
		function isSame() {    
			var pw = document.getElementById('pw').value; 
			var confirmPW = document.getElementById('pw-check').value;   
			
			if (pw.length < 6 || pw.length <16) {
				window.alert('비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.');        
            	document.getElementById('pw').value=document.getElementById('pw-check').value='';        
            	document.getElementById('same').innerHTML='';}
			    
            if(document.getElementById('pw').value !='' && document.getElementById('pw-check').value !='') {
            	if(document.getElementById('pw').value==document.getElementById('pw-check').value) {
            		document.getElementById('same').innerHTML='비밀번호가 일치합니다.';            
            		document.getElementById('same').style.color='blue';
            	}else {
            		document.getElementById('same').innerHTML='비밀번호가 일치하지 않습니다.';            
            		document.getElementById('same').style.color='red';}}}
			
</script>


<body>



	<br>
	<br>
	<div class="container">
		<form action="join.do" name="join">
			<div class="form-group">
				<label for="id">아이디</label> <input type="text" class="form-control"
					name="id">
			</div>

			<div class="form-group">
				<label for="pw1">비밀번호</label> <input type="password"
					class="form-control" name="pw"  onchange="isSame()"/>
			</div>

			<div class="form-group">
				<label for="pw2">비밀번호 재확인</label><input type="password"
					class="form-control" name="pw-check"  onchange="isSame()"/> &nbsp; <span id="same"></span>
				
			</div>


			<div class="form-group">
				<label for="birth">생년월일</label> <input type="date"
					class="form-control" name="birth">
			</div>

			<div class="form-group">
				<label for="gender">성별</label> <select class="radio">
					<option name="gender">남</option>
					<option name="gender">여</option>
				</select>
			</div>
			<br>

			<button type="submit" class="btn">가입하기</button>
		</form>
	</div>

</body>
</html>
