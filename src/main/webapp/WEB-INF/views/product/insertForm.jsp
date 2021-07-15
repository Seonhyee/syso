<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />

<title>시소마켓 | 상품관리</title>
  <!--[if lt IE 9]>
      <script src="js/html5.js"></script>
   <![endif]-->

<link href="../resources/css/common.css" rel="stylesheet" type="text/css">
<link href="../resources/css/header.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../resources/css/upload.css">




<script src="../resources/js/jquery-3.1.1.min.js"></script>
<script src="../resources/js/jquery-ui.min.js"></script>
<script src="../resources/js/toggle.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
      function findAddr(){
		new daum.Postcode({
        	oncomplete: function(data) {
        	
      		  	console.log(data);
        	
      	     	// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
        	    // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
        	    // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
        	    var roadAddr = data.roadAddress; // 도로명 주소 변수
        	    var jibunAddr = data.jibunAddress; // 지번 주소 변수
        	    // 우편번호와 주소 정보를 해당 필드에 넣는다.
        	    document.getElementById('member_post').value = data.zonecode;
            	if(roadAddr !== ''){
	                document.getElementById("member_addr").value = roadAddr;
    	        } 
        	    else if(jibunAddr !== ''){
            	    document.getElementById("member_addr").value = jibunAddr;
           		}
        	}
    	}).open();
	}

    </script>


</head>

<body>

<div class="bar">
    <ul>
    <li id="btn">
        <img src="../resources/images/alarm.svg">

        <ul id="layer">
      <li><a href="#">""님이 구매하셨습니다</a></li>
      <li><a href="#">""님이 구매하셨습니다</a></li>
      <li><a href="#">""님이 구매하셨습니다</a></li>
    </ul>


        </li>
        
           <li>
            
            <a href="#"><img src="../resources/images/redheart.svg"></a>
        </li>
        
        
        <li>
        <a href="#">TOP</a>
        </li>
    </ul>
    </div>
  <header id="header">
    <nav id="nav">
         <div id="wrap">
                <div class="login">

    <ul>
		<li><a href="/syso/login" class="sig-color">로그인</a></li>
        <li><a href="/syso/join" class="sig-color">회원가입</a></li>    
    </ul>


    </div>
             <h1 id="logo"><a href="/syso/"><img src="../resources/images/main_logo.svg"></a></h1>

        <div class="search_wrap">
        <div class="search_area">
            <input type="text" class="search" placeholder="상품명,지역명,@상점명 입력">
        <a href="#" class="search_img"><img src="../resources/images/home_search.svg"></a>
        </div>


             </div>
             <div class="nav_right">
             <ul>
                 <li>
           		    <a href="/syso/item/insert"><img src="../resources/images/money.svg"> 판매하기 </a>
                 </li>
                 <li>
                 	<a href="/syso/shop/item"><img src="../resources/images/shop.svg">내상점</a>
                 </li>

                 <li>
                 	<a href=""><img src="../resources/images/talk.svg">시소톡</a>
                 </li>

                 <li id="btn2">
                 <img src="../resources/images/hamburg.svg">카테고리

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
<section id="sec1">
    <div id="wrap">
  <div id="tabs">
      <ul>
          <li class="me on"><a href="#tabs-1">상품등록 </a></li>
          <li class="me"><a href="#tabs-2">상품관리</a></li>
          
          <li class="me"><a href="#tabs-3">구매/판매 내역</a></li> </ul>
      
      
      
      <div id="tabs-1"> 
          <h1 class="title">기본정보&nbsp;&nbsp;
          <span class="sig-color">*필수항목</span>
          </h1>
          
          <form action="#" class="post_form">
      
                <div class="title">
                    상품이미지
                </div>
                <div class="preview">
                    <div class="upload">
                     <label className="input-file-button" for="id_photo">

                        <div class="post_btn">
                            <div class="plus_icon">
                                <span></span>
                                <span></span>
                            </div>
                            <p>이미지 등록</p>
                            <canvas id="imageCanvas"></canvas>
                            <!--<p><img id="img_id" src="#" style="width: 300px; height: 300px; object-fit: cover" alt="thumbnail"></p>-->
                        </div>
                        </label>
                    </div>
                </div>
                <p>
                <label className="input-file-button" for="id_photo">
                <a class="pointer">
                    <img src="../resources/images/pictures.svg" class="file_sel_img">
                    </a>
                    <span class="info">상품 이미지는 640x640에 최적화 되어 있습니다.</span>

                </label>
                    <label className="title">
                        <p>
                    <input type="text" placeholder="제목을 입력해주세요." class="product_title" name="title" required>
                        </p>
                        
                        
                    </label>
                </p>
                  <input type="file" name="photo" id="id_photo" required="required">
                
                <p>
                    <textarea name="content" id="text_field" cols="50" rows="5" placeholder="상품 설명을 입력해주세요." required></textarea>

                </p>
              
              <p class="now1">
                  <label class="sel_category">
              카테고리<span class="sig-color">*</span>
                  <select class="select_area" name="category" required>
                      <option value="">전체카테고리</option>
                      <option value="">여성의류</option>
                      <option value="">패션잡화</option>
                      <option value="">남성의류</option>
                      <option value="">디지털/가전</option>
                      <option value="">도서/티켓/취미/반려</option>
                      <option value="">스타굿즈</option>
                      <option value="">생활/문구/가구/식품</option>
                      <option value="">스포츠/레저</option>
                      <option value="">뷰티/미용</option>
                      <option value="">유아동/출산</option>
                      <option value="">차량/오토바이</option>
                      <option value="">기타</option>
                  
                  </select>
                  </label>
              </p>
              
              <div class="now2">
       <p class="add_title">
                   거래지역<span class="sig-color">*</span>
                  </p>
                  
               <label>
               
					
                  
        <input id="member_post"  type="text" placeholder="우편번호" readonly onclick="findAddr()" required>
                  
        <input id="member_addr" type="text" placeholder="주소" readonly required>
                  <br>

                    <p class="detail_add">
                         <input type="text" placeholder="상세주소"  name="detail_addr">
                  </label>
              
                  </div>
              
              
              
                 <div class="now3">
                     
                     <div class="txt_area">
                   상품상태<span class="sig-color">*</span>
                    
                         
                     </div>
              <label>
                     <div class="ckbox_area">
                        
                      <input type="radio" name="oldnew" value="old">&nbsp;중고상품&nbsp;
                          <input type="radio" name="oldnew" value="new">&nbsp;새상품
                     </div>
                     </label>
              </div>
              
              
              
                 <div class="now4">
                   <div class="txt_area">
                   교환<span class="sig-color">*</span>
                    
                         
                     </div>
              <label>
                     <div class="ckbox_area">
                        
                      <input type="radio" name="change" value="cant">&nbsp;교환불가&nbsp;
                          <input type="radio" name="change" value="can">&nbsp;교환가능
                     </div>
                     </label>
                     </div>
              
              
                 <div class="now5">
                      <div class="txt_area">
                   가격<span class="sig-color">*</span>
                    
                         
                     </div>
              <label>
                  <input type="text" placeholder="숫자만 입력해주세요" name="price">원&nbsp;&nbsp;
                  <input type="checkbox" name="include">&nbsp;배송비 포함
                  
                  
                  </label>
              
              </div>
              
              
              <div class="now6">
              <div class="txt2_area">
                  <p>연관태그</p>
                  </div>
                  
                  <div class="input_area">
                  <input type="text" name="tag" placeholder="연관태그를 입력해주세요.(최대 5개)"><br>
                      <p class="tag_info">- 태그는 띄어 쓰기로 구분되며 최대 9자까지 입력할 수 있습니다.
                      </p>
                      
                    
                      
                  </div>
                  
                  
              </div>
              
              <div class="now7">
              <div class="txt2_area">
                  <p>수량</p>
                  </div>
                  
                  <div class="input_area">
                  <input type="text" name="tag" value="1" >&nbsp;개
                  </div>
                  
                  
                  
                  
              </div>
              
              
              
              
                <input class="submit_btn" type="submit" value="등록하기">
            </form>
          
      </div>
      
   <div id="tabs-2"> 
       
       <table>
       <thead>
           <tr>
           <td>사진</td>
            <td>판매상태</td>
               <td>상품명</td>
               <td>가격</td>
               <td>거래방식</td>
               <td>찜/댓글</td>
               <td>최근수정일</td>
               <td>기능</td>
           </tr>
           
           </thead>
           
           <tbody>
              <tr>
           <td>
                  <a href="">
               <img src="../resources/images/bear.jpg">
               </a>
                  </td>
                  
            <td>판매완료</td>
                  <td style="color: #396afc;"><a href="">곰돌이 팝니다</a></td>
                  
                  
               <td>130,000원</td>
               <td>직거래</td>
               <td>1/0</td>
               <td>2020/07-11</td>
               <td>
               		<a href="#" style="margin-bottom: 5px; color: orange">UP</a>
					<a href="#" style="margin-bottom: 5px;">수정</a>
                    <a href="#" style="color: red;">삭제</a>
                  </td>
           </tr>
               
                 <tr>
           <td>
                  <a href="">
               <img src="../resources/images/inyoung.jpg">
               </a>
                  </td>
                  
            <td>판매완료</td>
                  <td style="color: #396afc;"><a href="">인영이 팝니다</a></td>
                  
                  
               <td>0원</td>
               <td>직거래</td>
               <td>1/0</td>
               <td>2020/07-11</td>
               <td>
					<a href="#" style="margin-bottom: 5px; color: orange">UP</a>
					<a href="#" style="margin-bottom: 5px;">수정</a>
                    <a href="#" style="color: red;">삭제</a>
               </td>
           </tr>
           
           </tbody>
       
       </table>
       
       
      </div>
      
      <div id="tabs-3">
  
            <div id="tabs2">
      <ul>
          <li class="me on"><a href="#tabs2-1">구매내역 </a></li>
          <li class="me"><a href="#tabs2-2">판매내역</a></li>
          
         </ul>
                
                <div id="tabs2-1" >
                <div class="purchased_box">
                    <a href="">
                    <div class="purchased">
                    <div class="purchased_pro">
                        <img src="../resources/images/apeach.jpg">
                        <span class="overimg">
                        <img src="../resources/images/check.svg">
                        거래완료
                        </span>
                        
                        </div>
                    <aside class="what">
                        <span class="what1">어피치 판매합니다 어피치 좋아요</span>
                        
                        
                        <span class="what2">
                        <strong>39,900</strong>원
                        </span>
                        
                        <span class="what3">
                        카카오
                        </span>
                        <span class="what4">
                        <time datetime="">
                            2021.07.11 (오후 20시:11)
                            </time>
                        </span>
                        
                        
                        </aside>
                        
                    </div>
                    </a>
                    </div>
                    
                      <div class="purchased_box">
                    <div class="purchased">
                    <div class="purchased_pro">
                        <img src="../resources/images/apeach.jpg">
                        <span class="overimg">
                        <img src="../resources/images/check.svg">
                        거래완료
                        </span>
                        
                        </div>
                    <aside class="what">
                        <span class="what1">어피치 판매합니다 어피치 좋아요</span>
                        
                        
                        <span class="what2">
                        <strong>39,900</strong>원
                        </span>
                        
                        <span class="what3">
                        카카오
                        </span>
                        <span class="what4">
                        <time datetime="">
                            2021.07.11 (오후 20시:11)
                            </time>
                        </span>
                        
                        
                        </aside>
                        
                    </div>
                    </div>
                
                    
                </div>
                
                <div id="tabs2-2">
                <h1 class="notready">
                    판매 내역이 없습니다.
                    </h1>
                </div>
          
          
          </div>
  
      </div>
 
      
    </div>
    

    </div>
</section>


<footer id="footer">
    
    <div id="wrap">
        <div class="copy">
            <p>ⓒ2021 Team <span class="sig-color">SYSO</span></p>
        <p>Designed by Kys</p>
        </div>
    </div>
    
    </footer>
  

    </body>
    <script>
 $( function() { 
     $( "#tabs" ).tabs(); 
   
     $('.me').click(function(){
         $('.me').removeClass('on');
         $(this).addClass('on');
     });
     
         $( "#tabs2" ).tabs(); 
   
     $('.me').click(function(){
         $('.me').removeClass('on');
         $(this).addClass('on');
     });
     
     
     
     var fileInput  = document.querySelector( "#id_photo" ),
           button     = document.querySelector( ".input-file-trigger" ),
           the_return = document.querySelector(".file-return");

       // Show image
       fileInput.addEventListener('change', handleImage, false);
       var canvas = document.getElementById('imageCanvas');
       var ctx = canvas.getContext('2d');


        function handleImage(e){
           var reader = new FileReader();
           reader.onload = function(event){
               var img = new Image();
               // var imgWidth =
               img.onload = function(){
                   canvas.width = 300;
                   canvas.height = 300;
                   ctx.drawImage(img,0,0,300,300);
               };
               img.src = event.target.result;
               // img.width = img.width*0.5
               // canvas.height = img.height;
           };
           reader.readAsDataURL(e.target.files[0]);
       }
     

     
           
              }) ; 

</script>
    </html>
