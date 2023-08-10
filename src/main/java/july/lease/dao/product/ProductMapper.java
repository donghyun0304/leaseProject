package july.lease.dao.product;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import july.lease.domain.Product;
import july.lease.dto.EditProductRequestDto;

@Mapper
public interface ProductMapper {
	
	void save(Product product);
	
	Product findByProductId(Long productId);
	
	List<Product> findAllForHome();
	
	Product findByProductIdForEdit(Long productId);
	
	void editProduct(@Param("productId")Long productId, @Param("product") EditProductRequestDto productRequestDto);

}
