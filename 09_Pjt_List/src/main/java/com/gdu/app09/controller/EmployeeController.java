package com.gdu.app09.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gdu.app09.service.EmployeeListService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor // final 필드전용 생성자, 실무에 가까운 방법 이다.
@Controller
public class EmployeeController {

	private final EmployeeListService employeeListService;
	// final 처리를 하여 개발자 이외에 못건드리게 할라고
		
	@GetMapping("/employees/pagination.do")
	public String pagination(HttpServletRequest request, Model model) {
		employeeListService.getEmployeeListUsingPagination(request, model);
		return "employees/pagination"; 
	}
	
	@GetMapping("/employees/change/record.do") // session 그냥 선언해서 사용할 수 도 있다
	public String changeRecord(HttpSession session
							 , HttpServletRequest request
			    			 , @RequestParam(value="recordPerPage", required = false, defaultValue = "10") int recordPerPage) { // 인수에는 선언하고 싶은거 크게 신경안쓰고 선언해도 된다.
		session.setAttribute("recordPerPage", recordPerPage);
		return "redirect:" + request.getHeader("referer");  //  바로 직전에 방문 했던 주소는 request에 header에 기록된다, 현재 주소(/employees/change/record.do)의 이전 주소(referer)로 이동하시오.
		
	}
	
	@GetMapping("/employees/scroll.page")
	public String scrollPage() {
		return "employees/scroll";
	}
	
	@ResponseBody
	@GetMapping(value="/employee/scroll.do", produces="application/json" )
	public Map<String, Object> scroll(HttpServletRequest request) {
		return employeeListService.getEmployeeListUsingScroll(request);
	}
	
	@GetMapping("/employees/search.do")
	public String search(HttpServletRequest request, Model model) {
		employeeListService.getEmployeeListUsingSearch(request, model);
		return "employees/search";
	}
	
	@ResponseBody
	@GetMapping(value="/employees/autoComplete.do", produces="application/json" )
	public Map<String, Object> autoComplete(HttpServletRequest request) {
		return employeeListService.getAutoComplete(request);
	}
}
