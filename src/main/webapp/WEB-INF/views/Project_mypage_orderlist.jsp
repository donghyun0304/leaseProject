<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../resources/css/Project_mypage_orderlist.css">
    <script src="../../resources/js/Project_chat_connect.js"></script>
</head>
<%@include file="../includes/Project_header.jsp" %>
<body>
    <main>
        <div class='wrapper'>
		<%@include file="../includes/Project_mypage_menu.jsp" %>
            <div class='myPageMain'>
            <div class='myPageTitle'><a href="#">나의 구매 내역 ></a></div>
                <div class='myLeaseStatus'>
                    <ul class='listMain'>
                        <li class='productImage'>
                            <a href="#">
                                <img src="https://media.bunjang.co.kr/product/230824887_1_1690094217_w292.jpg" alt="">
                            </a>
                        </li>
                        <div class = 'product-buy'>
                            <p class = "product-name">상품명1</p>
                            <p class = "product-date">0000/00/00 - 0000/00/00</p>
                            <p class = "product-date2">3일</p>
                        </div>
                        <div class = 'product-buy2'>
                            <p class = "product-price">00,000원</p>
                        </div>
                        <div class = 'product-buy3'>
                            <p class = "product-fix">⭐구매확정</p>
                            <button class="chatRoom">연락하기</button>
                        </div>
                    </ul>
                    <ul class='listMain'>
                        <li class='productImage'><img src="https://media.bunjang.co.kr/product/230380114_1_1689815453_w292.jpg" alt=""></li>
                        <div class = 'product-buy'>
                            <p class = "product-name">상품명2</p>
                            <p class = "product-date">0000/00/00 - 0000/00/00</p>
                            <p class = "product-date2">1일</p>
                        </div>
                        <div class = 'product-buy2'>
                            <p class = "product-price">00,000원</p>
                        </div>
                        <div class = 'product-buy3'>
                            <p class = "product-fix">⭐구매확정</p>
                        </div>
                    </ul>
                    <ul class='listMain'>
                        <li class='productImage'><a href="#"><img src="https://media.bunjang.co.kr/product/230824887_1_1690094217_w292.jpg" alt=""></a></li>
                        <div class = 'product-buy'>
                            <p class = "product-name">상품명3</p>
                            <p class = "product-date">0000/00/00 - 0000/00/00</p>
                            <p class = "product-date2">7일</p>
                        </div>
                        <div class = 'product-buy2'>
                            <p class = "product-price">00,000원</p>
                        </div>
                        <div class = 'product-buy3'>
                            <p class = "product-fix">⭐구매확정</p>
                            <p class = "product-fix"> 2.구매확정 대기</p>
                        </div>
                    </ul>
                </div>
            </div>
        </div>
        
    </main>
</body>

<%@include file="../includes/Project_footer.jsp" %>
</html>