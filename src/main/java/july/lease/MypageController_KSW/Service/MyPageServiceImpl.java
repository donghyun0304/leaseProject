package july.lease.MypageController_KSW.Service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import july.lease.MypageController_KSW.Dto.MyPageMainInfoDto;
import july.lease.MypageController_KSW.Dto.MyPageMainItemsDto;
import july.lease.MypageController_KSW.Mapper.MyPageMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
@RequiredArgsConstructor
public class MyPageServiceImpl implements MyPageService {
	
	private final MyPageMapper myPageMapper;
	
	@Override
	public String findByName(Long memberId) {
		return myPageMapper.findByName(memberId);
	}
	
	@Override
	public List<Integer> compressInfo(Long memberId) {
		
		List<Integer> list = new ArrayList<>();
		
		list.add(myPageMapper.findByOrderCount(memberId));
		list.add(myPageMapper.findBySellCount(memberId));
		list.add(myPageMapper.findByMyitemsCount(memberId));
		list.add(myPageMapper.findByWaitItems(memberId));
		
		return list;
	}

	@Override
	public List<MyPageMainInfoDto> confirmCheck(Long memberId) {
		List<MyPageMainInfoDto> list = myPageMapper.confirmCheck(memberId);
		
		return list;
	}

	@Override
	public List<MyPageMainItemsDto> getMyitems(Long memberId) {
		return myPageMapper.getMyItems(memberId);
	}

}
