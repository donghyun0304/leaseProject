package july.lease.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import july.lease.domain.Member;
import july.lease.service.MemberService;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MemberController extends CommonRestController {

	private final MemberService memberService;
	
	@GetMapping("/login")
	public String login() {
		return "/Project_login";
	}
	
	@PostMapping("/loginAction")
	public @ResponseBody Map<String, Object> loginAction(@RequestBody Member member, HttpSession session){
		
		member = memberService.login(member);
		
		if(member!=null) {
			session.setAttribute("memberId", member.getMemberId());
			
			Map<String, Object> map = responseMap(REST_SUCCESS, "");
			
			map.put("url", "/");
			
			return map;
			
		} else {
			return responseMap(REST_FAIL, "");
		}
	}
	
	@GetMapping("/register")
	public String register() {
		return "/Project_register";
	}
	
	@PostMapping("/registerAction")
	public @ResponseBody Map<String, Object> registerAction(@RequestBody Member member){
		
		try {
			int res = memberService.insert(member);
			
			return responseWriteMap(res);
		
		} catch(Exception e) {
			
			e.printStackTrace();
			return responseMap(REST_FAIL, "");
		}
		
		
	}
	
	@PostMapping("/idCheck")
	public @ResponseBody Map<String, Object> idCheck(@RequestBody Member member){
		
		int res = memberService.idCheck(member);
		
		if(res==0) {
			return responseMap(REST_SUCCESS, "");
		} else {
			return responseMap(REST_FAIL, "");
		}
	}
	
	@PostMapping("/phoneCheck")
	public @ResponseBody Map<String, Object> phoneCheck(@RequestBody Member member){
		
		int res = memberService.phoneCheck(member);
		
		if(res==1) {
			return responseMap(REST_SUCCESS, "");
		} else {
			return responseMap(REST_FAIL, "");
		}
	}
	
	
	@GetMapping("/findbyEmail")
	public String findbyEmail() {
		return "/Project_findbyEmail";
	}
	
	@PostMapping("/findbyEmailAction")
	public @ResponseBody Map<String, Object> findbyEmailAction(@RequestBody Member member, HttpSession session){
		
		member = memberService.findbyEmail(member);
		
		if(member!=null) {
			session.setAttribute("memberEmail", member.getMemberEmail());
			
			Map<String, Object> map = responseMap(REST_SUCCESS, "");
			
			map.put("url", "/");
			
			return map;
			
		} else {
			return responseMap(REST_FAIL, "");
		}
		
	}
	
	@GetMapping("/searchPw")
	public String searchPw() {
		return "/Project_searchPw";
	}

	@PostMapping("/searchPwAction")
	public @ResponseBody Map<String, Object> searchPwAction(@RequestBody Member member){
		
		try {
			int res = memberService.searchPw(member);
			
			return responseWriteMap(res);
		
		} catch(Exception e) {
			
			e.printStackTrace();
			return responseMap(REST_FAIL, "");
		}
		
	}
	
	@PostMapping("/nickNameCheck")
	public @ResponseBody Map<String, Object> nickNameCheck(@RequestBody Member member){
		
		int res = memberService.nickNameCheck(member);
		
		if(res==0) {
			return responseMap(REST_SUCCESS, "");
		} else {
			return responseMap(REST_FAIL, "");
		}
	}
}
