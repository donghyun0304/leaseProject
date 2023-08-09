package july.lease.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import july.lease.dto.MyAllMessageListDto;
import july.lease.dto.ProductMessageInfoDto;
import july.lease.service.MessageService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequiredArgsConstructor
@Slf4j
public class MessageViewContrlloer_ksh {
	
	private final MessageService messageService;

	@GetMapping("/members/{memberId}/messages/{productId}/{roomNo}")
	public String productInfoMessageView(@PathVariable("memberId") Long memberId, 
			@PathVariable("productId") Long productId, @PathVariable("roomNo") Long roomNo, Model model) {
		
		log.info("viewMemberId : "+ memberId);
		log.info("viewproductId : "+ productId);
		log.info("viewroomNo : "+ roomNo);

		ProductMessageInfoDto pInfo = messageService.getOneProductInfo(productId);
		model.addAttribute("pInfo", pInfo);
		
		return "Project_chat";
	}
	
	@GetMapping("/members/{memberId}/messages")
	public String messageListView(@PathVariable("memberId") Long memberId, Model model) {
		
		log.info("chatList");
		
		List<MyAllMessageListDto> allChatList = messageService.getMyAllMessageList(memberId);
		model.addAttribute("allChatList", allChatList);
		
		return "Project_chaLlist";
	}
	
}
