<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인정보수정 :: 대여해조</title>
    <link rel="stylesheet" href="../../resources/css/Project_mypage_editinfo.css">
    <script src="../../resources/js/Project_mypage_editinfo.js"></script>
</head>
<%@include file="../includes/Project_header.jsp"%>
    <main>
        <div class='wrapper'>
		<%@include file="../includes/Project_mypage_menu.jsp" %>
            <div class='myPageMain'>
                <h1>나의 정보</h1>
                <div class="editForm">
                    <h2>필수 회원 정보</h2>
                    <hr>
                    <div class="editBox">
                        <div class="userNameForm">
                            <div>이름</div>
                            <div class="userName">홍길동</div>
                        </div>
                        <div class="userEmailForm">
                            <div>이메일</div>
                            <div class="userEmail">0000000@naver.com</div>
                        </div>
                        <div class="userPwForm">
                            <div>비밀번호</div>
                            <input type="password" name="userPw" id="">
                            <div class="errorMessage">영문과 숫자 00자리 이하만 가능합니다</div>
                        </div>
                        <div class="userPwCheckForm">
                            <div>비밀번호 확인</div>
                            <input type="password" name="userPwCheck" id="">
                            <div class="errorMessage">비밀번호를 한번더 입력해주세요</div>
                        </div>
                        <div class="userPhoneForm">
                            <div>휴대전화</div>
                            <input type="text" name="phone" id="" value="010-0000-0000">
                            <button class="phoneCheck">인증번호</button>
                        </div>
                        <div class="userPhoneCheckForm active">
                            <div>인증번호 확인</div>
                            <input type="text" name="num" id="" value="000000">
                            <button class="numCheck">인증번호확인</button>
                        </div>
                    </div>
                </div>
                <div class="editButtonBox">
                    <button class="editButton">수정하기</button>
                </div>
            </div>
        </div>
        
    </main>
    <%@include file="../includes/Project_footer.jsp" %>
</html>