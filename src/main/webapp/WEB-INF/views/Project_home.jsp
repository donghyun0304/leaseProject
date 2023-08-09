<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../resources/css/Project_home.css">
    <script src="../../resources/js/Project_home.js"></script>

</head>
<%@include file="../includes/Project_header.jsp" %>
<body>
    <main>

        <div id='contents' class='contents'>

            <div id='banner'>
                <div class="arrow" id="left">&lang;</div>
                <div class="arrow" id="right">&rang;</div>
            </div>
            
            <div id='latestProduct' class='latestProduct'>
                <div>
                    <p class='categoryT' >인기상품</p>
                </div>
                <!-- 한달동안 대여가 많이 된 인기 상품 리스트 -->
                <div style='padding-top: 1.3em;'>
                <c:forEach items="${popularItem}" var="item">
                    <a onclick="requestAction('/products/${item.productId}')" href='#'>
                        <div class='product' >
                            <img class='thumbnail' src="../../resources/images/${item.productImageName}" >
                            <p class='product_title'>${item.productName }</p>
                            <p class='product_price'>${item.productPrice}원/일</p>
                        </div>
                    </a>
                </c:forEach>    
				</div>
            </div>

            <div id='categoryProduct' class='categoryProduct'>
                <div>
                    <p class='categoryT'>전체상품</p>
                </div>
                <!-- 전체 상품 리스트 -->
                <div style='padding-top: 1.3em;'>
                <c:forEach items="${getAllItem }" var="item">

                    <a onclick="requestAction('/products/${item.productId}')" href='#'>
                        <div class='product' >
                            <img class='thumbnail' src="../../resources/images/${item.productImageName}" >
                            <p class='product_title'>${item.productName }</p>
                            <p class='product_price'>${item.productPrice}원/일</p>
                        </div>
                    </a>
                 </c:forEach>
                    <br>
                    <br>
                    <button id='btnView'>더보기</button>

                </div>
            </div>
        </div>


    </main>
</body>
<%@include file="../includes/Project_footer.jsp" %>
</html>