<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
*/
</script>
</head>
<body>
<div class="container">
memberId : ${memberId}
        <header>
            <h1>쪽지함</h1>
        </header>
            
        <main>
	        <!-- 쪽지 리스트 -->
	        <!-- memberId랑 myId가 같으면 내가 보낸거 -->
	        <!-- memberId랑 yourId가 같으면 내가 받은거니까 yourId=myId가 돼야함 -->
	        <c:forEach items="${allChatList}" var="list">
	        	<div class = "message-box" onclick = "location.href='/members/${memberId}/messages/${list.productId }/${list.roomNo}';">
	                <div class = "message-img">
	                    <img src="../../../../resources/images/${list.storeImageName}" alt="" class= "img">
	                     <p class = "product_name">${list.productName}</p>
	                     <p>${list.myId eq memberId ? list.reciver : list.sender}</p>
	                     <p>${list.messageText}</p>
	                </div>
	            </div>
	        </c:forEach>

        </main>
        <footer>
            <!-- <input type="button" value="창 닫기" onclick = "window.close()" id = "close"> -->
        </footer>
    </div>
</body>
</html>