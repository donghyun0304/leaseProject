package july.lease.myPageController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/")
public class MyPageController {
	
	

	
	// 마이페이지 메인화
	@GetMapping("mypage")
	public String myPageMain() {
		return "Project_mypage_main";
	}
	
	@GetMapping("mypage/items")
	public String myitems() {
		return "Project_mypage_selllist";
	}
	
	@GetMapping("mypage/orderlist")
	public String myorderlist() {
		log.info("왜안돼>>>========================");
		return "Project_mypage_orderlist";
	}
	
	@GetMapping("findbyEmail")
	public String findbyEmail() {
		return "Proejct_findbyEmail";
	}
	@GetMapping("home")
	public String home() {
		return "Proejct_home";
	}
	@GetMapping("list")
	public String list() {
		return "Proejct_list";
	}
	@GetMapping("login")
	public String login() {
		return "Proejct_login";
	}
	@GetMapping("product_details")
	public String product_details() {
		return "Proejct_product_details";
	}
	@GetMapping("product_upload")
	public String product_upload() {
		return "Proejct_product_upload";
	}
	@GetMapping("register")
	public String register() {
		return "Proejct_register";
	}
	@GetMapping("searchPw")
	public String searchPw() {
		return "Proejct_searchPw";
	}
	
	
}
