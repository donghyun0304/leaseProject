package july.lease.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import july.lease.domain.Member;
import july.lease.service.MemberService;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class MemberController extends CommonRestController {

	private final MemberService memberService;
	
<<<<<<< HEAD
	@GetMapping("/home")
		public String home() {
			return "/Project_home";
		}
	
=======
>>>>>>> b00a92506c040c063add12d9f9447c3be40dc8df
	@GetMapping("/login/kakao")
	public void kakaoLogin() {
		
	}
	
	@GetMapping("/home/kakao")
<<<<<<< HEAD
	 public String login(@RequestParam("code") String code, HttpSession session, HttpServletResponse response, HttpServletRequest request) {
        String kaccess_Token = memberService.getAccessToken(code);
        Member kakao = memberService.getUserInfo(kaccess_Token);
        String state = request.getParameter("state");
=======
	 public String login(@RequestParam("code") String code, HttpSession session, HttpServletResponse response) {
        String kaccess_Token = memberService.getAccessToken(code);
        Member kakao = memberService.getUserInfo(kaccess_Token);
>>>>>>> b00a92506c040c063add12d9f9447c3be40dc8df
        
        if(kakao==null) {
        	try {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out;
				
				response.setContentType("text/html; charset=utf-8");
				PrintWriter w = response.getWriter();
				w.write("<script>alert('이미 가입한 정보가 있습니다');");
<<<<<<< HEAD
				w.write("history.go(-1)");
=======
				w.write("location.href = '/login'");
>>>>>>> b00a92506c040c063add12d9f9447c3be40dc8df
				w.write("</script>");
				w.flush();
				w.close();
		
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        	
<<<<<<< HEAD
		} 
		
        session.setAttribute("memberId", kakao.getMemberId());	
     
        return "redirect:" + state;
=======
		} else {
			session.setAttribute("memberId", kakao.getMemberId());
		}
        
        return "redirect:/home";
>>>>>>> b00a92506c040c063add12d9f9447c3be40dc8df
    }
	
	@GetMapping("/login/naver")
	public void naverLogin(){
	}
	
	
	@GetMapping("/home/naver")
	public String naverLogin_callback(HttpServletRequest request, Member member, HttpSession session, HttpServletResponse response) {
<<<<<<< HEAD
		String state = request.getParameter("state");
		Member nmember = memberService.naverLogin(request);

=======
		
		
		Member nmember = memberService.naverLogin(request);
		
>>>>>>> b00a92506c040c063add12d9f9447c3be40dc8df
		if(nmember==null) {
			
			try {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out;
				
				response.setContentType("text/html; charset=utf-8");
				PrintWriter w = response.getWriter();
				w.write("<script>alert('이미 가입한 정보가 있습니다');");
<<<<<<< HEAD
				w.write("history.go(-1)");
=======
				w.write("location.href = '/login'");
>>>>>>> b00a92506c040c063add12d9f9447c3be40dc8df
				w.write("</script>");
				w.flush();
				w.close();
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
<<<<<<< HEAD
		}
		session.setAttribute("memberId",nmember.getMemberId());
		
		return "redirect:" + state;
=======
		} else {
			
		}
		session.setAttribute("memberId",nmember.getMemberId());
		
		return "redirect:/home";
>>>>>>> b00a92506c040c063add12d9f9447c3be40dc8df
	}
	
	@GetMapping("/login")
	public String login() {
		return "/Project_login";
	}
	
	@PostMapping("/login")
	public @ResponseBody Map<String, Object> loginAction(@RequestBody Member member, HttpSession session, HttpServletRequest request){
		String redirectURL = member.getRedirectURL();
		member = memberService.login(member);
		
		if(!redirectURL.equals("") && member!=null) {
			
			session.setAttribute("memberId", member.getMemberId());

			Map<String, Object> map = responseMap(REST_SUCCESS, "");
			
			map.put("url", redirectURL);
			
			return map;
			
		} else if(redirectURL.equals("") && member!=null) {
			session.setAttribute("memberId", member.getMemberId());

			Map<String, Object> map = responseMap(REST_SUCCESS, "");
			
			map.put("url", "/home");
			
			return map;
		} else {
			return responseMap(REST_FAIL, "");
		}
		
	}
	
	@GetMapping("/members/add")
	public String register() {
		return "/Project_register";
	}
	
	@PostMapping("/members/add")
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
		
		if(res==0) {
			return responseMap(REST_SUCCESS, "");
		} else {
			return responseMap(REST_FAIL, "");
		}
	}
	
	@PostMapping("/findbyEmailCheck")
	public @ResponseBody Map<String, Object> findbyEmailCheck(@RequestBody Member member){
		
		member = memberService.findbyEmailCheck(member);
		
		if(member!=null) {
			return responseMap(REST_SUCCESS, "");
		} else {
			return responseMap(REST_FAIL, "");
		}
	}
	
	@PostMapping("/searchPwCheck")
	public @ResponseBody Map<String, Object> searchPwCheck(@RequestBody Member member){
		
		member = memberService.searchPwCheck(member);
		
		if(member!=null) {
			return responseMap(REST_SUCCESS, "");
		} else {
			return responseMap(REST_FAIL, "");
		}
	}
	
	
	@GetMapping("/findbyEmail")
	public String findbyEmail() {
		return "/Project_findbyEmail";
	}
	
	@GetMapping("/findbyEmailRes")
	public String findbyEmailResult() {
		return "/Project_findbyEmailRes";
	}
	
	@PostMapping("/findbyEmailAction")
	public @ResponseBody Map<String, Object> findbyEmailAction(@RequestBody Member member, HttpSession session){
		
		member = memberService.findbyEmail(member);
		if(member!=null) {
			session.setAttribute("memberEmail", member.getMemberEmail());
			session.setAttribute("socialLogin", member.getSocialLogin());
			session.setAttribute("memberName", member.getMemberName());
			
			Map<String, Object> map = responseMap(REST_SUCCESS, "");
			
			map.put("url", "/findbyEmailRes");
			
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
	
	@GetMapping("/mypage_main")
	public String mypage_main() {
		return "/Project_mypage_main";
	}
<<<<<<< HEAD
}
=======
}
>>>>>>> b00a92506c040c063add12d9f9447c3be40dc8df
