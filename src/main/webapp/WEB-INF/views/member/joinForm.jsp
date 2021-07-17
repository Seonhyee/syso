<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <title>시소마켓 - 회원가입</title>
     
        <link rel="stylesheet" href="resources/css/common.css">
         <link rel="stylesheet" href="resources/css/join.css">
         <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <script type="text/javascript">
            
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
        <!-- header -->
        <div id="header">
            <a href="home"><h1 id="logo" class="sig-color">SYSO</h1></a>
        </div>


        <!-- wrapper -->
        <div id="wrapper">

            <!-- content-->
            <div id="content">

                <form action="joinPro" method="post" role="form" name="join">
                <!-- ID -->
                    <fieldset>
                <div>
                    <h3 class="join_title">
                        <label for="id">아이디<span class="sig-color">*</span></label>
                    </h3>
                    <span class="box int_id">
            
                        <input type="text" id="id" class="int" name="member_id" maxlength="20">
                       <button type="button" class="email_sub" id="idCheck">중복확인</button>
                        
                    </span>
                    <span class="error_next_box"></span>
                    
                </div>

                <!-- PW1 -->
                <div>
                    <h3 class="join_title"><label for="pswd1">비밀번호<span class="sig-color">*</span></label></h3>
                    <span class="box int_pass">
                        <input type="password" id="pswd1" class="int" name="member_password" maxlength="20">
                                                <span id="alertTxt">사용불가</span>
                        
                        <img src="resources/images/m_icon_pass.png" id="pswd1_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- PW2 -->
                <div>
                    <h3 class="join_title"><label for="pswd2">비밀번호 재확인<span class="sig-color">*</span></label></h3>
                    <span class="box int_pass_check">
                        <input type="password" id="pswd2" class="int" maxlength="20">
                        <img src="resources/images/m_icon_check_disable.png" id="pswd2_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>
                <!-- nickname -->
                          <div>
                    <h3 class="join_title"><label for="name">닉네임<span class="sig-color">*</span></label></h3>
                    <span class="box int_name">
                        <input type="text" id="nickName" class="int" name="member_nickname" maxlength="20">
                    </span>
                       <span class="error_next_box"></span>
                   
                </div>
                        
                <!-- NAME -->
                <div>
                    <h3 class="join_title"><label for="name">이름<span class="sig-color">*</span></label></h3>
                    <span class="box int_name">
                        <input type="text" id="name" class="int" name="member_name" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                
                <!-- Post -->
                  <div class="post">
                    <h3 class="join_title"><label for="name">주소<span class="sig-color">*</span></label></h3>
                    <span class="box int_name mar">
                         <input id="member_post"  type="text" placeholder="우편번호(클릭)" name="member_zipcode" readonly onclick="findAddr()"  required maxlength="20" class="int color">
                    </span>

                    <span class="box int_name mar">
                         <input id="member_addr" type="text" name="member_address" placeholder="주소" readonly required class="int">
                    </span>

                      <span class="box int_name">
                    <input type="text" placeholder="상세주소"  name="member_addressDetail" id="addrD" class="int">
                    </span>


                    <span class="error_next_box"></span>
                </div>

                <!-- EMAIL -->
                <div>
                    
                    <h3 class="join_title"><label for="email">본인확인 이메일<span class="sig-color">*</span></label></h3>
                    <span class="box int_email mar">
                        <input type="text" id="email" class="int" name="member_email" maxlength="100" placeholder="필수입력">
                       
                       
                    </span>
                 
                    
                </div>

                <!-- MOBILE -->
                <div>
                    <h3 class="join_title"><label for="phoneNo">휴대전화&nbsp;<span class="sig-color">*</span></label></h3>
                    <span class="box int_mobile">
                        <input type="tel" id="mobile" class="int" maxlength="16" placeholder="전화번호 입력" name="member_phone">
                    </span>
                    <span class="error_next_box"></span>    
                </div>
                <!--POINT -->
                <div>
                    <h3 class="join_title"><label for="phoneNo">추천인&nbsp;<span class="normal">(선택사항)</span></label></h3>
                    <span class="box int_mobile">
                        <input type="text" id="invited" class="int" maxlength="16" value="추천인아이디" name="member_inviteID">
                    </span>
                       
                </div>


                <!-- JOIN BTN-->
                <div class="btn_area">
                    <button type="button" id="btnJoin" onclick="checkfield();" >
                        <span>가입하기</span>
                    </button>
                </div>

                    </fieldset>
                </form>
                       <div id="footer">
            <p>ⓒ2021 Team <span class="sig-color">SYSO</span></p>
            Designed by Kys
        </div>
            </div> 

            <!-- content-->

        </div> 
       
        <!-- wrapper -->


	

              <script src="resources/js/join.js"></script>
   
    </body>
</html>