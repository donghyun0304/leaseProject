package july.lease.dao.product;

import java.util.List;

import org.assertj.core.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.transaction.annotation.Transactional;

import july.lease.domain.Product;

@SpringBootTest
@ActiveProfiles("test")
@Transactional
public class ProductDaoTest {
	
	@Autowired
	private ProductDao productDao;
	
	@Test
	void save() {
		
		//given
		Product product = new Product(1L, 1L, "≈Ÿ∆Æ1", 100000, 
									"≈Ÿ∆Æ1º≥∏Ì", "º≠øÔ");
		productDao.save(product);
		
		//when
		Product findProduct = productDao.findByProductId(product.getProductId());
		
		//then
		Assertions.assertThat(findProduct.getProductId())
						.isEqualTo(product.getProductId());
	}
	
	@Test
	void findAllForHome() {
		//given
		Product product1 = new Product(1L, 1L, "≈Ÿ∆Æ1", 100000, 
											"≈Ÿ∆Æ1º≥∏Ì", "º≠øÔ");
		Product product2 = new Product(1L, 1L, "≈Ÿ∆Æ2", 200000, 
				"≈Ÿ∆Æ2º≥∏Ì", "¿Œ√µ");
		productDao.save(product1);
		productDao.save(product2);
		
		//when
		List<Product> list = productDao.findAllForHome();
				
		//then
		Assertions.assertThat(list.get(0).getProductId()).isEqualTo(product1.getProductId());
	}

}
