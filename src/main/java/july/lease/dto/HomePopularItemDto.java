package july.lease.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class HomePopularItemDto {
		String productImageName;
		String productName;
		String productPrice;
		String productId;
		
		public HomePopularItemDto() {
			
		}
		
		public HomePopularItemDto(String productImageName, String productName, String productPrice, String productId) {
			super();
			this.productImageName = productImageName;
			this.productName = productName;
			this.productPrice = productPrice;
			this.productId = productId;
		}
}
