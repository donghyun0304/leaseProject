<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../resources/css/Project_header.css">
    <link rel="stylesheet" href="../../resources/css/Project_footer.css">
    <script src="../../resources/js/calendar.js"></script>
    <link rel="stylesheet" href="../../resources/css/Project_register.css">
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="../../resources/js/Project_register.js"></script>
</head>
<%@include file="../includes/Project_header.jsp"%>
<body>
    <div class='regi_area'>
        <div class='regi_center slide-in'>
            <div class='regi_logo'>
                회원가입
            </div>
            <div class='regi_box_id'>
                <h5>이메일 주소 *</h5>
                <input type="email" name="userId" id="userId" placeholder='예) email@naver.com' autocomplete='off'>
            </div>
            <div class='regi_box_pw'>
                <h5>비밀번호 *</h5>
                <input type="password" name="userPw" id="userPw" placeholder='대소문자, 숫자, 특수문자를 포함해서 8~15자 이상' maxlength='15' autocomplete='off'>
            </div>
            <div class='regi_box_pw_check'>
                <h5>비밀번호 확인 *</h5>
                <input type="password" name="userPwCheck" id="userPwCheck" maxlength='15' autocomplete='off'>
            </div>
            <div class='regi_box_nickname'>
                <h5>닉네임</h5>
                <input type="text" name="userNickname" id="userNickname" autocomplete='off'>
            </div>
            <div class='regi_box_name'>
                <h5>이름</h5>
                <input type="text" name="userName" id="userName" autocomplete='off'>
            </div>
            <div class='regi_box_phone'>
                <h5>휴대폰번호</h5>
                <div>
                    <input type="tel" name="userPhone" id="userPhone" onkeypress='phoneNum()' maxlength='13' autocomplete='off'>
                    <button class='phoneCheck' id='check'>인증번호발송</button>
                </div>
            </div>
            <div class='regi_box_phone_check'>
                <input type="text" name='phonCheckNum' id='phoneCheckNum' autocomplete='off'>
                <button class='phoneCheck' id='phoneCheck'>인증번호확인</button>
            </div>
            <div class='regi_button'>
                <a href="#" id="button_register">가입하기</a>
            </div>
            <input type="hidden" value='0' id="idCheckRes">
            <input type="hidden" value='0' id="phoneCheckRes">
        </div>

    </div>
</body>
<%@include file="../includes/Project_footer.jsp" %>
<script type="text/javascript">
window.addEventListener('load', function(){
	$('#check').click(function() {
			
			const to = $('#userPhone').val();
			
			$.ajax ({
				url: '/check/sendSMS',
				type: 'GET',
				data: {
					"to" : to
				},
				success: function(data) {
					const checkNum = data;
					alert('인증번호가 발송되었습니다');
					
					$('#phoneCheck').click(function() {	
						const userNum = $('#phoneCheckNum').val();
						
						if(checkNum === userNum) {
							alert('인증 성공하였습니다.');
							phoneCheckRes.value='1';
						}
						else {
							alert('인증 실패하였습니다. 다시 입력해주세요.');
						}
					});
					
				}
			});
			
	});
	
	userId.addEventListener('blur',function(){
		
		let memberEmail = document.querySelector('#userId').value;
		let idCheckRes = document.querySelector('#idCheckRes');		
		if(!userId.value){
			idCheckRes.vlaue = '0';
			return;
		}
		
		if(!email_check(memberEmail)){
			alert('이메일 형식에 맞게 입력해주세요');
			userId.focus();
  		 	userId.value='';
			return;
		}
		
		// 아이디 체크 -> 서버에 다녀와야함
		let obj={memberEmail : userId.value};
		fetchPost("/idCheck", obj, (map) => {
	    	  if(map.result=="success"){
	    		  alert("사용 가능한 아이디 입니다");
	    		  userPw.focus();
	    	  } else {
	    		  alert("이미 사용중인 아이디 입니다");
	    		  userId.focus();
	    		  userId.value='';

	    	  }
	      });
	});
	
	userPw.addEventListener('blur', function(){
		
		let memberPassword = document.querySelector('#userPw').value;
		let pwCheckRes = document.querySelector('#pwCheckRes');
		
		// 비밀번호 체크 -> 서버에 안가도 됨
		if(!userPw.value){
			pwCheckRes.vlaue = '0';
			return;
		}
		
		if(!password_check(memberPassword)){
			alert('비밀번호는 영어 대소문자, 숫자, 특수문자를 모두 포함해 최소 8자리, 최대 15자리까지만 가능합니다');
			userPw.focus();
  		 	userPw.value='';
			return;
		}
	});
	
	userPwCheck.addEventListener('blur',function(){
		
		
		let pwCheckRes = document.querySelector('#pwCheckRes');
		// 비밀번호 체크 -> 서버에 안가도 됨
		if(!userPwCheck.value){
			pwCheckRes.vlaue = '0';
			return;
		}
		
		if(userPw.value == userPwCheck.value){
			alert("비밀번호가 일치합니다");
			userNickname.focus();
		} else {
			alert("비밀번호가 일치하지 않습니다");
			userPwCheck.value='';
			userPwCheck.focus();
			
		}
		
	});
	
	userName.addEventListener('blur',function(){
		
		let memberName = document.querySelector('#userName').value; 
		
		if(!userName.value){
			nameCheckRes.value = '0';
			return;
		}
		
		if(!name_check(memberName)){
			alert('이름은 한글만 입력할 수 있습니다');
			userName.focus();
  		 	userName.value='';
			return;
		}
	});
	
	
	userNickname.addEventListener('blur', function(){
		
		let memberNickname = document.querySelector('#userNickname').value;
		if(!userNickname.value){
			nickNameCheckRes.value='0';
			return;
		}
		if(!nickName_check(memberNickname)){
			alert('닉네임은 한글, 영어 대소문자, 숫자를 사용하여 최소 2자리, 최대 8자리까지만 가능합니다.');
			userNickname.focus();
			userNickname.value='';
			return;
		} 
		let obj={memberNickname : userNickname.value};
		fetchPost("/nickNameCheck", obj, (map) => {
	    	  if(map.result=="success"){
	    		  
	    	  } else {
	    		  alert("이미 사용중인 닉네임입니다");
	    		  userNickname.focus();
	    		  userNickname.value='';
	    	  }
	      });
		
	});
	
	userPhone.addEventListener('blur',function(){
		
		
		let memberPhone = document.querySelector('#userPhone').value;
		if(!userPhone.value){
			phoneCheckRes.value='0';
			return;
		}
		
		if(!phone_check(memberPhone)){
			alert('휴대폰 번호 형식에 맞게 입력해주세요');
			userPhone.focus();
			userPhone.value='';
			return;
		}
		
		// 핸드폰 번호 체크 -> 서버에 다녀와야함
		let obj={memberPhone : userPhone.value};
		fetchPost("/phoneCheck", obj, (map) => {
	    	  if(map.result=="success"){
	    		  alert("이미 가입한 휴대폰 번호 입니다");
	    		  userPhone.focus();
	    		  userPhone.value='';
	    	  }
	      });
		
	});
	
	
	button_register.addEventListener('click', function(e){
		//기본이벤트 초기화
		e.preventDefault();
		
		let memberEmail = userId.value;
		let memberPassword = userPw.value;
		let PasswordCheck = userPwCheck.value;
		let memberNickname = userNickname.value;
		let memberName = userName.value;
		let memberPhone = userPhone.value;
		
		
		
		if(!memberEmail){
			alert('이메일 입력해주세요');
			return;
		}
		if(!memberPassword){
			alert('비밀번호를 입력해주세요');
			return;
		}
		if(!PasswordCheck){
			alert('비밀번호 확인을 입력해주세요');
			return;
		}
		if(!memberNickname){
			alert('닉네임을 입력해주세요');
			return;
		}
		if(!memberName){
			alert('이름을 입력해주세요');
			return;
		}
		if(!memberPhone){
			alert('핸드폰번호를 입력해주세요');
			return;
		}
		if(phoneCheckRes.value == '1'){
			regist();
		} else {
			alert('휴대폰인증절차를 진행해주세요');
			return;
		}
		
	});
	
})

	function regist(){
		obj = {
				memberEmail : userId.value, 
				memberPassword : userPw.value, 
				memberNickname : userNickname.value,
				memberName : userName.value,
				memberPhone : userPhone.value
		}
		console.log('회원가입obj : ', obj);
		
		// 회원가입 요청
		fetchPost('/registerAction', obj, (map)=>{
			if(map.result == 'success'){
				location.href='/login';
				alert('회원가입이 완료되었습니다');
			} else {
				location.href='/register';
				alert('회원가입 도중 오류가 발생하였습니다, 관리자에게 문의하시기 바랍니다.');
			}
		});
	}
	
	function email_check(memberEmail){

		var reg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		
		return reg.test(memberEmail);
	}
	
	function password_check(memberPassword){
		var p_regExp = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
		
		return p_regExp.test(memberPassword);
	}
	
	function phone_check(memberPhone){
		
		 var regEx = /^(01[0|1|6|7|8|9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
		 
		 return regEx.test(memberPhone);
		
	}
	
	function name_check(memberName){
		var n_RegExp = /^[가-힣]{2,4}$/;
		
		return n_RegExp.test(memberName);
	}
	
	function nickName_check(memberNickname){
		var nn_RegExp = /^[가-힣a-zA-Z0-9]{2,8}$/;
		
		return nn_RegExp.test(memberNickname);
	}

	
	

	function fetchPost(url, obj, callback){
		try{
			// url 요청
			fetch(url, {method : 'post', headers : {'Content-Type' : 'application/json'}, body : JSON.stringify(obj)})
				// 요청결과 json 문자열을 javascript 객체로 반환
				.then(response => response.json())
				// 콜백함수 실행
				.then(map => callback(map));
		} catch(e) {
			console.log('fetchPost', e)
		}
	}
</script>
</html>