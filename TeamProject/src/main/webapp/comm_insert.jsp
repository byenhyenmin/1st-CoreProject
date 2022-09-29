<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Contact</title>
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
   
.jumbotron {
   display: flex;
    align-items: center;
   justify-content: center;
   background-image: url("assets/images/contact-bg.jpg");
}

body{
    background-image: url("http://img.kwangju.co.kr/upimages/gisaimg/202208/29_742725.jpg");
    background-repeat: no-repeat;
    background-size: cover ;
        }

.panel-body{
    background-color: whitesmoke;
    opacity: 0.94;



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
  
  <br><br>
  
  
    <div class="panel-body">
            
        <form action="Insert.do" enctype="multipart/form-data" method="post">
          <div class="form-group">
            <label style="color:green ;">제목:</label>
            <input type="text" class="form-control" name="title">
          </div>
          
          <div class="form-group">
            <label style="color: green;" >작성자:</label>
            <input type="text" class="form-control" name="writer">
          </div>
         
         <div class="form-group">
         
         <label>첨부파일</label>
         <input type="file" name = "file">
         </div>
         
         
         
         
          <div class="form-group">
            <label >내용:</label>
            <textarea rows="10" class="form-control" name="content" ></textarea>
          </div>
                  
            <button type="submit" class="btn btn-primary btn-sm">글쓰기</button>
        </form>
        
    
    <div>


</body>
</html>