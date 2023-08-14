<%@page import="java.math.BigInteger"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.net.URLEncoder"%>
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
    <link rel="stylesheet" href="../../resources/css/Project_login.css">	
<<<<<<< HEAD
	<script src="../../resources/js/Project_login.js"></script>
=======
    <script type="text/javascript">
    	window.addEventListener('load', function(){
    		button_login.addEventListener('click', function(e){
    			e.preventDefault();
    			
    				let obj={
        					memberEmail : document.querySelector('#userId').value,
        					memberPassword : document.querySelector('#userPw').value,
        					redirectURL : document.querySelector('#redirectURL').value
        			};
					
    				console.log(obj);
        			fetchPost('/login', obj, loginCheck);
    		})
    	
    		
    		function loginCheck(map){
    			// 로그인 성공 -> list로 이동
    			if(map.result == "success"){
    				location.href= map.url;
    			} else{
    				// 실패 -> 메세지 출력
    				alert("아이디와 비밀번호를 확인해주세요 ");
    				location.href="/login";
    			}
    		}
    	});
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
		};
    
    	
    </script>
>>>>>>> b00a92506c040c063add12d9f9447c3be40dc8df
</head>
<%@include file="../includes/Project_header.jsp" %>
<body>

    <div class='login_area'>
        <div class='login_center slide-in'>
        <c:if test="${not empty param.redirectURL }">
            <input type="text" id="redirectLogin" value="로그인 후 이용 가능한 메뉴 입니다">
            </c:if>
            <div class='login_logo'>
                로고자리
            </div>
            
            <div class='login_box_id'>
                <h5>이메일 주소</h5>
                <input type="email" name="userId" id="userId" placeholder='예) email@naver.com' autocomplete='off'>
            </div>
            <div class='login_box_pw'>
                <h5>비밀번호</h5>
                <input type="password" name="userPw" id="userPw" autocomplete='off'>
            </div>
            <div class="errors"></div>
            <div class='login_button'>
                <a href="#" id="button_login">로그인</a>
            </div>
            
            <div class='login_look'>
                <div><a href="/members/add">회원가입</a></div>
                <div><a href="/findbyEmail">이메일 찾기</a></div>
                <div><a href="/searchPw">비밀번호 찾기</a></div>
            </div>
            <div class='login_social_login'>
			  <%
			    String clientId = "WPbsOJi72I4GB5iqARDX";//애플리케이션 클라이언트 아이디값";
			    String redirectURI = URLEncoder.encode("http://localhost:8080/home/naver", "UTF-8");
			    SecureRandom random = new SecureRandom();
<<<<<<< HEAD
			    String redirectURL = request.getParameter("redirectURL");
			    String state = redirectURL;
=======
			    String state = new BigInteger(130, random).toString();
>>>>>>> b00a92506c040c063add12d9f9447c3be40dc8df
			    
			    // 요청 URL -> 네이버 로그인및 사용자 정보제공 동의 -> 콜백으로 코드를 제공
			    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
			    apiURL += "&client_id=" + clientId;
			    apiURL += "&redirect_uri=" + redirectURI;
			    apiURL += "&state=" + state;
			    session.setAttribute("state", state);
			 %>
                <a href="<%=apiURL%>"><button class='login_naver'>네이버로 로그인</button></a>
<<<<<<< HEAD
                 <a href="https:kauth.kakao.com/oauth/authorize?client_id=124198d768a446e334a4d562c4c29d2e&redirect_uri=http://localhost:8080/home/kakao&response_type=code&state=${param.redirectURL}">
                 <button class='login_kakao'>카카오로 로그인</button>
                 </a>
            </div>
            <input type="hidden" id="redirectURL" value="${param.redirectURL}"> 
=======
                 <a href="https:kauth.kakao.com/oauth/authorize?client_id=124198d768a446e334a4d562c4c29d2e&redirect_uri=http://localhost:8080/home/kakao&response_type=code">
                 <button class='login_kakao'>카카오로 로그인</button>
                 </a>
            </div>
            <input type="text" id="redirectURL" value="${param.redirectURL}"> 
>>>>>>> b00a92506c040c063add12d9f9447c3be40dc8df
        </div>

    </div>

</body>

<%@include file="../includes/Project_footer.jsp" %>
</html>