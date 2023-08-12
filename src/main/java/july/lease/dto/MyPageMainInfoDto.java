package july.lease.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;


@ToString
@Setter
@Getter
public class MyPageMainInfoDto {

	private String productId;
	private String productImage;
	private String productName;
	private String startDate;
	private String endDate;
	private String countDate;
	private String price;
	private String memberName;
	private Long orderId;
	
	public MyPageMainInfoDto(String productId, String productImage, String productName, String startDate,
			String endDate, String countDate, String price, String memberName, Long orderId) {
		this.productId = productId;
		this.productImage = productImage;
		this.productName = productName;
		this.startDate = startDate;
		this.endDate = endDate;
		this.countDate = countDate;
		this.price = price;
		this.memberName = memberName;
		this.orderId = orderId;
	}
	


	
	
	
	
}
