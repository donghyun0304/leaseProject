package july.lease.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ProductController_kdh {
	
	@GetMapping("/products/add")
	public String add() {
		
		return "Project_product_upload";	
	}

}
