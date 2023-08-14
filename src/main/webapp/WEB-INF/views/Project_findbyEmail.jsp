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
    <link rel="stylesheet" href="../../resources/css/Project_findbyEmail.css">
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="../../resources/js/Project_findbyEmail.js"></script>
</head>
<%@include file="../includes/Project_header.jsp" %>
<body>
    <div class='findEmail_area'>
        <div class='findEmail_center slide-in'>
            <div class='findEmail_logo'>
                이메일 찾기
            </div>
            <div class='findEmail_box_name'>
                <h5>이름</h5>
                <input type="text" name="userName" id="userName" autocomplete='off'>
            </div>
            <div class='findEmail_box_phone'>
                <h5>휴대폰번호</h5>
                <div>
                    <input type="tel" name="userPhone" id="userPhone" onkeypress='phoneNum()' maxlength='13' autocomplete='off'>
                    <button class='phoneCheck' id='check'>인증번호발송</button>
                </div>
            </div>
            <div class='findEmail_box_phone_check'>
                <input type="text" name='phonCheckNum' id='phoneCheckNum' autocomplete='off'>
                <button class='phoneCheck' id='phoneCheck'>인증번호확인</button>
            </div>
            <div class='findEmail_button'>
                <a href="#" id="button_findbyEmail">이메일 찾기</a>
            </div>
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
    						}
    						else {
    							alert('인증 실패하였습니다. 다시 입력해주세요.');
    						}
    					});
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
    			
    			let obj={memberPhone : userPhone.value};
    			fetchPost("/phoneCheck", obj, (map) => {
    				
    		    	  if(map.result=="success"){
    		    		 
    		    	  } else {
    		    		  alert("가입하지 않은 휴대폰 번호입니다");
    		    		  userPhone.focus();
    		    		  userPhone.value='';
    		    	  }
    		      });
    		      
    		});	
    		
    		button_findbyEmail.addEventListener('click', function(e){
    			e.preventDefault();
    			
    			let obj={
    					memberName : document.querySelector('#userName').value,
    					memberPhone : document.querySelector('#userPhone').value	
    			};
    			
    			fetchPost('/findbyEmailAction', obj, phoneCheck);
    		})
    		
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
    		
    	});
    	
    	function phoneCheck(map){
			// 로그인 성공 -> list로 이동
			if(map.result == "success"){
				location.href= map.url;
			}
		}
    	
    	
    		
    		
    		function name_check(memberName){
    			var n_RegExp = /^[가-힣]{2,4}$/;
    			
    			return n_RegExp.test(memberName);
    		}
    		
    		function phone_check(memberPhone){
    			
    			 var regEx = /^(01[0|1|6|7|8|9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
    			 
    			 return regEx.test(memberPhone);
    			
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