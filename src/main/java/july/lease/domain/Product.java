package july.lease.domain;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Product {
	
	private Long productId;
	private Long memberId;
	private Long categoryId;
	private String productName;
	private Integer productPrice;
	private String productContent;
	private String location;
	private String productCreateDate;
	private char productEndStatus;
	private List<ProductImage> images;
	
	public Product() {
	}

	public Product(Long memberId, Long categoryId, String productName, Integer productPrice, String productContent,
			String location) {
		this.memberId = memberId;
		this.categoryId = categoryId;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productContent = productContent;
		this.location = location;
	}
	
	
	
	

}
