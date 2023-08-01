<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보확 :: 대여해조</title>
    <link rel="stylesheet" href="../../resources/css/Project_mypage_editinfo_login.css">
</head>
<%@include file="../includes/Project_header.jsp"%>
    <main>
        <div class='wrapper'>
		<%@include file="../includes/Project_mypage_menu.jsp" %>
            <div class='myPageMain'>
                <div class="editInfo_login">
                    <h2>개인정보 수정</h2>
                    <div class='editInfo_box_pw'>
                        <h5>비밀번호</h5>
                        <input type="password" name="userPw" id="userPw" autocomplete='off'>
                    </div>
                    <div class='editInfo_button'>
                        <a href="#">확인</a>
                    </div>
                </div>
            </div>
        </div>
        
    </main>
<%@include file="../includes/Project_footer.jsp" %>
</html>