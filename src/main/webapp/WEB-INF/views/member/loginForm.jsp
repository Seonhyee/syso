<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />


<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google_signin-client_id"
	content="366969642046-4tptfo9df9qsjjq2h0d8jpkpont3odna.apps.googleusercontent.com">

<title>프로젝트명</title>
<!--[if lt IE 9]>
      <script src="js/html5.js"></script>
   <![endif]-->

<link href="./resources/css/common.css" rel="stylesheet" type="text/css">
<link href="./resources/css/header.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="./resources/css/slick.css">
<link rel="stylesheet" type="text/css" href="./resources/css/member.css">
<script src="./resources/js/jquery-3.1.1.min.js"></script>
<script src="./js/toggle.js"></script>


</head>

<body>

	<div class="bar">
		<ul>
			<li id="btn"><img src="./resources/images/alarm.svg">

				<ul id="layer">
					<li><a href="#">""님이 구매하셨습니다</a></li>
					<li><a href="#">""님이 구매하셨습니다</a></li>
					<li><a href="#">""님이 구매하셨습니다</a></li>
				</ul></li>
			<li><a href="#"><img src="./resources/images/redheart.svg"></a></li>

			<li><a href="#">TOP</a></li>
		</ul>
	</div>
	<header id="header">
		<nav id="nav">
			<div id="wrap">
				<div class="login">

					<ul>
						<li><a href="#" class="sig-color">로그인</a></li>
						<li><a href="/syso/join" class="sig-color">회원가입</a></li>
					</ul>


				</div>
				<h1 id="logo">
					<a href="/syso/"><img src="./resources/images/main_logo.svg"></a>
				</h1>

				<div class="search_wrap">
					<div class="search_area">
						<input type="text" class="search" placeholder="상품명,지역명,@상점명 입력">
						<a href="#" class="search_img"><img
							src="./resources/images/home_search.svg"></a>
					</div>


				</div>
				<div class="nav_right">
					<ul>
						<li><img src="./resources/images/money.svg"> 판매하기</li>
						<li><img src="./resources/images/shop.svg">내상점</li>

						<li><img src="./resources/images/talk.svg">시소톡</li>

						<li id="btn2"><img src="./resources/images/hamburg.svg">카테고리

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



							</ul></li>

					</ul>
				</div>

			</div>

		</nav>

	</header>

	<section id="sec1">
		<div class="wrap2">
			<article class="go">
				<ul class="gotoJoin">
					<li class="normal">계정이 없으신가요?</li>
					<li class="sig-color"><a href="joinForm.html">회원가입</a></li>
				</ul>
			</article>


			<article class="loginform">


				<form action="" method="post">
					<div class="position">

						<label> <img src="./resources/images/id.svg"> <input type="text">
						</label>
					</div>
					<div class="position">
						<img src="./resources/images/key.svg"> <label> <input
							type="password">

						</label>
					</div>

					<input type="submit" value="로그인">

					<div id="google-box" data-onsuccess="onSignIn">
						<img id="icon-img"
							src="https://t1.daumcdn.net/cfile/tistory/99D8AF415B743DB636">
						<span class="google_txt"><a> 구글로 시작하기</a></span>
					</div>






				</form>

				<a href="#"><p class="forget sig-color">비밀번호를 잊으셨나요?</p></a>


			</article>
		</div>
	</section>

	<footer id="footer">

		<div id="wrap">
			<div class="copy">
				<p>
					ⓒ2021 Team <span class="sig-color">SYSO</span>
				</p>
				<p>Designed by Kys</p>
			</div>
		</div>

	</footer>



	<script type="text/javascript">
		function onSignIn(googleUser) {
			var access_token = googleUser.getAuthResponse().access_token
			$.ajax({
				// people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
				url : 'https://people.googleapis.com/v1/people/me'
				// key에 자신의 API 키를 넣습니다.
				,
				data : {
					personFields : 'birthdays',
					key : 'AIzaSyDoREFdfmhSSGCcZTN-mE2ZIjAbx6kkVmM',
					'access_token' : access_token
				},
				method : 'GET'
			}).done(function(e) {
				//프로필을 가져온다.
				var profile = googleUser.getBasicProfile();
				console.log(profile)
			}).fail(function(e) {
				console.log(e);
			})
		}
		function onSignInFailure(t) {
			console.log(t);
		}
	</script>


</body>

</html>
