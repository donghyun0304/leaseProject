package july.lease.service;

import java.util.List;

import july.lease.dto.MyPageMainInfoDto;
import july.lease.dto.MyPageMainItemsDto;

public interface MyPageService {
	
	String findByName(Long memberId);
	
	List<Integer> compressInfo(Long memberId);
	
	List<MyPageMainInfoDto> confirmCheck(Long memberId);
	
	List<MyPageMainItemsDto> getMyitems(Long memberId);

	
}
