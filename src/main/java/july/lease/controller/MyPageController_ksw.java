package july.lease.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import july.lease.dto.MyPageMainInfoDto;
import july.lease.dto.MyPageMainItemsDto;
import july.lease.service.MyPageService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
@RequestMapping("/members")
public class MyPageController_ksw {
	
	private final MyPageService myPageService;
	
	@GetMapping("/{memberId}")
	public String MyPageMain(@PathVariable Long memberId, Model model) {
		
		String name = myPageService.findByName(memberId); // 마이페이지 닉네임
		if (name == null) {
			return "redirect:../login";
		}
		List<Integer> compressInfo = myPageService.compressInfo(memberId);
		model.addAttribute("myName", name);
		model.addAttribute("compressInfo", compressInfo);
		log.info("name = {}",name);
		log.info("compressInfo = {}", compressInfo);
		
		List<MyPageMainInfoDto> confirmInfo = myPageService.confirmCheck(memberId);
		model.addAttribute("confirmInfo", confirmInfo);
		log.info("confirmInfo = {}", confirmInfo);
		
		List<MyPageMainItemsDto> getMyItems = myPageService.getMyitems(memberId);
		model.addAttribute("getMyItems", getMyItems);
		log.info("getMyItems = {}", getMyItems);
		
		return "Project_mypage_main";
	}
	
	@GetMapping("/{memberId}/orderlist")
	public String OrderList(@PathVariable Long memberId, Model model) {
		String name = myPageService.findByName(memberId);
		if (name == null) {
			return "redirect:../login";
		}
		
		
		return "Project_mypage_orderlist";
	}

}
