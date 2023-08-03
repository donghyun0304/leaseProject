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
	
	public Message() {
	}

	public Message(Long myId, Long yourId, Long messageContentId) {
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
	}

}
