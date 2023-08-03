<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../../resources/css/Project_chat.css">
<script type="text/javascript">

	window.addEventListener('load', function() {
		
		fetch('/getOrderIdMessageList/1/1/messages/add')
		// 요청결과를 js object형식으로 반환
		.then(response => response.json())
		// 콜백함수 익명함수로 쓰려면 이렇게 써야함!
		.then(map=>getList(map));
		
	});
	
	function getList(map){
		let list = map.msgList;
		
		console.log(list);
	}
</script>
</head>
<body>
    <header>
        <a href="#">나가기</a>
    </header>
    <main>
        <div class="thead">
            <div class="Product_image">
                <img src="../../../../resources/images/airbed.jpg" alt="">
            </div>
            <div class="Product_info">
                <div class="Product_title">제목제목제목제목제목제목</div>
                <div class="Product_subinfo">
                    <div class="Product_seller">판매자</div>
                    <div class="Product_date">0000-00-00 ~ 0000-00-00</div>
                </div>
            </div>
        </div>
        <div class="chatRoom">
            <div class="chatBox">
                <div class="yourinfo">
                    <span class="yourId">상대방</span>
                </div>
                <div class="yourChat">
                    상대방 메세지 입력받는 창입니다.asdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf
                </div>
                <span class="sendDate">00:00AM</span>
            </div>
            <div class="chatBox">
                <div class="myinfo">
                    <span class="myId">내이름</span>
                </div>
                <div class="myChat">
                    상대방 메세지 입력받는 창입니다.asdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf
                </div>
                <span class="sendDate myDate">00:00AM</span>
            </div>
            <div class="chatBox">
                <div class="myinfo">
                    <span class="myId">내이름</span>
                </div>
                <div class="myChat">
                    상대방 메세지 입력받는 창입니다.
                </div>
                <span class="sendDate myDate">00:00AM</span>
            </div>            <div class="chatBox">
                <div class="myinfo">
                    <span class="myId">내이름</span>
                </div>
                <div class="myChat">
                    상대방 메세지 입력받는 창입니다.
                </div>
                <span class="sendDate myDate">00:00AM</span>
            </div>            <div class="chatBox">
                <div class="myinfo">
                    <span class="myId">내이름</span>
                </div>
                <div class="myChat">
                    상대방 메세지 입력받는 창입니다.
                </div>
                <span class="sendDate myDate">00:00AM</span>
            </div>

        </div>
        <div class="tfoot">
            <div class="tfootBox">
                <textarea class="chatContent" id="" cols="30" rows="10" placeholder="메세지를 입력해주세요."></textarea>
                <button class="chatSend">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                        <path d="M49.9 27.8C15.1 12.7-19.2 50.1-1.2 83.5L68.1 212.2c4.4 8.3 12.6 13.8 21.9 15c0 0 0 0 0 0l176 22c3.4 .4 6 3.3 6 6.7s-2.6 6.3-6 6.7l-176 22s0 0 0 0c-9.3 1.2-17.5 6.8-21.9 15L-1.2 428.5c-18 33.4 16.3 70.8 51.1 55.7L491.8 292.7c32.1-13.9 32.1-59.5 0-73.4L49.9 27.8z"/></svg>
                </button>
            </div>
        </div>
    </main>
</body>
</html>