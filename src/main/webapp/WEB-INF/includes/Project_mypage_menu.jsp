<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="../../resources/css/Project_mypage_menu.css">
<body>
    <aside>     
        <div class='myName'>${myName }님</div>
        <ul class='myMenuList'>
            <li class='myMenu'><a href="/members/${memberId}">내 정보</a></li>
            <li class='myMenu'><a href="/members/${memberId}/orderlist">구매내역</a></li>
            <li class='myMenu'><a href="/members/${memberId}/items">판매내역</a></li>
            <li class='myMenu'><a href="#">메뉴메뉴</a></li>
            <li class='myMenu'><a href="/members/${memberId}/editinfo/login">개인정보수정</a></li>
        </ul>
    </aside>
</body>
</html>