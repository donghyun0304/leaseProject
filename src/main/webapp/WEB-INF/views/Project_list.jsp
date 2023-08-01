<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../resources/css/Project_list.css">
    <script src="../../resources/js/Project_list.js"></script>

</head>
<%@include file="../includes/Project_header.jsp" %>
<body>
    <main>
        <div id='contents' class='contents'>


            <div class='ctegorybox'>
                <!-- 카테고리 or 검색어 , 총 수량 -->
                <div id='categorytitle' style=' display: flex;'>
                    <p id='ctegoryT' >텐트</p>
                    <p id='numT' >(총0개)</p>
                </div>
                <hr>
                <!-- 인기도순 최신등록순 -->
            </div>
                <nav>
                    <ul class='smallmenu'>
                        <li class='sortType' ><a class='actA active' href='#' onclick="change_btn(event)">인기도순</a></li>
                        <li class='sortType' ><a class='actA' href='#' onclick="change_btn(event)">최신등록순</a></li>
                        <li class='sortType' ><a class='actA' href='#' onclick="change_btn(event)">낮은가격순</a></li>
                        <li class='sortType' ><a class='actA' href='#' onclick="change_btn(event)">높은가격순</a></li>
                    </ul>
                    <ul class='smallmenu'>
                        <li class='sortType'>
                            <a class='' href='#'>상태별보기<span>∨</span></a>
                            <!-- 서브메뉴 -->
                            <ul class='submenu'>
                                <li><a href="#">새상품</a></li>
                                <li><a href="#">상태A</a></li>
                                <li><a href="#">상태B</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>

            <br>
            <div id='submenu_type'>
                <ul>
                    <li><sapn class='remove'>텐트<button style='cursor:pointer; background-color: rgba(255, 255, 255, 0); border: none;'>
                        <svg width='0.5rem' xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512">
                            <path d="M376.6 84.5c11.3-13.6 9.5-33.8-4.1-45.1s-33.8-9.5-45.1 4.1L192 206 56.6 43.5C45.3 29.9 25.1 28.1 11.5 39.4S-3.9 70.9 7.4 84.5L150.3 256 7.4 427.5c-11.3 13.6-9.5 33.8 4.1 45.1s33.8 9.5 45.1-4.1L192 306 327.4 468.5c11.3 13.6 31.5 15.4 45.1 4.1s15.4-31.5 4.1-45.1L233.7 256 376.6 84.5z"/></svg>
                    </button></sapn></li>
                    <li><sapn class='remove'>새상품<button style='cursor:pointer; background-color: rgba(255, 255, 255, 0); border: none;'>
                        <svg  width='0.5rem' xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512">
                            <path d="M376.6 84.5c11.3-13.6 9.5-33.8-4.1-45.1s-33.8-9.5-45.1 4.1L192 206 56.6 43.5C45.3 29.9 25.1 28.1 11.5 39.4S-3.9 70.9 7.4 84.5L150.3 256 7.4 427.5c-11.3 13.6-9.5 33.8 4.1 45.1s33.8 9.5 45.1-4.1L192 306 327.4 468.5c11.3 13.6 31.5 15.4 45.1 4.1s15.4-31.5 4.1-45.1L233.7 256 376.6 84.5z"/></svg>
                    </button></sapn></li>
                </ul>
            </div>

            <div id='categoryProduct'>

                <a href='#'>
                    <div class='product' >
                        <img class='thumbnail' src='111.png' >
                        <p class='product_title'>상품명</p>
                        <p class='product_price'>000,000원/일</p>
                    </div>
                </a>

                <a href='#'>
                    <div class='product' >
                        <img class='thumbnail' src='zx.png' >
                        <p class='product_title'>원터치 놀이텐트</p>
                        <p class='product_price'>2,000원/일</p>
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
            </div>

            <!-- <div id='pageNavi'>

                <button id='btnPage'>1</button>
                <button id='btnPage'>2</button>
                <button id='btnPage'>3</button>
            </div> -->

            <!-- 페이지 블럭 생성 -->
            <nav>
                <ul id='pageNavi'>
                    <li class='btnPage'>
                        <svg width='1rem' xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                        <path d="M288 94c0-16.6-13.5-30-30-30c-6.3 0-12.5 2-17.6 5.7L9.9 236.6C3.7 241.1 0 248.3 0 256s3.7 14.9 9.9 19.4L240.3 442.3c5.1 3.7 11.3 5.7 17.6 5.7c16.6 0 30-13.4 30-30V318.9L464.7 442.6c5.1 3.5 11.1 5.4 17.3 5.4c16.6 0 30.1-13.5 30.1-30.1V94.1C512 77.5 498.5 64 481.9 64c-6.2 0-12.2 1.9-17.3 5.4L288 193.1V94zm0 157.7L464 128.5v255L288 260.3v-8.6zM64.9 256L240 129.2V382.8L64.9 256z"/></svg>
                    </li>
                    <li class='btnPage active' onclick="change_btnPage(event)">
                        <span class='page_number'>1</span>
                    </li>
                    <li class='btnPage' onclick="change_btnPage(event)">
                        <span class='page_number'>2</span>
                    </li>
                    <li class='btnPage' onclick="change_btnPage(event)">
                        <span class='page_number'>3</span>
                    </li>
                    <li class='btnPage'>
                        <svg width='1rem' xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                        <path d="M224 94c0-16.6 13.5-30 30-30c6.3 0 12.5 2 17.6 5.7L502.1 236.6c6.2 4.5 9.9 11.7 9.9 19.4s-3.7 14.9-9.9 19.4L271.7 442.3c-5.1 3.7-11.3 5.7-17.6 5.7c-16.6 0-30-13.4-30-30V318.9L47.3 442.6c-5.1 3.5-11.1 5.4-17.3 5.4C13.5 448 0 434.5 0 417.9V94.1C0 77.5 13.5 64 30.1 64c6.2 0 12.2 1.9 17.3 5.4L224 193.1V94zm0 157.7L48 128.5v255L224 260.3v-8.6zM447.1 256L272 129.2V382.8L447.1 256z"/></svg>
                    </li>
                </ul>
            </nav>

        </div>
    </main>
   <%@include file="../includes/Project_footer.jsp" %>
</body>
</html></html>