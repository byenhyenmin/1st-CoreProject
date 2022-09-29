<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Community</title>
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
   


body{
           background-image: url("http://img.kwangju.co.kr/upimages/gisaimg/202208/29_742725.jpg");
           background-repeat: no-repeat;
           background-size: cover ;
         
        
        }






.jumbotron {
   
   -webkit-text-size-adjust: 100%;
    word-wrap: break-word;
    font-size: 1.4rem;
    line-height: 1.4;
    color: #2b2b2b;
    font-family: CustomFont, "맑은 고딕", "Malgun Gothic", 돋움, Dotum, sans-serif;
    word-break: keep-all;
    margin: 0 auto;
    width: 100%;
    max-width: 1240px;
    padding: 0 20px;
    box-sizing: border-box;
    margin-top: 20px;
    opacity: 0.94;
   padding-bottom: 50px;
  display: flex;
}

.panel-footer {
   
   position: relative;
   display: flex;
   justify-content: center;



}

.panel-default {
   



}


.btn-sm {
 display: flex;

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
            <a class="navbar-brand" href="#myPage"><strong>시장 어디까지
                  가 봤니</strong></a>
         </div>
         <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">

               <!-- 메뉴 -->
               <li class="dropdown"><a class="dropdown-toggle"
                  data-toggle="dropdown" href="#">살거리 <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                     <li><a href="#">카테고리1</a></li>
                     <li><a href="#">카테고리2</a></li>
                     <li><a href="#">카테고리3</a></li>
                  </ul></li>

               <li class="dropdown"><a class="dropdown-toggle"
                  data-toggle="dropdown" href="#">먹거리 <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                     <li><a href="#">카테고리1</a></li>
                     <li><a href="#">카테고리2</a></li>
                     <li><a href="#">카테고리3</a></li>
                  </ul></li>

               <li class="dropdown"><a class="dropdown-toggle"
                  data-toggle="dropdown" href="#">볼거리 <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                     <li><a href="#">행사</a></li>
                     <li><a href="#">공연</a></li>
                     <li><a href="#">전시</a></li>
                  </ul></li>

               <li><a href="#contact">커뮤니티</a></li>
               <li><a href="#myPage">마이페이지</a></li>
               <li><a href="#join">회원가입</a></li>

               <li class="dropdown"><a class="dropdown-toggle"
                  data-toggle="dropdown" href="#">language <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                     <li><a href="#">한국어</a></li>
                     <li><a href="#">English</a></li>
                  </ul></li>

               <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
            </ul>
         </div>
      </div>
   </nav>

  <div class="jumbotron">
    
 
   
    <div class = "container">
      <div class="panel panel-default">
        <div class="panel-footer"><h2>시장 커뮤니티</h2></div>
         
      <div >
      
    <table class="table table-striped table-hover">
       <tr>
          <th>제목</th>
          <th>작성자</th>
          <th>작성일</th>
       
       </tr>
  <!-- el 표현식을 활용하면 scope영역에 객체바인딩 된 데이터를 바로 꺼내올 수 있다. -->
  
  <c:forEach var="board" items="${list}">
       
       <tr>
          <td><a href = "SelectOne.do?boardnum=${board.board_num}">${board.title}</a></td>
          <td>${board.writer}</td>
          <td>${board.wd}</td>
            <td> <button onclick="location.href='DeleteCon.do?boardnum=${board.board_num}'" >삭제</button></td>
       </tr>
  
  </c:forEach>
  
       <tr align="right">
       <td colspan="3">
             <button onclick="location.href='GoInsert.do'" class = "btn-primary btn-sm">글쓰기</button>
       </td>
       </tr>
        
         
    
  
    </table>
      </div>
  <div class = "panel-footer"><b>에티켓을 지킵시다</b></div>     
      
      
      
      </div>
    </div>


</div>




</body>
</html>