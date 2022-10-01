<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title></title>
    </head>
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
            if(document.getElementById('pw').value !='' && document.getElementById('pw2').value!=''){
                if(document.getElementById('pw').value==document.getElementById('pw2').value){
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
    <style>
        td{padding:5px;}
    </style>
    <body>
        <form action= "join.do" style="padding: 15%" method="post">
        <table  align="center">
            <tr>
               
                <td width="40%">아이디</td>
                <td><input type="text" name ="userId" id="id" ></td>
            </tr>
            <tr >
                <td width="20%">비밀번호</td>
                <td><input type="password" name="userPW" id="pw" onchange="check_pw()"></td>
            </tr>
            <tr>
                <td width="20%">비밀번호 확인</td>
                <td><input type="password" name="userPW2" id="pw2" onchange="check_pw()">&nbsp;<span id="check"></span></td>
            </tr>
            <tr >
                <td width="20%">생년월일</td>
                <td><input type="date" name = "birth" ></td>
            </tr>
           <tr >
                <td width="20%">성별</td>
                <td><select type="radio" name="gender1" id="gender">
                <option name ="gender" value="M">남</option> 
                <option name ="gender" value="F">여</option> 
                </select></td>
                
            </tr>
           <tr><td>
           <button type="submit" class="btn">가입하기</button></td></tr>
        </table>
           </form>
        
    </body>
</html>