package july.lease.dao.order;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import july.lease.dto.OrderRentDateDto;
import july.lease.dto.OrderRequestDto;

@Mapper
public interface OrdersMapper {
	
	int checkOrdersIfValid(Long productId);
	
	void save(OrderRequestDto order);
	
	List<String> findOrderRentDateByProductId(Long productId);
}
