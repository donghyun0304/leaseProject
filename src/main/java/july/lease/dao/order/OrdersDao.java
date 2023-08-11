package july.lease.dao.order;

import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
@RequiredArgsConstructor
public class OrdersDao {
	
	private final OrdersMapper ordersMapper;
	
	public int checkOrdersIfValid(Long productId) {
		int result = ordersMapper.checkOrdersIfValid(productId);
		log.info("OrderDao checkOrdersIfValid={}", result);
		return result;
	}

}
