<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href='../../resources/css/Project_chatList.css'>
<script>
/*
    window.onload=function(){
        let close = document.getElementById('close');
        
        close.addEventListener('click', function(){
            modal.classList.remove('active');
        });
    }

    function popup(){
        window.open("달력.html", "", "width: 100, height: 100");
    }*/
</script>
</head>
<body>
<div class="container">
        <header>
            <h1>쪽지함</h1>
        </header>
        <main>
            <div class = "message-box" onclick = "popup()">
                <div class = "message-img">
                    <img src="image/tent1.jpg" alt="" id = "img1">
                     <p class = "product_name">상품명 (대여기간 : 00/00)</p>
                     <p>대화상대</p>
                     <p>마지막 메세지 내용</p>
                </div>
            </div>
            
            <div class = "message-box" onclick = "popup()">
                <div class = "message-img">
                    <img src="image/tent2.jpeg" alt="" id = "img1">
                    <p class = "product_name">상품명 (대여기간 : 00/00)</p>
                    <p>대화상대</p>
                    <p>마지막 메세지 내용</p>
                </div>
            </div>
            
            <div class = "message-box" onclick = "popup()">
                <div class = "message-img">
                    <img src="image/tent3.jpeg" alt="" id = "img1">
                    <p class = "product_name">상품명 (대여기간 : 00/00)</p>
                    <p>대화상대</p>
                    <p>마지막 메세지 내용</p>
                </div>
            </div>
            
            <div class = "message-box" onclick = "popup()">
                <div class = "message-img">
                    <img src="image/tent4.jpeg" alt="" id = "img1">
                    <p class = "product_name">상품명 (대여기간 : 00/00)</p>
                    <p>대화상대</p>
                    <p>마지막 메세지 내용</p>
                </div>
            </div>
            
            <div class = "message-box" onclick = "popup()">
                <div class = "message-img">
                    <img src="image/tent5.jpg" alt="" id = "img1">
                    <p class = "product_name">상품명 (대여기간 : 00/00)</p>
                    <p>대화상대</p>
                    <p>마지막 메세지 내용</p>
                </div>           
            </div>
        </main>
        <footer>
            <!-- <input type="button" value="창 닫기" onclick = "window.close()" id = "close"> -->
        </footer>
    </div>
</body>
</html>