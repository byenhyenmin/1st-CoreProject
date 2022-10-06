<%@page import="com.smhrd.model.MemberDTO"%>
<%@page import="com.smhrd.model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>mypage_memberinfo(ȸ����������)</title>
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
<body>

	<script>
        function check_pw(){
 
            var pw = document.getElementById('pw').value;
            var SC = ["!","@","#","$","%"];
            var check_SC = 0;
 
            if(pw.length < 6 || pw.length>16){
                window.alert('��й�ȣ�� 6���� �̻�, 16���� ���ϸ� �̿� �����մϴ�.');
                document.getElementById('pw').value='';
            }
            for(var i=0;i<SC.length;i++){
                if(pw.indexOf(SC[i]) != -1){
                    check_SC = 1;
                }
            }
            if(check_SC == 0){
                window.alert('!,@,#,$,% �� Ư�����ڰ� �� ���� �ʽ��ϴ�.')
                document.getElementById('pw').value='';
            }
            if(document.getElementById('pw').value !='' && document.getElementById('pw2').value!=''){
                if(document.getElementById('pw').value==document.getElementById('pw2').value){
                    document.getElementById('check').innerHTML='��й�ȣ�� ��ġ�մϴ�.'
                    document.getElementById('check').style.color='blue';
                }
                else{
                    document.getElementById('check').innerHTML='��й�ȣ�� ��ġ���� �ʽ��ϴ�.';
                    document.getElementById('check').style.color='red';
                }
            }
        }
    </script>



	<%
	MemberDTO loginDto = (MemberDTO) session.getAttribute("loginDto");
	%>

	<br>
	<br>
	<div class="container">
		<form action="update.do" method="post">
			<div class="form-group">
				<label for="id">���̵�</label> <input type="text" class="form-control"
					name="userId" value="<%=loginDto.getMem_id()%>"
					readonly="readonly">
			</div>

			<div class="form-group">
				<label for="pw1">��й�ȣ</label> <input type="password"
					class="form-control" name="userPw" id="pw">
			</div>

			<div class="form-group">
				<label for="pw2">��й�ȣ ��Ȯ��</label> <input type="password"
					class="form-control" name="userPw-check" id="pw_check">
			</div>

			<div class="form-group">
				<label for="birth">�������</label> <input type="text"
					class="form-control" name="birth"
					value="<%=loginDto.getMem_birthdate()%>" readonly="readonly">
			</div>

			<div class="form-group">
				<label for="gender">����</label> <input type="text"
					class="form-control" name="gender"
					value="<%=loginDto.getMem_gender()%>" readonly="readonly">
			</div>
			<br>

			<button type="submit" class="btn">�����ϱ�</button>
		</form>
	</div>

</body>
</html>
