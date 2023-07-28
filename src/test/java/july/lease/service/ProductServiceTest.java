package july.lease.service;

import java.util.ArrayList;
import java.util.List;

import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.transaction.annotation.Transactional;

import july.lease.dao.product.ProductDao;
import july.lease.dao.product.ProductMapper;
import july.lease.dao.productImage.ProductImageDao;
import july.lease.domain.Product;
import july.lease.domain.ProductImage;
import july.lease.service.dto.HomeResponseDto;
import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@ActiveProfiles("test")
@Transactional
@Slf4j
public class ProductServiceTest {
	
	@Autowired
	private ProductService ProductService;
	@Autowired
	private ProductDao productDao;
	@Autowired
	private ProductImageDao productImageDao;
	
	@Test
	void findAllForHome() {
		productDaoTest();
		List<HomeResponseDto> homeResponseDtos = ProductService.findAllForHome();
		
		for(HomeResponseDto homeResponseDto : homeResponseDtos) {
			log.info("===============================");
            log.info("homeResponseDto={}", homeResponseDto);
		}
		
		Assertions.assertThat(homeResponseDtos.size()).isEqualTo(1);
		
	}
	
	private void productDaoTest() {
		Product product1 = new Product(1L, 1L, "≈Ÿ∆Æ1", 100000, 
				"≈Ÿ∆Æ1º≥∏Ì", "º≠øÔ");
		productDao.save(product1);
		
		List<ProductImage> images = new ArrayList<>();
		images.add(new ProductImage(product1.getProductId(), "tent1.jpg", "a1.jpg"));
		images.add(new ProductImage(product1.getProductId(), "tent2.jpg", "a2.jpg"));
		productImageDao.save(images);
		
	}
	


}
