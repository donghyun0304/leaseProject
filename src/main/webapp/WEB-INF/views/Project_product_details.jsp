<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
  
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../resources/css/Project_product_details.css">
    <link rel="stylesheet" href="../../resources/css/calendar_one.css">
    <script src="../../resources/js/project_product_details.js"></script>
    <script src='../../resources/js/calendar_one.js'></script>
</head>
<%@include file="../includes/Project_header.jsp" %>
<body>
      <main>   
        <div class="product">
            <div class='product_section_one'>     
                
                <div id="container" >               
                    <button class="arrow" id="left">&lang;</button>  
                    <button class="arrow" id="right">&rang;</button>
                </div>          
                <div class = "small_image_list">
                    <img src="image/tent1.jpg" class='small_image' onclick="doShow(this.src)"/></li>            
                    <img src="image/tent2.jpeg" class='small_image' onclick="doShow(this.src)"/></li>            
                    <img src="image/tent3.jpeg" class='small_image' onclick="doShow(this.src)"/></li>            
                    <img src="image/tent4.jpeg" class='small_image' onclick="doShow(this.src)"/></li>            
                    <img src="image/tent5.jpg" class='small_image' onclick="doShow(this.src)"/></li>        
                    <img src="image/tent1.jpg" class='small_image' onclick="doShow(this.src)"/></li>            
                    <img src="image/tent2.jpeg" class='small_image' onclick="doShow(this.src)"/></li>            
                    <img src="image/tent3.jpeg" class='small_image' onclick="doShow(this.src)"/></li>            
                  
                </div> 
            </div>
      
            <div class='product_section_two'>
                <div class='product_info'>
                    <div class='info_part' style='width: 20rem;'>
                        상품 제목 <br>
                        10,000 원
                    </div>                    
                    <div class='info_part'>
                        <button id='edit_button' >수정하기</button>
                    </div>
                </div>
            
                <input type="text" name="" id="subStartDate" class='hidden'>
                <input type="text" name="" id="subEndDate" class='hidden'>
                <div class='subCalendar'>
                    <div class='subCal_header'>
                        <h3>대여일</h3>
                    </div>
                    <div class='subCal toCal'> <!-- toCal 없애야함-->
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
                <div class='tag_list'>
                    <ul style='padding: 0.5rem 0rem 0rem 0rem;'>
                        <li class='tagbox'>#텐트 </li>
                        <li class='tagbox'>#캠핑 </li>
                        <li class='tagbox'>#아웃도어 </li>    
                    </ul>                
                </div>
                <div class="product_buttons">
                    <button>찜♥</button>
                    <button>쪽지</button>
                    <button>대여하기</button>
                </div>
            </div>
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <div class='product_detail'>
        <hr>
        <br>
        <div class='detail_section'>
            <div class="detail_section_one">
               
                <ul><h4 id='product_detail_title'>상품상세</h4>
                    <li id="product_detail_content">    
                        상품상세정보입니다.
                    </li>
                   
                </ul>                   
            </div>     
            <div class='detail_section_two'></div>     
            <div class='detail_section_three'>
                <h4 id='user_store'>판매자 상점정보</h4>
                    <ul class='user_store_info'>
                        <li id='user_nickname'>판매자 (닉네임): 짱구야 </li><br>
                        <li id='sell_products'>판매중인 상품 : </li>
                            <table class='sell_product'>
                                <tr class='sell_item_list' id='sell_item1'>
                                    <td><img src='image/tent1.jpg'></td>
                                    <td class='item_info'>텐트1 / 50,000 원 / 일 </td>
                                </tr>
                                <tr class='sell_item_list' id='sell_item2'>
                                    <td><img src='image/tent2.jpeg'></td>
                                    <td class='item_info'>텐트2 / 50,000 원 / 일 </td>
                                </tr>
                                <tr class='sell_item_list' id='sell_item3'>
                                    <td><img src='image/tent3.jpeg'></td>
                                    <td class='item_info'>텐트3 / 50,000 원 / 일 </td>
                                </tr>
                            </table>
                    </ul>
            </div>            
        </div>
    </main>
    <%@include file="../includes/Project_footer.jsp" %>
</body>
</html>