package july.lease.MypageController_KSW.Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import july.lease.MypageController_KSW.Dto.MyPageMainInfoDto;
import july.lease.MypageController_KSW.Dto.MyPageMainItemsDto;

@Mapper
public interface MyPageMapper {
	
	//	마이페이지 메뉴의 이름가져오기
	String findByName(Long memberId);
	
	//	마이페이지 메인화면에서 요약된 박스 4개의 정보가져오기
	Integer findByOrderCount(Long memberId);
	
	Integer findBySellCount(Long memberId);
	
	Integer findByMyitemsCount(Long memberId);
	
	Integer findByWaitItems(Long memberId);
	////////////////////////////////////////////
	

	// 마이페이지 메인화면에서 현재 대여요청 리스트 가져오기
	List<MyPageMainInfoDto> confirmCheck(Long memberId);
	
	// 마이페이지 메인화면 내 물건 리스트 가져오기
	List<MyPageMainItemsDto> getMyItems(Long memberId);

}
