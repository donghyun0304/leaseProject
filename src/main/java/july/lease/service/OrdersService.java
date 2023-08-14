package july.lease.service;

import java.util.Arrays;

import org.springframework.stereotype.Service;

import july.lease.dao.order.OrdersDao;
import july.lease.dao.rentDate.RentDateDao;
import july.lease.domain.Orders;
import july.lease.dto.OrderRequestDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class OrdersService {
	
	private final OrdersDao ordersDao;
	private final RentDateDao rentDateDao;
	
	public int checkOrdersIfValid(Long productId) {
		return ordersDao.checkOrdersIfValid(productId);
	}
	
	public String findOrderRentDateByProductId(Long productId) {
		String result = ordersDao.findOrderRentDateByProductId(productId);
		log.info("OrderService findOrderRentDateByProductId={}", result);
		return result;		
	}
	
	public Orders save(Long memberId, Long productId, OrderRequestDto orderRequestDto) {
		
		String rentDate = orderRequestDto.getRentDate();
		
		log.info("=========check ={}", rentDate);
		
		String rentDateFirst = 
				getStartDateIfInRange(rentDate, orderRequestDto.getOrderRentStartDate());
		
		Long rentDateId = rentDateDao.findRentDateIdByRentAbleStartDateAndProductId(rentDateFirst, productId);
		
		if(orderRequestDto.getOrderRequest() == null) {
			Orders order = new Orders(memberId, productId, rentDateId, orderRequestDto.getOrderRentStartDate(),
					orderRequestDto.getOrderRentEndDate(), orderRequestDto.getOrderPrice());
			return ordersDao.save(order);
		} else {
			Orders order = new Orders(memberId, productId, rentDateId, orderRequestDto.getOrderRentStartDate(),
					orderRequestDto.getOrderRentEndDate(), orderRequestDto.getOrderPrice(),
					orderRequestDto.getOrderRequest());
			return ordersDao.save(order);
		}

	}
	
	private String getStartDateIfInRange(String rentDate, String orderRentStartDate) {
		
		 String[] dateRanges = rentDate.split(",");

	        for (String range : dateRanges) {
	            String[] dates = range.split("\\|");

	            // orderRentStartDate 값이 2개의 인덱스 값 사이에 있는 경우 0번 인덱스 값을 리턴
	            if (orderRentStartDate.compareTo(dates[0]) >= 0 && orderRentStartDate.compareTo(dates[1]) <= 0) {
	                return dates[0];
	            }
	        }
	        
	        return null;
	}
	
	
	
	

}
