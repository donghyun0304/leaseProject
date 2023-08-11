package july.lease.dao.order;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OrdersMapper {
	
	int checkOrdersIfValid(Long productId);

}
