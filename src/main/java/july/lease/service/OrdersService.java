package july.lease.service;

import org.springframework.stereotype.Service;

import july.lease.dao.order.OrdersDao;
import july.lease.domain.Orders;
import july.lease.dto.OrderRequestDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class OrdersService {
	
	private final OrdersDao ordersDao;
	
	public int checkOrdersIfValid(Long productId) {
		return ordersDao.checkOrdersIfValid(productId);
	}
	
	public String findOrderRentDateByProductId(Long productId) {
		String result = ordersDao.findOrderRentDateByProductId(productId);
		log.info("OrderService findOrderRentDateByProductId={}", result);
		return result;	
	}
	
	public Orders save(OrderRequestDto orderRequestDto) {
		return ordersDao.save(orderRequestDto);
	}
	
	
	
	

}
