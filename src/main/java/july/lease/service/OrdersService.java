package july.lease.service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

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
		int result = ordersDao.checkOrdersIfValid(productId);
		log.info("첵오더스={}", result);
		return result;
	}
	
	public String findOrderRentDateByProductId(Long productId) {
		String result = ordersDao.findOrderRentDateByProductId(productId);
		log.info("OrderService findOrderRentDateByProductId={}", result);
		return result;		
	}
	
	public Orders save(Long memberId, Long productId, OrderRequestDto orderRequestDto) {
		
		String rentDate = orderRequestDto.getRentDate();
		
		log.info("=========check ={}", rentDate);
		
//		getStartDateIfInRangeWithOrderRentEndDate(
//				rentDate, orderRequestDto.getOrderRentStartDate(),
//				orderRequestDto.getOrderRentEndDate());
		
		String rentDateFirst = 
				getStartDateIfInRangeWithOrderRentStartDate(rentDate, orderRequestDto.getOrderRentStartDate());
		
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
	
	private String getStartDateIfInRangeWithOrderRentStartDate(String rentDate, String orderRentStartDate) {
		
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
	
//	 private static void getStartDateIfInRangeWithOrderRentEndDate(String rentDate, String orderRentStartDate, String orderRentEndDate) {
//	        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
//	        LocalDate orderRentStart = LocalDate.parse(orderRentStartDate, formatter);
//	        LocalDate orderRentEnd = LocalDate.parse(orderRentEndDate, formatter);
//	        LocalDate previousEndDate = null;
//
//	        String[] dateRanges = rentDate.split(",");
//	        
//	        for (int i = 0; i < dateRanges.length; i++) {
//	            String[] dates = dateRanges[i].split("\\|");
//	            LocalDate startDate = LocalDate.parse(dates[0], formatter);
//	            LocalDate endDate = LocalDate.parse(dates[1], formatter);
//
//	            // If there's a gap between date ranges
//	            if (previousEndDate != null && !startDate.minusDays(1).isEqual(previousEndDate)) {
//	                if ((orderRentStart.isAfter(previousEndDate) && orderRentStart.isBefore(startDate)) ||
//	                    (orderRentEnd.isAfter(previousEndDate) && orderRentEnd.isBefore(startDate))) {
//	                    System.out.println("The order dates are not available for reservation!");
//	                    return;
//	                }
//	            }
//	            
//	            // If the order dates are within the current date range
//	            if (!orderRentStart.isBefore(startDate) && !orderRentEnd.isAfter(endDate)) {
//	                System.out.println("The order dates are in range!");
//	                return;
//	            }
//
//	            previousEndDate = endDate;
//	        }
//
//	        throw new IllegalArgumentException("날짜 오류");
//	    }
	
	public int findConfirmStatusCountByProductId(Long productId) {
		return ordersDao.findConfirmStatusCountByProductId(productId);
	}
	
	
	}


	
	
	

