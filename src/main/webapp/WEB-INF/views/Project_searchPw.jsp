<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="../../resources/css/Project_header.css">
    <link rel="stylesheet" href="../../resources/css/Project_footer.css">
    <script src="../../resources/js/calendar.js"></script>
    <link rel="stylesheet" href="../../resources/css/Project_searchPw.css">
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="../../resources/js/Project_searchPw.js"></script>
</head>
<%@include file="../includes/Project_header.jsp"%>
<body>
    <div class='findEmail_area'>
        <div class='findEmail_center slide-in'>
            <div class='findEmail_logo'>
                비밀번호 찾기
            </div>
            <div class='findEmail_box_name'>
                <h5>이메일</h5>
                <input type="email" name="userId" id="userId" autocomplete='off'>
            </div>
            <div class="errors"></div>
            <div class='findEmail_box_name'>
                <h5>이름</h5>
                <input type="text" name="userName" id="userName" autocomplete='off'>
            </div>
            <div class="errors"></div>
            <div class='findEmail_box_phone'>
                <h5>휴대폰번호</h5>
                <div>
                    <input type="tel" name="userPhone" id="userPhone" onkeypress='phoneNum()' maxlength='13' autocomplete='off'>
                    <button class='phoneCheck' id='check'>인증번호발송</button>
                </div>
            </div>
            <div class="errors"></div>
            <div class="errors"></div>
            <div class='findEmail_box_phone_check'>
                <input type="text" name='phonCheckNum' id='phoneCheckNum' autocomplete='off'>
                <button class='phoneCheck' id='phoneCheck'>인증번호확인</button>
            </div>
            <div class="errors"></div>
            <div class="errors"></div>
            <div class='findEmail_button'>
                <a href="#" id="button_searchPw">비밀번호 찾기</a>
            </div>
            	<input type="text" value='1' id="idCheckRes">
                <input type="text" value='5' id="phoneCheckRes">
            
        </div>

    </div>
</body>
<<<<<<< HEAD
<%@include file="../includes/Project_footer.jsp" %>  	
=======
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
    		button_searchPw.addEventListener('click', function(){
    			
    			let memberEmail = userId.value;
    			let memberName = userName.value;
    			let memberPhone = userPhone.value;
    			
    			if(!memberEmail){
    				alert('가입하신 이메일을 입력해주세요');
    				return;
    			}
    			if(!memberName){
    				alert('이름을 입력해주세요');
    				return;
    			}
    			if(!memberPhone){
    				alert('가입하신 핸드폰 번호를 입력해주세요');
    				return;
    			}
    			if(phoneCheckRes.value == '1'){
    				
    			} else {
    				alert('휴대폰인증절차를 진행해주세요');
    				return;
    			}
    			
    			const to = $('#userPhone').val();
    			
    			$.ajax ({
    				url: '/check/sendPassword',
    				type: 'GET',
    				data: {
    					"to" : to
    				},
    				success: function(data) {
    					const checkNum = data;
    					alert('임시비밀번호가 휴대전화 번호로 전송되었습니다.');
    					obj = {
    		    				memberPassword : data, 
    		    				memberPhone : document.querySelector('#userPhone').value
    		    		}
    		    		
    		    		// 회원가입 요청
    		    		fetchPost('/searchPwAction', obj, (map)=>{
    		    			if(map.result == 'success'){
    							location.href='/login';
    		    			} else {
    		    				//location.href='/searchPw';
    		    				alert('임시비빔번호 설정 중 오류가 발생하였습니다, 관리자에게 문의하시기 바랍니다.');
    		    			}
    		    		});
    				}
    				
    			})
    		});
    		
    		userId.addEventListener('blur',function(){
    			
    			let memberEmail = document.querySelector('#userId').value;
    			
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
    			
    			let obj={memberEmail : userId.value};
    			fetchPost("/idCheck", obj, (map) => {
    		    	  if(map.result=="success"){
    		    		  alert("가입하지 않은 이메일입니다.");
    		    		  userId.focus();
    		    		  userId.value='';
    		    	  }
    		      });
    			
    		});
    		
    		userName.addEventListener('blur', function(){
    			let memberName = document.querySelector('#userName').value;
    			
    			if(!userName.value){
    				nameCheckRes.value ='0';
    				return;
    			}
    			
    			if(!name_check(memberName)){
    				alert('이름은 한글만 입력할 수 있습니다');
    				userName.focus();
    	  		 	userName.value='';
    				return;
    			}
    			
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
    			
    			let obj={memberPhone : userPhone.value};
    			fetchPost("/phoneCheck", obj, (map) => {
    		    	  if(map.result=="success"){
    		    		  
    		    	  } else {
    		    		  alert("가입하지 않은 휴대폰 번호입니다");
    		    		  userPhone.focus();
    		    		  userPhone.value='';
    		    	  }
    		      });
    			
    		})
    		
    	});
    	
    	function searchPwAction(){
    		obj = {
    				memberPassword : checkNum, 
    				memberPhone : document.querySelector('#userPhone').value
    		}
    		
    		// 회원가입 요청
    		fetchPost('/searchPwAction', obj, (map)=>{
    			if(map.result == 'success'){
					location.href='/login';
    			} else {
    				location.href='/searchPw';
    				alert('임시비빔번호 설정 중 오류가 발생하였습니다, 관리자에게 문의하시기 바랍니다.');
    			}
    		});
    	}
    		
    	function email_check(memberEmail){

    		var reg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
    			
    		return reg.test(memberEmail);
    	}
    	
    	function phone_check(memberPhone){
    		
   		 var regEx = /^(01[0|1|6|7|8|9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
   		 
   		 return regEx.test(memberPhone);
   		
   		}
    	
    	function name_check(memberName){
    		var n_RegExp = /^[가-힣]{2,4}$/;
    		
    		return n_RegExp.test(memberName);
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
>>>>>>> b00a92506c040c063add12d9f9447c3be40dc8df
</html>