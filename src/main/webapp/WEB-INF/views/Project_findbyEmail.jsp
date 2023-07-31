<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../resources/css/Project_findbyEmail.css">
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
                <button class='phoneCheck'>인증번호확인</button>
            </div>
            <div class='findEmail_button'>
                <a href="#">이메일 찾기</a>
            </div>
            
        </div>

    </div>
</body>
<%@include file="../includes/Project_footer.jsp" %>
</html>