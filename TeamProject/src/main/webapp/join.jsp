<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
<body>

	<br>
	<br>
	<div class="container">
		<form action="#">
			<div class="form-group">
				<label for="id">���̵�</label> <input type="text" class="form-control"
					name="id">
			</div>

			<div class="form-group">
				<label for="pw1">��й�ȣ</label> <input type="password"
					class="form-control" name="pw">
			</div>

			<div class="form-group">
				<label for="pw2">��й�ȣ ��Ȯ��</label> <input type="password"
					class="form-control" name="pw-check">
			</div>

			<div class="form-group">
				<label for="name">�̸�</label> <input type="password"
					class="form-control" name="pw-check">
			</div>

			<div class="form-group">
				<label for="birth">�������</label> <input type="date"
					class="form-control" name="birth">
			</div>

			<div class="form-group">
				<label for="gender">����</label> <select class="radio">
					<option name="gender">��</option>
					<option name="gender">��</option>
				</select>
			</div><br>

			<button type="submit" class="btn">�����ϱ�</button>
		</form>
	</div>

</body>
</html>
