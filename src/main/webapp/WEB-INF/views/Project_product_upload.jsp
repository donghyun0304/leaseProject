<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="../../resources/js/Project_product_upload.js"></script>
    <link rel="stylesheet" href="../../resources/css/Project_product_upload.css">
    <link rel="stylesheet" href="../../resources/css/calendar_one.css">
    <script src="../../resources/js/calendar_one.js"></script>
        <link rel="stylesheet" href="../../resources/css/Upload_Calendar.css">
    <script src="../../resources/js/Upload_Calendar.js"></script>
</head>
<%@include file="../includes/Project_header.jsp" %>
<body>
<form:form modelAttribute="product" action="/products/add" method="post" enctype="multipart/form-data">
<div class = "main">
    <h1>상품등록</h1>
    <h2>기본정보</h2>
    <hr>
    <div class = image-box>
        <div class = "image">
            <h3>상품이미지</h3>
            <div class = "preview">
                <div class='view_image_click'>
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 448 512" width='2rem'>
                        <path d="M256 80c0-17.7-14.3-32-32-32s-32 14.3-32 32V224H48c-17.7 0-32 14.3-32 32s14.3 32 32 32H192V432c0 17.7 14.3 32 32 32s32-14.3 32-32V288H400c17.7 0 32-14.3 32-32s-14.3-32-32-32H256V80z"/></svg>
                    <span>사진은 최대 8장까지 가능합니다.</span>
                </div>
            </div>
            <input type = "file" name="images" class = "real-upload" accept="image/*" id = "fileUpload" required multiple><br>
        </div>
    </div>
    <hr>

    <div class = content>
        <div class='content_title'>
            <h3>제목 : </h3>
            <div>
                <input type="text" name="productName" id="" path="productName" class="errorsborder" autofocus>
                <div class="errors">제목 에러메시지 출력</div>
            </div>
        </div>
        <div class='content_price'>
            <h3>가격 : </h3>
            <div>
                <input type="text" name="productPrice" path="productPrice" id="" >
                <div class="errors">가격 에러메시지 출력</div>
            </div>
        </div>
        <div class='content_category'>
            <h3>카테고리 : </h3>
            <div>
                <select name="category" class="category_first">
                    <option value="option_first1">대분류1</option>    
                    <option value="option_first1">대분류2</option>    
                    <option value="option_first1">대분류3</option>    
                </select>
                <select name="categoryId" class="category_second">
                    <option value="101">중분류1</option>    
                    <option value="102">중분류2</option>    
                    <option value="103">중분류3</option>    
                </select>
                <div class="errors">카테고리 에러메시지 출력</div>
            </div>
        </div>
        
        <div class='content_details'>
            <h3>제품상세 : </h3>
            <div>
                <textarea name="productContent" path="productContent" id=""  cols="30" rows="10"></textarea>
                <div class="errors">제품상세 에러메시지 출력</div>
            </div>
        </div>
        <div class='lengthCheck'>0/1000자</div>
        <div class='content_date'>
            <h3>날짜 :</h3>
            <div class="subCalBox">
                <nav class="subCal_location">
                    <input type="text" name="" id='subStartDate' value="" hidden> <!-- name에 값을 안넣어야 날짜데이터가 제대로 들어옴 -->
                    <input type="text" name="" id='subEndDate' value="" hidden>  <!-- name에 값을 안넣어야 날짜데이터가 제대로 들어옴 -->
                    <div class='subCalendar'>
                        <div class='subCal toCal'>
                            <div class='subCalTop'>
                                <span id='subPreBtn'>
                                    <svg transform='rotate(180)' xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512">
                                        <path d="M278.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L210.7 256 73.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160z"/></svg>
                                </span>
                                <div>
                                    <span id='subPreYear'></span>
                                    <span>.</span>
                                    <span id='subPreMonth'></span>
        
                                </div>
                                <span id='subNextBtn'>
                                    <svg width='0.8rem' xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512"><path d="M278.6 233.4c12.5 12.5 12.5 32.8 0 45.3l-160 160c-12.5 12.5-32.8 12.5-45.3 0s-12.5-32.8 0-45.3L210.7 256 73.4 118.6c-12.5-12.5-12.5-32.8 0-45.3s32.8-12.5 45.3 0l160 160z"/></svg>
                                </span>
                            </div>
                            <ul class='subWeekTitle'>
                                <li class="subCol">일</li>
                                <li class="subCol">월</li>
                                <li class="subCol">화</li>
                                <li class="subCol">수</li>
                                <li class="subCol">목</li>
                                <li class="subCol">금</li>
                                <li class="subCol">토</li>
                            </ul>
                            <ul class='subDays'>
        
                            </ul>
                        </div>
                        <div id='subSearchForm'>
                            <div>
                                <span>시작일 : </span>
                                <span class="subStart">0000-00-00</span>
                            </div>
                            <div>
                                <span>종료일 : </span>
                                <span class="subEnd">0000-00-00</span>
                            </div>
                        </div>
                    </div>
                    
                </nav>
                <aside class="enabledBox"></aside>
            </div>
        </div>
        <div class = "bottom">
            <input type="reset" class = "reset" value="초기화">
            <input type="submit" class = "product_regi" value="등록하기">
        </div>
    </div>
    
</div>
</form:form>
</body>
    <%@include file="../includes/Project_footer.jsp" %>
</html>