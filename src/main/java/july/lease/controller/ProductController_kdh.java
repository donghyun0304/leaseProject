package july.lease.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import july.lease.common.FileStore;
import july.lease.domain.Member;
import july.lease.domain.ProductImage;
import july.lease.dto.AddProductDto;
import july.lease.service.MemberServiceImpl;
import july.lease.service.ProductService_kdh;
import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ProductController_kdh {
	
	private final FileStore fileStore;
	
	private final ProductService_kdh productService_kdh;
	private final MemberServiceImpl memberService;
	
	@GetMapping("/products/add")
	public String addForm() {
		return "Project_product_upload";
	}
	
	@PostMapping("/products/add")
	public String addProduct(@Validated @ModelAttribute("product") AddProductDto productDto, BindingResult bindingResult,
			RedirectAttributes redirectAttributes,
			@SessionAttribute(name = "memberId", required = false)Long memberId) throws IOException {
		
		Member loginMember = memberService.selectOne(memberId);
		
		if(loginMember == null) {
			throw new IllegalArgumentException("로그인 회원을 찾을 수 없음");
		}
		
		if(bindingResult.hasErrors()) {
			return "Project_product_upload";
		}
		
		Long productId = productService_kdh.addProduct(memberId, productDto);
		
		redirectAttributes.addAttribute("productId", productId);
		
		return "redirect:/products/{productId}";
		
	}
}
