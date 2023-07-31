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
</head>
<%@include file="../includes/Project_header.jsp" %>
<body>
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
                <input type="password" name="userPw" id="userPw" autocomplete='off'>
            </div>
            <div class='login_button'>
                <a href="#">로그인</a>
            </div>
            
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
</body>
<%@include file="../includes/Project_footer.jsp" %>
</html>