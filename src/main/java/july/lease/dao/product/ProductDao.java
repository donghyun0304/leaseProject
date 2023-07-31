package july.lease.dao.product;

import java.util.List;

import org.springframework.stereotype.Repository;

import july.lease.domain.Product;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
@RequiredArgsConstructor
public class ProductDao {
	
	private final ProductMapper productMapper;
	
	public Product save(Product product) {
		productMapper.save(product);
		Product saveProduct = findByProductId(product.getProductId());
		log.info("save Product={}", saveProduct);
		return saveProduct;
	}
	
	public Product findByProductId(Long productId) {
		return productMapper.findByProductId(productId);
	}

	public List<Product> findAllForHome(){
		return productMapper.findAllForHome();
	}
}
