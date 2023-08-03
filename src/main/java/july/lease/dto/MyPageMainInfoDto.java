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
	
}
