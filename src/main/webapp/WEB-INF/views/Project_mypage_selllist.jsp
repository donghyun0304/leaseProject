<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../resources/css/Project_mypage_selllist.css">
    <link rel="stylesheet" href="../../resources/css/Project_mypage_selllist_modal.css">
    <script src="../../resources/js/Project_mypage_selllist_modal.js"></script>
</head>
<%@include file="../includes/Project_header.jsp" %>
<body>
    <main>
        <div class='wrapper'>
		<%@include file="../includes/Project_mypage_menu.jsp" %>
            <div class='myPageMain'>
                <div class='myLeaseStatus'>
                    <div class='myPageTitle'><a href="#">판매 내역 ></a></div>
                    <ul class='leaseTitle'>
                        <h3>판매중인 상품</h3>
                    </ul>
                    <ul class='listMain'>
                        <li class='productImage'><a href="#"><img src="https://media.bunjang.co.kr/product/230824887_1_1690094217_w292.jpg" alt=""></a></li>
                        <div class = 'product-buy'>
                            <p class = "product-no">상품번호(0000-0000)</p>
                            <p class = "product-name">상품명1</p>
                            <p class = "product-date2">월,목</p>
                            <p class = "product-cnt">대여 수 : </p>
                        </div>
                        <div class = 'product-buy2'>
                            <p class = "product-price">00,000원</p>
                        </div>
                        <div class = 'product-buy3'>
                            <div class = "productLeaseConfirm">
                                <button class = "product-sell">판매중</button>
                            </div>
                        </div>
                    </ul>
                    <ul class='listMain'>
                        <li class='productImage'><img src="https://media.bunjang.co.kr/product/230380114_1_1689815453_w292.jpg" alt=""></li>
                        <div class = 'product-buy'>
                            <p class = "product-no">상품번호(0000-0000)</p>
                            <p class = "product-name">상품명2</p>
                            <p class = "product-date2">금~일</p>
                            <p class = "product-cnt">대여 수 : </p>
                        </div>
                        <div class = 'product-buy2'>
                            <p class = "product-price">00,000원</p>
                        </div>
                        <div class = 'product-buy3'>
                            <div class = "productLeaseConfirm">
                                <button class = "product-sell">판매중</button>
                            </div>
                        </div>
                    </ul>
                    <ul class='listMain'>
                        <li class='productImage'><a href="#"><img src="https://media.bunjang.co.kr/product/230824887_1_1690094217_w292.jpg" alt=""></a></li>
                        <div class = 'product-buy'>
                            <p class = "product-no">상품번호(0000-0000)</p>
                            <p class = "product-name">상품명3</p>
                            <p class = "product-date2">주말</p>
                            <p class = "product-cnt">대여 수 : </p>
                        </div>
                        <div class = 'product-buy2'>
                            <p class = "product-price">00,000원</p>
                        </div>
                        <div class = 'product-buy3'>
                            <div class = "productLeaseConfirm">
                                <button class = "product-sell">판매중</button>
                            </div>
                        </div>
                    </ul>
                    <ul class='listMain'>
                        <li class='productImage'><a href="#"><img src="https://media.bunjang.co.kr/product/230824887_1_1690094217_w292.jpg" alt=""></a></li>
                        <div class = 'product-buy'>
                            <p class = "product-no">상품번호(0000-0000)</p>
                            <p class = "product-name">상품명4</p>
                            <p class = "product-date2">평일</p>
                            <p class = "product-cnt">대여 수 : 10</p>
                        </div>
                        <div class = 'product-buy2'>
                            <p class = "product-price">00,000원</p>
                        </div>
                        <div class = 'product-buy3'>
                            <div class = "productLeaseConfirm">
                                <button id = "product-sellReserve">대여중</button>
                                <div id = "modal-box">
                                    <div id = "modal-contents">
                                        <button id = "close">&times;</button>
                                        <h2 id = "title">현재 대여중인 상품</h2>
                                        <div id = "profile">
                                            <img src="https://media.bunjang.co.kr/product/230824887_1_1690094217_w292.jpg" alt="">
                                            <div id = "desc">
                                                <p class = "product-no">상품번호(0000-0000)</p>
                                                <p class = "product-name">상품명4</p>
                                                <p class = "product-date1">대여기간 : 0000-00-00 ~ 0000-00-00</p>
                                                <p class = "product-person">대여자 : 홍길동</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ul>
                </div>

                <div class='itemList'>
                    <div class='myPageTitle'><a href="#">판매완료 상품 ></a></div>
                    <div class='items'>
                        <div class='item'>
                            <a href="#">
                                <div class='itemImage'>
                                    <img src="https://media.bunjang.co.kr/product/230380114_1_1689815453_w292.jpg" alt="">
                                </div>
                                <button id = "image-text">판매완료</button>
                                <div class='itemTitle'>상품1</div>
                                <div class='itemPrice'>
                                    <div class='price'>10,000원</div>
                                    <div class='price_day'>/일</div>
                                </div>
                            </a>
                        </div>
                        <div class='item'>
                            <a href="#">
                                <div class='itemImage'>
                                    <img src="https://media.bunjang.co.kr/product/230265337_1_1689953550_w292.jpg" alt="">    
                                </div>
                                <button id = "image-text">판매완료</button>
                                <div class='itemTitle'>상품2</div>
                                <div class='itemPrice'>
                                    <div class='price'>10,000원</div>
                                    <div class='price_day'>/일</div>
                                </div>
                            </a>
                        </div>
                        <div class='item'>
                            <a href="#">
                                <div class='itemImage'>
                                    <img src="https://media.bunjang.co.kr/product/224175633_1_1684159370_w292.jpg" alt="">    
                                </div>
                                <button id = "image-text">판매완료</button>
                                <div class='itemTitle'>상품3</div>
                                <div class='itemPrice'>
                                    <div class='price'>10,000원</div>
                                    <div class='price_day'>/일</div>
                                </div>
                            </a>
                        </div>
                        <div class='item'>
                            <a href="#">
                                <div class='itemImage'>
                                    <img src="https://media.bunjang.co.kr/product/230824887_1_1690094217_w292.jpg" alt="">

                                </div>
                                <button id = "image-text">판매완료</button>
                                <div class='itemTitle'>상품4</div>
                                <div class='itemPrice'>
                                    <div class='price'>10,000원</div>
                                    <div class='price_day'>/일</div>
                                </div>
                            </a>
                        </div>
                        
                    </div>
                    <div class='items'>
                        <div class='item'>
                            <a href="#">
                                <div class='itemImage'>
                                    <img src="https://media.bunjang.co.kr/product/230380114_1_1689815453_w292.jpg" alt="">
                                </div>
                                <button id = "image-text">판매완료</button>
                                <div class='itemTitle'>상품5</div>
                                <div class='itemPrice'>
                                    <div class='price'>10,000원</div>
                                    <div class='price_day'>/일</div>
                                </div>
                            </a>
                        </div>
                        <div class='item'>
                            <a href="#">
                                <div class='itemImage'>
                                    <img src="https://media.bunjang.co.kr/product/230265337_1_1689953550_w292.jpg" alt="">    
                                </div>
                                <button id = "image-text">판매완료</button>
                                <div class='itemTitle'>상품6</div>
                                <div class='itemPrice'>
                                    <div class='price'>10,000원</div>
                                    <div class='price_day'>/일</div>
                                </div>
                            </a>
                        </div>
                        <div class='item'>
                            <a href="#">
                                <div class='itemImage'>
                                    <img src="https://media.bunjang.co.kr/product/224175633_1_1684159370_w292.jpg" alt="">    
                                </div>
                                <button id = "image-text">판매완료</button>
                                <div class='itemTitle'>상품7</div>
                                <div class='itemPrice'>
                                    <div class='price'>10,000원</div>
                                    <div class='price_day'>/일</div>
                                </div>
                            </a>
                        </div>
                        <div class='item'>
                            <a href="#">
                                <div class='itemImage'>
                                    <img src="https://media.bunjang.co.kr/product/230824887_1_1690094217_w292.jpg" alt="">

                                </div>
                                <button id = "image-text">판매완료</button>
                                <div class='itemTitle'>상품8</div>
                                <div class='itemPrice'>
                                    <div class='price'>10,000원</div>
                                    <div class='price_day'>/일</div>
                                </div>
                            </a>
                        </div>
                </div>
                </div>

            </div>
            <script>
                document.getElementById('image-text').addEventListener('click', () =>{
                    alert('판매완료된 상품입니다.');
                })
            </script>
        </div>
        
    </main>
</body>
<%@include file="../includes/Project_footer.jsp" %>
</html>