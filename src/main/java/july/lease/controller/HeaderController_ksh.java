package july.lease.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import july.lease.dto.HeaderDto;
import july.lease.service.HeaderService;
import lombok.extern.log4j.Log4j;
import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class HeaderController_ksh {

	@Autowired
	private HeaderService headerService;
	
	@GetMapping("/category")
	public Map<String, Object> getCategory() {

		log.info("category호출");
		
		Map<String, Object> map = new HashMap<>();
		
		List<HeaderDto> list = headerService.getCategory();
		
		// 카테고리 리스트 맵에 put
		map.put("list", list);
		// 헤더에 쪽지부분 map 저장해서 같이 보내기
		
		map.put("notReadM", headerService.notReadMessageCnt());
		// 맵 반환
		return map;
	}
	
}
