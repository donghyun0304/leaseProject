package july.lease.dao.rentDate;

import java.util.List;

import org.springframework.stereotype.Repository;

import july.lease.domain.RentDate;
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

}
