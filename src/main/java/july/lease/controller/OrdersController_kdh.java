package july.lease.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import july.lease.dto.CheckOrderRequestDto;
import july.lease.dto.OrderRequestDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

//@Controller
//@RequiredArgsConstructor
//@Slf4j
public class OrdersController_kdh {
	
	
	
	
	@GetMapping("/products/{productId}/orders/confirm")
	public String checkOrder(@ModelAttribute("order") CheckOrderRequestDto orderRequestDto) {
		return "";
	}
	
	@PostMapping("/products/{productId}/orders")
	public String order(@ModelAttribute OrderRequestDto orderRequestDto) {
		
		
		
		
		return "redirect:/";
	}
}
