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

	window.addEventListener('load', function() {
		btnDelete.addEventListener('click', function(){
			// 삭제할 메세지 선택 번호
			const deleteChecks= document.querySelectorAll("#deleteCheck");
			const deleteCheckArr = [];
			
			deleteChecks.forEach(checkbox => {
				if(checkbox.checked){
					deleteCheckArr.push(checkbox.value);
				}
			});
			
			console.log("deleteCheckArr : ", deleteCheckArr);
			
		});
	})
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
        <header>
            <h1>쪽지함</h1>
            <input type="button" value="삭제" id = "btnDelete">
            <input type="button" value="창닫기" id = "btnClose">
        </header>
            
        <main>
	        <!-- 쪽지 리스트 -->
	        <!-- memberId랑 myId가 같으면 내가 보낸거 -->
	        <!-- memberId랑 yourId가 같으면 내가 받은거니까 yourId=myId가 돼야함 -->
	        <c:forEach items="${allChatList}" var="list">
	        	<input type="checkbox" id="deleteCheck" value="${list.roomNo}">
	        	<div class = "message-box" onclick = "location.href='/members/${memberId}/messages/${list.productId }/${list.roomNo}';">
	                <div class = "message-img">
	                    <img src="../../../../resources/images/${list.storeImageName}" alt="" class= "img">
	                     <p class = "product_name">${list.productName} ${list.noReadMcnt != 0 ? 'N' : ''}</p>
	                     <p>${list.myId eq memberId ? list.reciver : list.sender}</p>
	                     <p>${list.messageText} ${list.messageCreateDate}</p>
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