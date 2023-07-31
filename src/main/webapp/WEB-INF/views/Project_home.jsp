<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../resources/css/Project_header.css">
    <link rel="stylesheet" href="../../resources/css/Project_footer.css">
    <link rel="stylesheet" href="../../resources/css/Project_home.css">
    <script src="../../resources/js/calendar.js"></script>
    <script src="../../resources/js/Project_home.js"></script>

</head>
<%@include file="../includes/Project_header.jsp"%>
<body>
    <main>
        <div id='contents' class='contents'>

            <div id='banner'>
                <div class="arrow" id="left">&lang;</div>
                <div class="arrow" id="right">&rang;</div>
            </div>
            
            <div id='latestProduct' class='latestProduct'>
                <div>
                    <p class='categoryT' >최근등록한상품</p>
                </div>
                <div style='padding-top: 1.3em;'>
                    <a href='#'>
                        <div class='product' >
                            <img class='thumbnail' src='111.png' >
                            <p class='product_title'>상품명</p>
                            <p class='product_price'>000,000원/일</p>
                        </div>
                    </a>

                    <a href='#'>
                        <div class='product' >
                            <img class='thumbnail' src='111.png' >
                            <p class='product_title'>상품명</p>
                            <p class='product_price'>000,000원/일</p>
                        </div>
                    </a>

                    <a href='#'>
                        <div class='product' >
                            <img class='thumbnail' src='111.png' >
                            <p class='product_title'>상품명</p>
                            <p class='product_price'>000,000원/일</p>
                        </div>
                    </a>

                    <a href='#'>
                        <div class='product'>
                            <img class='thumbnail' src='111.png' >
                            <p class='product_title'>상품명</p>
                            <p class='product_price'>000,000원/일</p>
                        </div>
                    </a>

                </div>

            </div>

            <div id='categoryProduct' class='categoryProduct'>
                <div>
                    <p class='categoryT'>전체상품</p>
                </div>
                <div style='padding-top: 1.3em;'>

                    <a href='#'>
                        <div class='product' >
                            <img class='thumbnail' src='111.png' >
                            <p class='product_title'>상품명</p>
                            <p class='product_price'>000,000원/일</p>
                        </div>
                    </a>

                    <a href='#'>
                        <div class='product' >
                            <img class='thumbnail' src='111.png' >
                            <p class='product_title'>상품명</p>
                            <p class='product_price'>000,000원/일</p>
                        </div>
                    </a>

                    <a href='#'>
                        <div class='product' >
                            <img class='thumbnail' src='111.png' >
                            <p class='product_title'>상품명</p>
                            <p class='product_price'>000,000원/일</p>
                        </div>
                    </a>

                    <a href='#'>
                        <div class='product' >
                            <img class='thumbnail' src='111.png' >
                            <p class='product_title'>상품명</p>
                            <p class='product_price'>000,000원/일</p>
                        </div>
                    </a>
                    <a href='#'>
                        <div class='product' >
                            <img class='thumbnail' src='111.png' >
                            <p class='product_title'>상품명</p>
                            <p class='product_price'>000,000원/일</p>
                        </div>
                    </a>

                    <a href='#'>
                        <div class='product' >
                            <img class='thumbnail' src='111.png' >
                            <p class='product_title'>상품명</p>
                            <p class='product_price'>000,000원/일</p>
                        </div>
                    </a>

                    <a href='#'>
                        <div class='product' >
                            <img class='thumbnail' src='111.png' >
                            <p class='product_title'>상품명</p>
                            <p class='product_price'>000,000원/일</p>
                        </div>
                    </a>
                    
                    <a href='#'>
                        <div class='product' >
                            <img class='thumbnail' src='111.png' >
                            <p class='product_title'>상품명</p>
                            <p class='product_price'>000,000원/일</p>
                        </div>
                    </a>
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