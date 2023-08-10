package july.lease.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import july.lease.dto.MyAllMessageListDto;
import july.lease.dto.ProductMessageInfoDto;
import july.lease.service.MessageService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequiredArgsConstructor
@Slf4j
public class MessageViewContrlloer_ksh {
	
	private final MessageService messageService;

	@GetMapping("/members/{memberId}/messages/{productId}/{roomNo}")
	public String productInfoMessageView(@PathVariable("memberId") Long memberId, 
			@PathVariable("productId") Long productId, @PathVariable("roomNo") Long roomNo, Model model) {
		
		log.info("viewMemberId : "+ memberId);
		log.info("viewproductId : "+ productId);
		log.info("viewroomNo : "+ roomNo);

		if(roomNo == 0L) {
			roomNo = messageService.findRoomNo(memberId, productId);
			String redirectUrl = "/members/" + memberId + "/messages/" + productId + "/" + roomNo;
            return "redirect:" + redirectUrl;
		}
		
		ProductMessageInfoDto pInfo = messageService.getOneProductInfo(productId);
		model.addAttribute("pInfo", pInfo);
		
		return "Project_chat";
	}
	
	@GetMapping("/members/{memberId}/messages")
	public String messageListView(@PathVariable("memberId") Long memberId, Model model) {
		
		log.info("chatList");
		
    	List<MyAllMessageListDto> allChatList = messageService.getMyAllMessageList(memberId);
    	
		model.addAttribute("allChatList", allChatList);
		return "Project_chaLlist";

		// 로그인 구현 다 되면 맞춰서 바꾸기
//		HttpServletRequest request

//        HttpSession session = request.getSession();
//        Long sessionMemberId = (Long)session.getAttribute("memberId");

//        // url접근 막기
//        if (sessionMemberId == memberId) {
//            // 로그인한 아이디와 memberId가 같으면 
//        	List<MyAllMessageListDto> allChatList = messageService.getMyAllMessageList(memberId);
//    		model.addAttribute("allChatList", allChatList);
//    		return "Project_chaLlist";
//        } else {
//            // 다르면
//        	return "Project_login";
//        }
	}
	
}