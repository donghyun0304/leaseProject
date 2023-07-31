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
	
	public Message() {
	}

	public Message(Long myId, Long yourId, Long messageContentId) {
		this.myId = myId;
		this.yourId = yourId;
		this.messageContentId = messageContentId;
	}



	
	
}
