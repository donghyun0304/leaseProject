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
                                <span>대여건수</span>
                                <span>${compressInfo[0]}건</span>
                            </div>
                            <div class="orderBox"></div>
                        </a>
                    </div>
                    <div class="totalBox">
                        <a href="#">
                            <div>
                                <span>판매건수</span>
                                <span>${compressInfo[1]}건</span>
                            </div>
                            <div class="sellBox"></div>
                        </a>
                    </div>
                    <div class="totalBox">
                        <a href="#">
                            <div>
                                <span>내 물건</span>
                                <span>${compressInfo[2]}건</span>
                            </div>
                            <div class="myitemBox"></div>
                        </a>
                    </div>
                    <div class="totalBox">
                        <a href="#">
                            <div>
                                <span>대여대기</span>
                                <span>${compressInfo[3]}건</span>
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
                        <li>신청인</li>
                        <li>대여확정</li>
                    </ul>
                    <c:forEach var="item" items="${confirmInfo}">
                    	 <ul class='listMain'>
	                        <li class='productIdx'><a href="#">${item.productId}</a></li>
	                        <li class='productImage'><a href="#"><img src="../../resources/images/${item.productImage}" alt=""></a></li>
	                        <li class='productTitle'><a href="#">${item.productName}</a></li>
	                        <li class='productLeaseStartDate'><a href="#">${item.startDate}</a></li>
	                        <li class='productLeaseEndDate'><a href="#">${item.endDate}</a></li>
	                        <li class='productLeaseDay'><a href="#">${item.countDate}일</a></li>
	                        <li class='productLeaseStatus'><a href="#">대기중</a></li>
	                        <li class='productLeaseConfirm'>
	                            <button class='confirmBtn'>확정</button>
	                            <button class='cancelBtn'>보류</button>
	                        </li>
	                    </ul>
                    </c:forEach>
                </div>

                <div class='itemList'>
                    <div class='myPageTitle'><a href="#">내 물건 ></a></div>
                    <div class='items'>
                    
                    	<c:forEach var="item" items="${getMyItems}" end="3">
	                        <div class='item'>
	                            <a href="#">
	                                <div class='itemImage'>
	                                    <img src="../../resources/images/${item.productImage }" alt="">
	                                </div>
	                                <div class='itemTitle'>${item.productName }</div>
	                                <div class='itemPrice'>
	                                    <div class='price'>${item.productPrice}원</div>
	                                    <div class='price_day'>/일</div>
	                                </div>
	                            </a>
	                        </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </main>
</body>
<%@include file="../includes/Project_footer.jsp" %>
</html>