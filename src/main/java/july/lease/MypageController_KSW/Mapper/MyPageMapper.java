package july.lease.MypageController_KSW.Mapper;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MyPageMapper {
	
	String findByName(Long memberId);
	
	int findbyOrderCount(Long memberId);
	
	int findbySellCount(Long memberId);
	
	int findbyMyitemsCount(Long memberId);

}
