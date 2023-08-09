package july.lease.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import july.lease.dto.HomeItemDto;
import july.lease.dto.HomePopularItemDto;
import july.lease.service.HomeService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequiredArgsConstructor
@Slf4j
public class HomeController_hsb {

	@Autowired
	private HomeService homeService;
	
	@GetMapping("/home")
	public String Home(Model model) {
		log.info("아이템호출");
		
		List<HomePopularItemDto> popularList = homeService.papularItem();
		model.addAttribute("popularItem", homeService.papularItem());
		
		
		List<HomeItemDto> allList = homeService.getAllItem();
		model.addAttribute("getAllItem", homeService.getAllItem());
		
		
		
		return "Project_home";
		
	
	}

	
}
