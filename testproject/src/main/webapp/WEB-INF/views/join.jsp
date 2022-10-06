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

<!-- 회원가입 폼 CSS -->
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
	<script>
        function check_pw(){
 
            var pw = document.getElementById('pw').value;
            var SC = ["!","@","#","$","%"];
            var check_SC = 0;
 
            if(pw.length < 6 || pw.length>16){
                window.alert('비밀번호는 6글자 이상, 16글자 이하만 이용 가능합니다.');
                document.getElementById('pw').value='';
            }
            for(var i=0;i<SC.length;i++){
                if(pw.indexOf(SC[i]) != -1){
                    check_SC = 1;
                }
            }
            if(check_SC == 0){
                window.alert('!,@,#,$,% 의 특수문자가 들어가 있지 않습니다.')
                document.getElementById('pw').value='';
            }
            if(document.getElementById('pw').value !='' && document.getElementById('pw_check').value!=''){
                if(document.getElementById('pw').value==document.getElementById('pw_check').value){
                    document.getElementById('check').innerHTML='비밀번호가 일치합니다.'
                    document.getElementById('check').style.color='blue';
                }
                else{
                    document.getElementById('check').innerHTML='비밀번호가 일치하지 않습니다.';
                    document.getElementById('check').style.color='red';
                }
            }
        }
    </script>
    
<!-- 회원가입 폼 -->    
	<div class="container">
		<form action="join.do" method="post">
			<div class="form-group">
				<label for="id">아이디</label> <input type="text" class="form-control"
					name="userId">
			</div>

			<div class="form-group">
				<label for="pw1">비밀번호</label> <input type="password"
					class="form-control" name="userPw" id="pw" onchange="check_pw()">
			</div>

			<div class="form-group">
				<label for="pw2">비밀번호 재확인</label> <input type="password"
					class="form-control" name="userPw-check" id="pw_check"
					onchange="check_pw()">&nbsp;<span id="check"></span>
			</div>

			<div class="form-group">
				<label for="birth">생년월일</label> <input type="date"
					class="form-control" name="birth">
			</div>

			<div class="form-group">
				<label for="gender">성별</label><br>
					<input type="radio" name="gender" value="M">남
					<input type="radio" name="gender" value="F">여
				</select>
			</div>
			<br>

			<button type="submit" class="btn">가입하기</button>
		</form>
	</div>




</body>
</html>