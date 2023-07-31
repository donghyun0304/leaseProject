package july.lease.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Member {
	
	private Long memberId;
	private String memberEmail;
	private String memberPassword;
	private String memberName;
	private String memberNickname;
	private String memberPhone;
	private String memberCreateDate;
	private char memberDeleteStatus;
	
	public Member() {
	}

	public Member(String memberEmail, String memberPassword, String memberName, String memberNickname,
			String memberPhone) {
		this.memberEmail = memberEmail;
		this.memberPassword = memberPassword;
		this.memberName = memberName;
		this.memberNickname = memberNickname;
		this.memberPhone = memberPhone;
	}
	
	
	
	
}
