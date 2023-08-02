<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../resources/css/Project_login.css">
    <script type="text/javascript">
    	window.addEventListener('load', function(){
    		button_login.addEventListener('click', function(e){
    			e.preventDefault();
    			
    			let obj={
    					memberEmail : document.querySelector('#userId').value,
    					memberPassword : document.querySelector('#userPw').value	
    			};
    			
    			fetchPost('/loginAction', obj, loginCheck);
    		})
    		
    		function loginCheck(map){
    			console.log(map);
    			// 로그인 성공 -> list로 이동
    			if(map.result == "success"){
    				location.href= map.url;
    			} else{
    				// 실패 -> 메세지 출력
    				alert("아이디와 비밀번호를 확인해주세요 ");
    				location.href="/login";
    			}
    			console.log(map);
    		}
    	})
    	
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
</head>
<%@include file="../includes/Project_header.jsp" %>
<body>
    <form action="#">
    <div class='login_area'>
        <div class='login_center slide-in'>
            <div class='login_logo'>
                로고자리
            </div>
            <div class='login_box_id'>
                <h5>이메일 주소</h5>
                <input type="email" name="userId" id="userId" placeholder='예) email@naver.com' autocomplete='off'>
            </div>
            <div class='login_box_pw'>
                <h5>비밀번호</h5>
                <input type="password" name="userPw" id="userPw" autocomplete='off' class="errorsborder"> <!--에러메세지 출력시 class 추가해서 사 -->
            </div>
            <div class="errors">(class에 hidden 추가시 안보임) 에러메세지 출력</div>
            <input type="submit" value="로그인" class="login_button">
     
            <div class='login_look'>
                <div><a href="http://127.0.0.1:5502/Project_regi.html">회원가입</a></div>
                <div><a href="#">이메일 찾기</a></div>
                <div><a href="#">비밀번호 찾기</a></div>
            </div>
            <div class='login_social_login'>
                <button class='login_naver'>네이버로 로그인</button>
                <button class='login_kakao'>카카오로 로그인</button>
            </div>
            
        </div>

    </div>
    </form>
</body>
<%@include file="../includes/Project_footer.jsp" %>
</html>