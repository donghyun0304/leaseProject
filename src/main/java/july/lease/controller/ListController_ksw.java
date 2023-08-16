package july.lease.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import july.lease.dto.ListDto;
import july.lease.service.ListService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequiredArgsConstructor
@Slf4j
@RequestMapping("/list")
public class ListController_ksw {

	private final ListService listService;
	
	@GetMapping
	public String getList(Model model, String search, String startDate, String endDate, String sort) {
		
		List<ListDto> getList = listService.getList(search, startDate, endDate, sort);
		model.addAttribute("getList", getList);
		model.addAttribute("search", search == null ? "" : search);
		model.addAttribute("startDate", startDate == null ? "" : startDate);
		model.addAttribute("endDate", endDate == null ? "" : endDate);
		model.addAttribute("sort", sort == null ? "" : sort);
		String getCount = listService.getCount(search, startDate, endDate);
		model.addAttribute("getCount", getCount); // 검색결과 개수
		model.addAttribute("searchTitle", search);
		
		return "Project_list2";
	}
	
	@GetMapping("/items")
	public @ResponseBody List<ListDto> getListAJAX(String startDate, String endDate, String startRow, String endRow, String sort, String search) {
		List<ListDto> list = listService.getListAJAX(search, startDate, endDate, sort, startRow, endRow);
		return list;
	}
	
	
	
	
}
