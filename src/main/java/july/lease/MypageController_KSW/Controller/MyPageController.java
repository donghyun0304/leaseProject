package july.lease.MypageController_KSW.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import july.lease.MypageController_KSW.Service.MyPageService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/members")
public class MyPageController {
	
	private final MyPageService myPageService;
	
	@GetMapping("/{memberId}")
	public String MyPageMain(@PathVariable Long memberId) {
		
		String name = myPageService.findByName(memberId);
		
		return "Project_mypage_main";
	}
	

}
