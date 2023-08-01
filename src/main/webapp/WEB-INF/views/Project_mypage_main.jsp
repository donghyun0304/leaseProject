<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지</title>
    <link rel="stylesheet" href="../../resources/css/Project_mypage_main.css">
</head>
<%@include file="../includes/Project_header.jsp" %>
<body>
    <main>
        <div class='wrapper'>
		<%@include file="../includes/Project_mypage_menu.jsp" %>
            <div class='myPageMain'>

                <div class="totalStatus">
                    <div class="totalBox">
                        <a href="#">
                            <div>
                                <span>구매건수</span>
                                <span>0건</span>
                            </div>
                            <div class="orderBox"></div>
                        </a>
                    </div>
                    <div class="totalBox">
                        <a href="#">
                            <div>
                                <span>판매건수</span>
                                <span>0건</span>
                            </div>
                            <div class="sellBox"></div>
                        </a>
                    </div>
                    <div class="totalBox">
                        <a href="#">
                            <div>
                                <span>내 물건</span>
                                <span>0건</span>
                            </div>
                            <div class="myitemBox"></div>
                        </a>
                    </div>
                    <div class="totalBox">
                        <a href="#">
                            <div>
                                <span>대여이력</span>
                                <span>0건</span>
                            </div>
                            <div class="orderlistBox"></div>
                        </a>
                    </div>
                </div>
                <div class='myPageTitle'><a href="#">현재 대여 요청 ></a></div>
                <div class='myLeaseStatus'>
                    <ul class='leaseTitle'>
                        <li>상품번호</li>
                        <li>상품사진</li>
                        <li>상품명</li>
                        <li>대여시작일</li>
                        <li>대여종료일</li>
                        <li>대여일수</li>
                        <li>현재상태</li>
                        <li>대여확정</li>
                    </ul>
                    <ul class='listMain'>
                        <li class='productIdx'><a href="#">00000</a></li>
                        <li class='productImage'><a href="#"><img src="https://media.bunjang.co.kr/product/230824887_1_1690094217_w292.jpg" alt=""></a></li>
                        <li class='productTitle'><a href="#">제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목</a></li>
                        <li class='productLeaseStartDate'><a href="#">0000/00/00</a></li>
                        <li class='productLeaseEndDate'><a href="#">0000/00/00</a></li>
                        <li class='productLeaseDay'><a href="#">3일</a></li>
                        <li class='productLeaseStatus'><a href="#">대기중</a></li>
                        <li class='productLeaseConfirm'>
                            <button class='confirmBtn'>확정</button>
                            <button class='cancelBtn'>보류</button>
                        </li>
                    </ul>
                    <ul class='listMain'>
                        <li class='productIdx'>00000</li>
                        <li class='productImage'><img src="https://media.bunjang.co.kr/product/230380114_1_1689815453_w292.jpg" alt=""></li>
                        <li class='productTitle'>제목제목제목제목제목</li>
                        <li class='productLeaseStartDate'>0000/00/00</li>
                        <li class='productLeaseEndDate'>0000/00/00</li>
                        <li class='productLeaseDay'>3일</li>
                        <li class='productLeaseStatus'>대기중</li>
                        <li class='productLeaseConfirm'>
                            <button class='confirmBtn'>확정</button>
                            <button class='cancelBtn'>보류</button>
                        </li>
                    </ul>
                </div>

                <div class='itemList'>
                    <div class='myPageTitle'><a href="#">내 물건 ></a></div>
                    <div class='items'>
                        <div class='item'>
                            <a href="#">
                                <div class='itemImage'>
                                    <img src="https://media.bunjang.co.kr/product/230380114_1_1689815453_w292.jpg" alt="">
                                </div>
                                <div class='itemTitle'>제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목제목</div>
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
                                <div class='itemTitle'>제목제목제목제목제목</div>
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
                                <div class='itemTitle'>제목제목제목제목제목</div>
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
                                <div class='itemTitle'>제목</div>
                                <div class='itemPrice'>
                                    <div class='price'>10,000원</div>
                                    <div class='price_day'>/일</div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
</body>
<%@include file="../includes/Project_footer.jsp" %>
</html>