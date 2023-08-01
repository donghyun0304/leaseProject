package july.lease.MypageController_KSW.Service;


public interface MyPageService {
	
	String findByName(Long memberId);
	
	int findbyOrderCount(Long memberId);
	
	int findbySellCount(Long memberId);
	
	int findbyMyitemsCount(Long memberId);

	
}
