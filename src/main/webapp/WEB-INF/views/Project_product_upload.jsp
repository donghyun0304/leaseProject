<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
                <form:input type="text" name="productName" id="" path="productName" cssErrorClass="errorsborder"/>
                <div class="errors">
                	<form:errors path="productName"/>
        		</div>
            </div>
        </div>
        <div class='content_price'>
            <h3>가격 : </h3>
            <div>
                <form:input type="text" name="productPrice" path="productPrice" id="" cssErrorClass="errorsborder"/>
                <div class="errors">
                	<form:errors path="productPrice"/>
        		</div>
            </div>
        </div>
        <div class='content_category'>
            <h3>카테고리 : </h3>
            <div>
                <form:select name="categoryId3" class="category_first" path="categoryId3" onchange="kindChange(this)">
                    <form:option value="" label="선택해주세요."/>
                    <form:option value="1" label="취침용품"/>
                    <form:option value="2" label="취사용품"/>
                   	<form:option value="3" label="편의용품"/>
                   	<form:option value="4" label="기타"/>
                </form:select>
                <form:select name="categoryId" path="categoryId" class="category_second">
                    <form:option value="" label="선택해주세요."/>
                	<c:if test="${product.categoryId3 == '1'}">
     				   <form:option value="101" label="텐트"/>
     				   <form:option value="102" label="매트"/>
     				   <form:option value="103" label="쉘터"/>
     				   <form:option value="104" label="침낭"/>
     				   <form:option value="199" label="기타"/>
   					 </c:if>
   					 <c:if test="${product.categoryId3 == '2'}">
     				   <form:option value="201" label="그릴"/>
     				   <form:option value="202" label="화로"/>
     				   <form:option value="203" label="토치"/>
     				   <form:option value="204" label="코펠"/>
     				   <form:option value="299" label="기타"/>
   					 </c:if>
   					 <c:if test="${product.categoryId3 == '3'}">
     				   <form:option value="301" label="테이블"/>
     				   <form:option value="302" label="의자"/>
     				   <form:option value="303" label="파워뱅크"/>
     				   <form:option value="304" label="행어"/>
     				   <form:option value="305" label="워터저그"/>
     				   <form:option value="399" label="기타"/>
   					 </c:if>
   					 <c:if test="${product.categoryId3 == '4'}">
     				   <form:option value="400" label="기타"/>
   					 </c:if>
   					 
                </form:select>
                <div class="errors">
                	<form:errors path="categoryId"/>
        		</div>
            </div>
        </div>
        
        <div class='content_details'>
            <h3>제품상세 : </h3>
            <div>
                <form:textarea name="productContent" path="productContent" id=""  cols="30" rows="10" cssErrorClass="errorsborder"/>
                <div class="errors">
                	<form:errors path="productContent"/>
        		</div>
            </div>
        </div>
        <div class='lengthCheck'>0/1000자</div>
        <div class='content_date'>
            <h3>날짜 :</h3>
            <div class="subCalBox">
                <nav class="subCal_location">
                    <input type="text" name="" id='subStartDate' value="" hidden path="rentAbleStartDate"> <!-- name에 값을 안넣어야 날짜데이터가 제대로 들어옴 -->
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
                    <div class="errors">
                	<form:errors path="rentAbleStartDate"/>
        		</div>
                </nav>
                
                <aside class="enabledBox">
                <c:if test="${product.rentAbleStartDate !=null}">
                <c:forEach var="index" begin="0" end="${product.rentAbleStartDate.size()-1}">
                	 <c:set var="startDate" value="${product.rentAbleStartDate[index]}" />
    				 <c:set var="endDate" value="${product.rentAbleEndDate[index]}" />
                		<aside class="enabledDate">
                			<span>${startDate} ~ ${endDate}</span>
                				<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 384 512" class="subCalendar_cancel">
                					<path d="M376.6 84.5c11.3-13.6 9.5-33.8-4.1-45.1s-33.8-9.5-45.1 4.1L192 206 56.6 43.5C45.3 29.9 25.1 28.1 11.5 39.4S-3.9 70.9 7.4 84.5L150.3 256 7.4 427.5c-11.3 13.6-9.5 33.8 4.1 45.1s33.8 9.5 45.1-4.1L192 306 327.4 468.5c11.3 13.6 31.5 15.4 45.1 4.1s15.4-31.5 4.1-45.1L233.7 256 376.6 84.5z"></path>
                				</svg>
                				<input type="text" name="rentAbleStartDate" class="subStartDate" value="${startDate}" hidden>
                				<input type="text" name="rentAbleEndDate" class="subEndDate" value="${endDate}" hidden>
                		</aside>
                	</c:forEach>
                </c:if>
                </aside>
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