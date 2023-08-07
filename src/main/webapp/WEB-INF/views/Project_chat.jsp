<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../../resources/css/Project_chat.css">
<script src="../../../../resources/js/fetch.js"></script>
<script type="text/javascript">

	window.addEventListener('load', function() {
		console.log("chat 페이지")
		getOrderMsgList();
		
		// 메세지 등록 버튼 이벤트
		btnMsgWrite.addEventListener('click', function(){
			msgWrite();
		});
	});
	
	// 메세지리스트 요청
	function getOrderMsgList(){
		// /getOrderIdMessageList/{memberId}/messages/{orderId} 멤버아이디랑 오더아이디 넣어서 요청
		fetchGet('/getOrderIdMessageList/1/messages/4', orderMsgListView);
	}
	
	// 메세지 뷰 생성
	function orderMsgListView(map){
		let list = map.msgList;
		let loginId = 1;
		
		let msgDivStr = '';
		
		if(list.length>0) {
			// 근데 쿼리에서 오더아이디로 가져오니까...
			// 그냥 my_id는 보낸사람 
			// your_id는 받는사람
			// 로그인한 아이디랑 같은 my_id가  보낸사람 그 외에는 받는사람
			// 일단 지금 로그인을 member 1번이 했다고 가정
			list.forEach(msg => {
				// 챗박스는 공통
				msgDivStr += '<div class="chatBox" style="overflow-x:hidden; overflow-y:hidden; height: 100%;">'
				
				if(msg.myId === loginId) {
					// 내가 보낸 메세지
	                msgDivStr += '<div class="myinfo">'
	                		   + '<span class="myId">'+msg.myNickname+'</span>'
	                		   + '</div>'
	                		   + '<div class="myChat">'
	                		   + msg.messageText
	                		   + '</div>'
	                		   + '<span class="sendDate myDate">'+msg.messageCreateDate+'</span>';
				} else {
					// 상대방이 보낸 메세지(내가 받은 메세지)
					msgDivStr += '<div class="yourinfo">'
		             		   + '<span class="yourId">'+msg.yourNickname+'</span>'
		             		   + '</div>'
		             		   + '<div class="yourChat">'
		             		   + msg.messageText
		             		   + '</div>'
		             		   + '<span class="sendDate">'+msg.messageCreateDate+'</span>';
				}
				msgDivStr += '</div>';

			})	
		}
		
		
		chatRoom.innerHTML=msgDivStr;
	}
	
	function msgWrite(){
		console.log("버튼이벤트 테스트");
		/*
			메세지에 들어가야할 정보가 음 ..
			외래키가  메세지 테이블에 걸려이있어서 메세지 컨텐츠 테이블에 먼저 입력이 된후에 메세지 테이블에 입력되야함
			
			메세지 컨텐츠 테이블
			private Long messageContentId; // 시퀀스
			private String messageText; //메세지 내용
			
			메세지 테이블 
			private Long messageId; // 시퀀스
			private Long myId; // 로그인 아이디
			private Long yourId; // 주문한사람 아이디 <- 주문정보에서 주문자아이디 뽑아서 input 박스에 넣어서 hidden해두기
			private Long messageContentId; // 메세지 컨텐츠 테이블에 등록한 id
			private char messageReadStatus; // 디폴트 N
			private char messageDeleteStatus; // 디폴트 N
			private Long orderId; // 주문 정보에서 주문번호 뽑아서 input 박스에 넣어서 hidden해두기
			private String messageCreateDate; // sysdate
			
			그러면 받아야할게 메세지 내용, 로그인 아이디, 주문자 아이디, 주문아이디 
			url
			/getOrderIdMessageList/{memberId}/{orderId}/messages/add
			
			
			window.location.href url 받아와서 구분자로 나눠서 memberId 저장 orderId 저장하면 주문자 아이디만 저장해두기
	*/
		let url = window.location.href;
		console.log(url);
	}
</script>
</head>
<body>
<wrap>
    <header>
        <a href="#">나가기</a>
    </header>
    <main>
    
    	<!-- 제품정보 시작 -->
        <div class="thead">
            <div class="Product_image">
                <img src="../../../../resources/images/${msgOrderInfo.productImage}" alt="">
            </div>
            <div class="Product_info">
                <div class="Product_title">${msgOrderInfo.productName}</div>
                <div class="Product_date">대여기간 : ${msgOrderInfo.orderRentStartDate} ~ ${msgOrderInfo.orderRentEndDate}</div>
                <div class="Product_subinfo">
                    <div class="Product_seller">${msgOrderInfo.sellerName}</div>
                    
                </div>
            </div>
        </div>
    	<!-- 제품정보 끝 -->
    
    	<!-- 메세지 시작 -->
        <div class="chatRoom" id="chatRoom" style="height: 100%;">
            
        </div>
        <!-- 메세지 끝 -->
        
        <!-- 댓글 작성 -->
        <div class="tfoot" >
            <div class="tfootBox">
                <textarea class="chatContent" id="msgWrite" cols="30" rows="10" placeholder="메세지를 입력해주세요."></textarea>
                <button class="chatSend" id="btnMsgWrite">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                        <path d="M49.9 27.8C15.1 12.7-19.2 50.1-1.2 83.5L68.1 212.2c4.4 8.3 12.6 13.8 21.9 15c0 0 0 0 0 0l176 22c3.4 .4 6 3.3 6 6.7s-2.6 6.3-6 6.7l-176 22s0 0 0 0c-9.3 1.2-17.5 6.8-21.9 15L-1.2 428.5c-18 33.4 16.3 70.8 51.1 55.7L491.8 292.7c32.1-13.9 32.1-59.5 0-73.4L49.9 27.8z"/></svg>
                </button>
            </div>
        </div>
    </main>

</body>
</html>