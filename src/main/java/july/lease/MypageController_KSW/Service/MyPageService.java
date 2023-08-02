package july.lease.MypageController_KSW.Service;

import java.util.List;

import july.lease.MypageController_KSW.Dto.MyPageMainInfoDto;
import july.lease.MypageController_KSW.Dto.MyPageMainItemsDto;

public interface MyPageService {
	
	String findByName(Long memberId);
	
	List<Integer> compressInfo(Long memberId);
	
	List<MyPageMainInfoDto> confirmCheck(Long memberId);
	
	List<MyPageMainItemsDto> getMyitems(Long memberId);

	
}
