package july.lease.testController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class testController {
	
	

	
	// 마이페이지 메인화
	@GetMapping("/mypage")
	public String myPageMain() {
		return "Project_mypage_main";
	}
	
	@GetMapping("/mypage/items")
	public String myitems() {
		return "Project_mypage_selllist";
	}
	
	@GetMapping("/mypage/orderlist")
	public String myorderlist() {
		return "Project_mypage_orderlist";
	}
	
	@GetMapping("/findbyEmail")
	public String findbyEmail() {
		return "Project_findbyEmail";
	}
	@GetMapping("/home")
	public String home() {
		return "Project_home";
	}
	@GetMapping("/list")
	public String list() {
		return "Project_list";
	}
	@GetMapping("/login")
	public String login() {
		return "Project_login";
	}
	@GetMapping("/product_details")
	public String product_details() {
		return "Project_product_details";
	}
	@GetMapping("/product_upload")
	public String product_upload() {
		return "Project_product_upload";
	}
	@GetMapping("/register")
	public String register() {
		return "Project_register";
	}
	@GetMapping("/searchPw")
	public String searchPw() {
		return "Project_searchPw";
	}
	
	
}
