package july.lease.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import july.lease.dto.AddProductDto;
import july.lease.dto.EditProductRequestDto;
import july.lease.dto.EditProductResponseDto;
import july.lease.dto.ProductDetailResponseDto;
import july.lease.dto.ProductListDto;
import july.lease.dto.RentAbleRequestDto;
import july.lease.service.MemberServiceImpl;
import july.lease.service.OrdersService;
import july.lease.service.ProductService_kdh;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequiredArgsConstructor
@Slf4j
public class ProductController_kdh {
	
	private final ProductService_kdh productService_kdh;
	private final MemberServiceImpl memberService;
	private final OrdersService ordersService;
	
	@GetMapping("/products/add")
	public String addForm(@ModelAttribute("product") AddProductDto productDto) {
		return "Project_product_upload";
	}
	
	@PostMapping("/products/add")
	public String addProduct(@Validated @ModelAttribute("product") AddProductDto productDto, BindingResult bindingResult,
			RedirectAttributes redirectAttributes,
			@SessionAttribute(name = "memberId", required = false)Long memberId) throws IOException {
		
		log.info("check AddProductDto={}", productDto);
		if(bindingResult.hasErrors()) {
			log.info("errors={}", bindingResult);
			return "Project_product_upload";
		}
		
		Long productId = productService_kdh.addProduct(memberId, productDto);
		
		redirectAttributes.addAttribute("productId", productId);
		
		return "redirect:/products/{productId}";
		
	}
	
	@GetMapping("/products/{productId}/edit")
	public String editForm(@PathVariable Long productId,
			@ModelAttribute("productRequest") EditProductRequestDto productRequest,
			@SessionAttribute(name = "memberId", required = false)Long memberId,
			Model model) {
		
		EditProductResponseDto productResponse = productService_kdh.findByProductIdForEdit(productId);
		//jsp폼에서 제품상세 <form:textarea>에서 path기능을 사용하기 위한 코드
		productRequest.setProductContent(productResponse.getProductContent());
		productRequest.setCategoryId(productResponse.getCategoryId());
		productRequest.setCategoryId3(productResponse.getCategoryId3());
		//로그인한 회원이 올린 상품인지 확인
		if(productResponse.getMemberId() != memberId){
			throw new IllegalArgumentException();
		}
		
		model.addAttribute("productResponse", productResponse);
		model.addAttribute("productId", productId);
		
		return "Project_product_edit";
	}
	
	@PostMapping("/products/{productId}/edit")
	public String editProduct(@PathVariable Long productId, Model model,
			@Validated @ModelAttribute("productRequest") EditProductRequestDto editProductRequestDto,
			BindingResult bindingResult) throws IOException {
		log.info("ProductContorller_kdh editProduct={}", editProductRequestDto);
		
		if(bindingResult.hasErrors()) {
			log.info("errors={}", bindingResult);
			return "Project_product_edit";
		}
		
		productService_kdh.editProduct(productId, editProductRequestDto);
	
		return "redirect:/products/" + productId;
		
	}
	
	@ResponseBody
	@GetMapping(value = "/products/{productId}/edit/rentdate/orders", produces = "application/json")
	public int rentOrderStatus(String rentAbleStartDate, String rentAbleEndDate) {
		log.info("ProductController_kdh rentOrderStatus={}", rentAbleStartDate);
		RentAbleRequestDto rentAble = new RentAbleRequestDto(rentAbleStartDate, rentAbleEndDate);
		log.info("================= rentAble ={}",rentAble);
		return productService_kdh.rentOrderStatusSize(rentAble);
	}
	
	@ResponseBody
	@PostMapping("/products/{productId}/orders")
	public int checkOrders(@PathVariable Long productId) {
		return ordersService.checkOrdersIfValid(productId);
	}
	
	@PostMapping("/products/{productId}/delete")
	public String delete(@PathVariable Long productId) {
		productService_kdh.delete(productId);
		return "redirect:/products/" + productId;
	}
	
	
	@GetMapping("/products/{productId}")
	public String product(@PathVariable Long productId, Model model) {
		ProductDetailResponseDto responseDto = productService_kdh.findByProductIdForProductDetail(productId);
		List<ProductListDto> list = productService_kdh.findByMemberIdExceptProductWithProductId(responseDto.getMemberId(), productId);
		
		model.addAttribute("product", responseDto);
		model.addAttribute("productList", list);
		return "Project_product_details";
	}
	
	
	
	
	
	
}
