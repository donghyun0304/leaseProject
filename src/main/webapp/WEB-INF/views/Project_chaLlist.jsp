<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href='../../resources/css/Project_chatList.css'>
<script src="../../../../resources/js/fetch.js"></script>
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
			
			try{				
				fetchPost('/messages/delete', deleteCheckArr, deleteMessage);
			}catch(e){
				console.log('fetchPost', e);
			}
			
		});
		
		// 버튼 전체선택
		checkAll.addEventListener('click', function(){
			console.log("전체선택");
			const checkboxes = document.querySelectorAll('input[type="checkbox"]');
			
			checkboxes.forEach((checkbox) => {
				checkbox.checked = checkAll.checked;
			})
		});
		
	})
	
	function deleteMessage(map){
		
		console.log("map = ", map.message);
		
		if(map.message === "success") {
			window.location.reload();
		} else {
			alert("삭제중 오류가 발생했습니다. 다시 시도해주세요.");
			window.location.reload();
		}
	}

</script>
</head>
<body>
<div class="container">

        <header>
            <h1>쪽지함</h1>
             <input type="checkbox" value="전체선택" id = "checkAll"> 전체선택
            <input type="button" value="삭제" id = "btnDelete">
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
    </div>
</body>
</html>