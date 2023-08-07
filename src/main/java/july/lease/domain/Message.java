package july.lease.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Message {
	
	private Long messageId;
	private Long myId;
	private Long yourId;
	private Long messageContentId;
	private char messageReadStatus;
	private char messageDeleteStatus;
	private Long orderId;
	private String messageCreateDate;
	private String myNickname;
	private String yourNickname;
	private String messageText;
	
	private String orderRentStartDate; // 대여기간
	private String orderRentEndDate; // 대여기간
	private String productName; // 상품명
	private String productImage;// 이미지
	private String sellerName; // 판매자
	
	public Message() {
		
	}

	public Message(Long messageId, Long myId, Long yourId, Long messageContentId, char messageReadStatus,
			char messageDeleteStatus, Long orderId, String messageCreateDate, String myNickname, String yourNickname,
			String messageText, String orderRentStartDate, String orderRentEndDate, String productName,
			String productImage, String sellerName) {
		super();
		this.messageId = messageId;
		this.myId = myId;
		this.yourId = yourId;
		this.messageContentId = messageContentId;
		this.messageReadStatus = messageReadStatus;
		this.messageDeleteStatus = messageDeleteStatus;
		this.orderId = orderId;
		this.messageCreateDate = messageCreateDate;
		this.myNickname = myNickname;
		this.yourNickname = yourNickname;
		this.messageText = messageText;
		this.orderRentStartDate = orderRentStartDate;
		this.orderRentEndDate = orderRentEndDate;
		this.productName = productName;
		this.productImage = productImage;
		this.sellerName = sellerName;
	}

}
