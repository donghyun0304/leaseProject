package july.lease.dao.home;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import july.lease.domain.Product;
import july.lease.dto.HomeItemDto;
import july.lease.dto.HomePopularItemDto;

@Mapper
public interface HomeMapper {

	List<HomeItemDto> getAllItem();
	
	List<HomePopularItemDto> popularItem();
}
