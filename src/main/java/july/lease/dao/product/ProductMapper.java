package july.lease.dao.product;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import july.lease.domain.Product;

@Mapper
public interface ProductMapper {
	
	void save(Product product);
	
	Product findByProductId(Long productId);
	
	List<Product> findAllForHome();

}
