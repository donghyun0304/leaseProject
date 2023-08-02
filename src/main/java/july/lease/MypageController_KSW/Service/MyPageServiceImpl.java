package july.lease.MypageController_KSW.Service;

import org.springframework.stereotype.Service;

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
	public int findbyOrderCount(Long memberId) {
		return myPageMapper.findbyOrderCount(memberId);
	}

	@Override
	public int findbySellCount(Long memberId) {
		return myPageMapper.findbySellCount(memberId);
	}

	@Override
	public int findbyMyitemsCount(Long memberId) {
		return myPageMapper.findbyMyitemsCount(memberId);
	}

}
