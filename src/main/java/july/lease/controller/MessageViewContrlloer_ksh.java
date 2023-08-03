package july.lease.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MessageViewContrlloer_ksh {

	@GetMapping("/members/{memberId}/{orderId}/messages/add")
	public String messageView(@PathVariable("memberId") Long memberId, @PathVariable("orderId") Long orderId) {
		
		log.info("viewMemberId : "+ memberId);
		log.info("viewOrderId : "+ orderId);
		
		return "Project_chat";
	}
}
