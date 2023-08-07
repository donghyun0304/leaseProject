package july.lease.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class OrderMessageDto {
	
	private String orderRentStartDate; // 대여기간
	private String orderRentEndDate; // 대여기간
	private String productName; // 상품명
	private String productImage;// 이미지
	private String sellerName; // 판매자
	
	public OrderMessageDto() {
		
	}

	public OrderMessageDto(String orderRentStartDate, String orderRentEndDate, String productName, String productImage,
			String sellerName) {
		super();
		this.orderRentStartDate = orderRentStartDate;
		this.orderRentEndDate = orderRentEndDate;
		this.productName = productName;
		this.productImage = productImage;
		this.sellerName = sellerName;
	}
}
