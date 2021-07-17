<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />

<title>프로젝트명</title>
  <!--[if lt IE 9]>
      <script src="js/html5.js"></script>
   <![endif]-->
  
<link href="resources/css/common.css" rel="stylesheet" type="text/css">
    <link href="resources/css/header.css" rel="stylesheet" type="text/css">


<script src="resources/js/jquery-3.1.1.min.js"></script>
<script src="js/main.js"></script>
<style>
    #wrap{
        width: 1024px;
        margin: 0 auto;
        
    }
    section{
        padding-top: 200px;
    }
    h1{
        font-size: 50px;
    }
    .textarea_{
        margin-top: 50px;
        margin-left: 50px;
        font-size: 20px;
        line-height: 2.5rem;
    }
    .footer{
        text-align: center;
        margin-top:350px;
    }
    </style>
    
</head>

<body >
  <header id="header">
    <nav id="nav">
         <div id="wrap">
                <div class="login">

    <ul>
        <li><a href="#" class="sig-color">로그인</a></li>
        <li><a href="#" class="sig-color">회원가입</a></li>
        </ul>


    </div>
             <h1 id="logo"><a href="home"><img src="resources/images/main_logo.svg"></a></h1>

        <div class="search_wrap">
        <div class="search_area">
            <input type="text" class="search" placeholder="상품명,지역명,@상점명 입력">
        <a href="#" class="search_img"><img src="resources/images/home_search.svg"></a>
        </div>


             </div>
             <div class="nav_right">
             <ul>
                 <li>
               <a href="sell"><img src="resources/images/money.svg"> 판매하기
                     </a></li>
                 <li>
                 <img src="resources/images/shop.svg">내상점
                 </li>

                 <li>
                 <img src="resources/images/talk.svg">시소톡
                 </li>

                 <li id="btn2">
                 <img src="resources/images/hamburg.svg">카테고리

                    <ul id="layer2">
                        <li class="strong"><a href="#">전체 카테고리</a></li>


                        <li><a href="#">여성의류</a></li>
                        <li><a href="#">패션잡화</a></li>
                        <li><a href="#">남성의류</a></li>
                        <li><a href="#">디지털/가전</a></li>
                        <li><a href="#">도서/티켓/취미/반려</a></li>
                        <li><a href="#">스타굿즈</a></li>
                        <li><a href="#">생활/문구/가구/식품</a></li>
                        <li><a href="#">스포츠/레저</a></li>
                        <li><a href="#">뷰티/미용</a></li>
                        <li><a href="#">유아동/출산</a></li>
                        <li><a href="#">차량/오토바이</a></li>
                        <li><a href="#">기타</a></li>

                     </ul>


                 </li>

                 </ul>
             </div>

        </div>

      </nav>


    </header>    
    
<div id="wrap">

  <section>
<h1 class="sig-color">SYSO</h1>
      <div class="textarea_">
          <p class="txt1"><span class="sig-color">시소마켓</span>회원 가입을 축하드립니다. </p>
          <span class="sig-color">${vo.id}</span>님 회원가입에 감사드립니다.
          <p class="txt2">모든 서비스를 이용하시기 위해 이메일 인증을 완료하여 주세요.</p>
          
        <p class="txt3">인증을 위해선 회원가입시 입력하신 이메일을 확인하여 주세요.</p>
      </div>
      
      
    </section>
    <div class="footer">
    <p class="copy">ⓒ 2021 <span class="sig-color">SYSO</span> All rights reserved.</p>
    </div>
 
    </div>
    
</body>

</html>
