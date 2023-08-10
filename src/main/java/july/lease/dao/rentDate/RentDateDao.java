package july.lease.dao.rentDate;

import java.util.Collections;
import java.util.List;

import org.springframework.stereotype.Repository;

import july.lease.domain.RentDate;
import july.lease.dto.RentAbleRequestDto;
import july.lease.dto.RentOrderStatusDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
@RequiredArgsConstructor
public class RentDateDao {
	
	private final RentDateMapper rentDateMapper;
	
	public List<RentDate> save(List<RentDate> rentDates) {
		for(RentDate rentDate : rentDates) {
			rentDateMapper.save(rentDate);
			log.info("save rentDate={}", rentDate);
		}
		return rentDates;
	}
	
	public RentDate findByRentDateId(Long rentDateId) {
		return rentDateMapper.findByRentDateId(rentDateId);
	}
	
	public List<RentDate> findByProductId(Long productId) {
		return rentDateMapper.findByProductId(productId);
	}
	
	public List<RentOrderStatusDto> checkOrders(Long productId){
		List<RentOrderStatusDto> rentOrderStatusDto = rentDateMapper.checkOrders(productId);
		log.info("checkOrders rentOrderStatusDto={}",rentOrderStatusDto);
		// rentOrderStatusDto가 널이면 비어인는 컬렉션 반환
		return rentOrderStatusDto != null ? rentOrderStatusDto : Collections.emptyList();
	}
	
	public int rentOrderStatusSize(RentAbleRequestDto rentAbleRequestDto) {
		int result = rentDateMapper.rentOrderStatusSize(rentAbleRequestDto);
		log.info("RentDateDao rentOrderStatusSize={}", result);
		return result;
	}
	
	public void delete(List<RentDate> rentDates) {
		for(RentDate rentDate : rentDates) {
			rentDateMapper.delete(rentDate.getRentDateId());	
		}
	}

}
