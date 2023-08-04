package july.lease.dao.rentDate;

import org.apache.ibatis.annotations.Mapper;

import july.lease.domain.RentDate;

@Mapper
public interface RentDateMapper {

	void save(RentDate rentDate);
	
	RentDate findByRentDateId(Long rentDateId);
}
