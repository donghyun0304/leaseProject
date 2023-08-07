package july.lease.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import july.lease.dto.OrderMessageDto;
import july.lease.service.MessageService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequiredArgsConstructor
@Slf4j
public class MessageViewContrlloer_ksh {
	
	private final MessageService messageService;

	// url에서 add 빼고 맨뒤에 {orderId} 붙으면 상세쪽지로 안붙으면 전체쪽지목록
	@GetMapping("/members/{memberId}/messages/{orderId}")
	public String orderMessageView(@PathVariable("memberId") Long memberId, @PathVariable("orderId") Long orderId, Model model) {
		
		log.info("viewMemberId : "+ memberId);
		log.info("viewOrderId : "+ orderId);
		
		
		OrderMessageDto msg = messageService.getOneProductInfo(orderId);
		// 관련 제품 정보
		model.addAttribute("msgOrderInfo", msg);
		
		log.info(msg.getSellerName());
		
		return "Project_chat";
	}
	
	@GetMapping("/members/{memberId}/messages")
	public String messageListView() {
		
		log.info("chatList");
		
		return "Project_chaLlist";
	}
	
	
//	@GetMapping("/members/{memberId}/{orderId}/messages/add")
//	public String messageView(@PathVariable("memberId") Long memberId, @PathVariable("orderId") Long orderId) {
//		
//		log.info("viewMemberId : "+ memberId);
//		log.info("viewOrderId : "+ orderId);
//		
//		return "Project_chat";
//	}
}
