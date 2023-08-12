package july.lease.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import july.lease.dto.CheckOrderRequestDto;
import july.lease.dto.OrderRequestDto;
import july.lease.service.OrdersService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequiredArgsConstructor
@Slf4j
public class OrdersController_kdh {
	
	private final OrdersService ordersService;
	
	
	@GetMapping("/products/{productId}/orders/confirm")
	public String checkOrder(@ModelAttribute("order") CheckOrderRequestDto orderRequestDto) {
		return "";
	}
	
	@PostMapping("/products/{productId}/orders")
	public String order(@ModelAttribute OrderRequestDto orderRequestDto, 
			@PathVariable Long productId,
			@SessionAttribute(name = "memberId", required = false)Long memberId) {
		
		//rentDateId 값이나 rentablestartdate값으로 db에서 찾아서 rentdateid값을 얻어서 orderrequestdto에 넣어야함
		
		orderRequestDto.setMemberId(memberId);
		orderRequestDto.setProductId(productId);
		
		
		return "redirect:/";
	}
}