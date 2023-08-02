package july.lease.dto;

import java.util.List;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Range;
import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AddProductDto {
	
	@NotBlank
	private String productName;
	@Range(min = 1, max = 100000) @NotNull
	private Integer productPrice;
	@NotBlank
	private String productContent;
	@NotNull
	private Long categoryId;
	@NotBlank
	private String rentAbleStartDate;
	@NotBlank
	private String rentAbleEndDate;
	private List<MultipartFile> images;
	
	public AddProductDto() {
	}

	public AddProductDto(String productName, Integer productPrice, String productContent, Long categoryId,
			String rentAbleStartDate, String rentAbleEndDate, List<MultipartFile> images) {
		this.productName = productName;
		this.productPrice = productPrice;
		this.productContent = productContent;
		this.categoryId = categoryId;
		this.rentAbleStartDate = rentAbleStartDate;
		this.rentAbleEndDate = rentAbleEndDate;
		this.images = images;
	}
	
	
	
	
	
}
