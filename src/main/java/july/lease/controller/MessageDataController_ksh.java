package july.lease.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import july.lease.service.MessageService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RestController
@RequiredArgsConstructor
@Slf4j
public class MessageDataController_ksh {
	
	private final MessageService messageService;

	@GetMapping("/getOrderIdMessageList/{memberId}/messages/{orderId}")
	public Map<String, Object> getOrderIdMessageList(@PathVariable("memberId") Long memberId, @PathVariable("orderId") Long orderId) {
		
		log.info("restMemberId : "+ memberId);
		log.info("restOrderId : "+ orderId);
		
		Map<String, Object> map = new HashMap<>();
		// 채팅 내용
		map.put("msgList", messageService.getOrderMessageList(orderId));

		return map;
	}
}
