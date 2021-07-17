



var id = document.querySelector('#id');

var pw1 = document.querySelector('#pswd1');
var pwMsg = document.querySelector('#alertTxt');
var pwImg1 = document.querySelector('#pswd1_img1');

var pw2 = document.querySelector('#pswd2');
var pwImg2 = document.querySelector('#pswd2_img1');
var pwMsgArea = document.querySelector('.int_pass');


var userName = document.querySelector('#name');
var nickName = document.querySelector('#nickName');

var addrD = document.querySelector('#addrD');

var email = document.querySelector('#email');

var mobile = document.querySelector('#mobile');

var error = document.querySelectorAll('.error_next_box');

var errorCount = 1;



/*이벤트 핸들러 연결*/




id.addEventListener("focusout", checkId);
pw1.addEventListener("focusout", checkPw);
pw2.addEventListener("focusout", comparePw);
userName.addEventListener("focusout", checkName);
nickName.addEventListener("focusout", checkNickName);
mobile.addEventListener("focusout", checkPhoneNum);
email.addEventListener("focusout", isEmailCorrect);

var idCheck = false;
var pwCheck = false;
var nameCheck = false;
var nickNameCheck = false;
var emailCheck = false;
var adressCheck = false;
var emaildoubleCheck = false;
var checkphone = false;





function checkId() {
	var idPattern = /[a-zA-Z0-9_-]{5,20}/;
	if (id.value === "") {
		error[0].innerHTML = "필수 정보입니다.";
		error[0].style.display = "block";

	} else if (!idPattern.test(id.value)) {
		error[0].innerHTML = "5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
		error[0].style.display = "block";

	}
	else {
		error[0].innerHTML = "멋진 아이디네요!";
		error[0].style.color = "#08A600";
		error[0].style.display = "block";
	}

}
//    		$.ajax({
//    			async: true, type: 'POST', data: mem_id,
//    			url: 'idcheck.do', dateType: 'json',
//    			contentType: "application/json; charset=UTF-8",
//    			success: function(data) {
//				if (data.cnt > 0) {
//    					error[0].innerHTML = "아이디 중복입니다.";
//    					error[0].style.display = "block";
//    					idCheck = false;
//    				}
//		}
//    		});

function checkPw() {
	var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
	if (pw1.value === "") {
		error[1].innerHTML = "필수 정보입니다.";
		error[1].style.display = "block";
		pwCheck = false;
	} else if (!pwPattern.test(pw1.value)) {
		error[1].innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
		pwMsg.innerHTML = "사용불가";
		pwMsgArea.style.paddingRight = "93px";
		error[1].style.display = "block";

		pwMsg.style.display = "block";
		pwImg1.src = "resources/images/m_icon_not_use.png";
	} else {
		error[1].style.display = "none";
		pwMsg.innerHTML = "안전";
		pwMsg.style.display = "block";
		pwMsg.style.color = "#03c75a";
		pwImg1.src = "resources/images/m_icon_safe.png";
	}
}


function comparePw() {
	if (pw2.value === pw1.value && pw2.value != "") {
		pwImg2.src = "resources/images/m_icon_check_enable.png";
		error[2].style.display = "none";

	} else if (pw2.value !== pw1.value) {
		pwImg2.src = "resources/images/m_icon_check_disable.png";
		error[2].innerHTML = "똑같은 비밀번호를 입력하셔야죠^^;";
		error[2].style.display = "block";
	}

	if (pw2.value === "") {
		error[2].innerHTML = "필수 정보입니다.";
		error[2].style.display = "block";
	}
}

function checkNickName() {
	if (nickName.value === "") {
		error[3].innerHTML = "필수 정보입니다.";
		error[3].style.display = "block";
	} else {
		error[3].style.display = "none";

	}

}


function checkName() {
	var namePattern = /[a-zA-Z가-힣]/;
	if (userName.value === "") {
		error[4].innerHTML = "필수 정보입니다.";
		error[4].style.display = "block";
	} else if (!namePattern.test(userName.value) || userName.value.indexOf(" ") > -1) {
		error[4].innerHTML = "한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)";
		error[4].style.display = "block";
	} else {
		error[4].style.display = "none";
	}
}

function checkAdressDetail() {
	if (addrD.value === "") {
		error[5].innerHTML = "필수 정보입니다.";
		error[5].style.display = "block";
	} else {
		error[5].style.display = "none";
		
	}
	}


function isEmailCorrect() {
	var emailPattern = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/;

	if (email.value === "") {

		error[6].innerHTML = "필수 정보입니다.";
		error[6].style.display = "block";

	} else if (!emailPattern.test(email.value)) {
		error[6].innerHTML = "이메일 형식이 맞지않습니다.";
		error[6].style.display = "block";
	} else {
		error[6].style.display = "none";


	}

}

function checkPhoneNum() {
	var isPhoneNum = /([01]{2})([01679]{1})([0-9]{3,4})([0-9]{4})/;

	if (mobile.value === "") {
		error[7].innerHTML = "휴대폰 번호를 입력해주세요.";
		error[7].style.display = "block";

	} else if (!isPhoneNum.test(mobile.value)) {
		error[7].innerHTML = "형식에 맞지 않는 번호입니다.";
		error[7].style.display = "block";

	} else {
		error[7].style.display = "none";


	}

}

function checkfield() {
	if (id.value!=="" && pw1.value!=="" && userName.value!=="" && nickName.value!=="" && mobile.value!=="" && email.value!=="") {

		document.join.submit();

	} else {
		checkId();
		checkPw();
		comparePw();
		checkName();
		checkNickName();
		checkPhoneNum();
		isEmailCorrect();
		
		alert("*표시가 있는곳은 꽊꽊 채워주세요 !");
	}
}


