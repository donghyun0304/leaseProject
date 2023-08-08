package july.lease.dao.rentDate;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import july.lease.domain.RentDate;
import july.lease.dto.RentOrderStatusDto;

@Mapper
public interface RentDateMapper {

	void save(RentDate rentDate);
	
	RentDate findByRentDateId(Long rentDateId);
	
	List<RentDate> findByProductId(Long productId);
	
	List<RentOrderStatusDto> checkOrders(Long productId);
}
