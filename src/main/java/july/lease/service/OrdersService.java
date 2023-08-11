package july.lease.service;

import org.springframework.stereotype.Service;

import july.lease.dao.order.OrdersDao;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class OrdersService {
	
	private final OrdersDao ordersDao;
	
	public int checkOrdersIfValid(Long productId) {
		return ordersDao.checkOrdersIfValid(productId);
	}
	
	

}
