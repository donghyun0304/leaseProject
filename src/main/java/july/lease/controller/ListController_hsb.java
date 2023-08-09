package july.lease.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ListController_hsb {
	
	
	
	@GetMapping("/list")
	public String list() {
		return "/Project_list";
	}
}
