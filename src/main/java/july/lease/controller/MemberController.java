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
			
			Map<String, Object> map = responseMap(REST_SUCCESS, "로그인 되었습니다");
			
			map.put("url", "/");
			
			return map;
			
		} else {
			return responseMap(REST_FAIL, "아이디와 비밀번호를 확인해주세요");
		}
	}
}
