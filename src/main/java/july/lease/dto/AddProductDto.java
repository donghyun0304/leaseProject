package july.lease.dto;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AddProductDto {
	
	private String productName;
	private Integer productPrice;
	private String productContent;
	private Long categoryId;
	private Long categoryId2;
	private String rentAbleStartDate;
	private String rentAbleEndDate;
	private List<MultipartFile> images;
	
	public AddProductDto() {
	}

	public AddProductDto(String productName, Integer productPrice, String productContent, Long categoryId,
			Long categoryId2, String rentAbleStartDate, String rentAbleEndDate, List<MultipartFile> images) {
		this.productName = productName;
		this.productPrice = productPrice;
		this.productContent = productContent;
		this.categoryId = categoryId;
		this.categoryId2 = categoryId2;
		this.rentAbleStartDate = rentAbleStartDate;
		this.rentAbleEndDate = rentAbleEndDate;
		this.images = images;
	}
	
	
	
	
	
}
