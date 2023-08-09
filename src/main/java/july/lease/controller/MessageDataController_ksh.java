package july.lease.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import july.lease.domain.Message;
import july.lease.dto.ProductMessageInfoDto;
import july.lease.service.MessageService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@RestController
@RequiredArgsConstructor
@Slf4j
public class MessageDataController_ksh extends CommonRestController{
	
	private final MessageService messageService;
	
	@GetMapping("/getMessages/{memberId}/{productId}/{roomNo}")
	public Map<String, Object> getMessage(@PathVariable("memberId") Long memberId, 
			@PathVariable("productId") Long productId, @PathVariable("roomNo") Long roomNo, Model model) {

		Map<String, Object> map = new HashMap<>();
		
		List<Message> list = messageService.getMessage(memberId, roomNo);
		
		map.put("msgList", list);
		
		return map;
	}
	
	@PostMapping("/messages/insert")
	public Map<String, Object> getMessage(@RequestBody Message msgVo) {
		
		log.info("writetest");
		// 인서트 문 
		
		Map<String, Object> map = new HashMap<>();
		
		try {
			int res = messageService.insertMessage(msgVo);
			map = responseMap(res, "등록");
					
		}catch (Exception e) {
			map.put("result", "fail");
			map.put("message", e.getMessage());
		}
		
		return map;
	}
}
