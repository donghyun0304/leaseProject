package july.lease.dao.order;

import java.util.List;

import org.springframework.stereotype.Repository;

import july.lease.domain.Orders;
import july.lease.dto.OrderRentDateDto;
import july.lease.dto.OrderRequestDto;
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
	
	public Orders save(OrderRequestDto order) {
		ordersMapper.save(order);
		return null;
	}
	
	public String findOrderRentDateByProductId(Long productId){
		List<String> orderRentDates = ordersMapper.findOrderRentDateByProductId(productId);
		log.info("OrdersDao findOrderRentDateByProductId={}", orderRentDates);
		
		StringBuilder sb = new StringBuilder();
		for(int i=0; i<orderRentDates.size(); i++) {
		    sb.append(orderRentDates.get(i));
		    if(orderRentDates.size()-1 != i) {
		        sb.append(",");
		    }
		}
		log.info("OrdersDao findOrderRentDateByProductId={}", sb.toString());
		
		return sb.toString();
	}

}
