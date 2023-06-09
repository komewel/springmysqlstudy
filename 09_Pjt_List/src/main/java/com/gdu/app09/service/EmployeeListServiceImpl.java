package com.gdu.app09.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.gdu.app09.domain.EmpDTO;
import com.gdu.app09.mapper.EmployeeListMapper;
import com.gdu.app09.util.PageUtil;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class EmployeeListServiceImpl implements EmployeeListService {

	// field
	private final EmployeeListMapper employeeListMapper;
	private final PageUtil pageUtil;
	
	@Override
	public void getEmployeeListUsingPagination(HttpServletRequest request, Model model) {
		
		// 파라미터 page가 전달되지 않는 경우 page=1로 처리한다.
		Optional<String> opt1 = Optional.ofNullable(request.getParameter("page"));
		int page = Integer.parseInt(opt1.orElse("1"));
		
		// 전체 레코드 개수를 구한다.
		int totalRecord = employeeListMapper.getEmployeeCount();
		
		// 세션에 있는 recordPerPage를 가져온다.(파라미터로 처리 안할거다), 세션에 없는 경우 recordPerPage=10으로 처리한다.
		HttpSession session = request.getSession(); 
		Optional<Object> opt2 = Optional.ofNullable(session.getAttribute("recordPerPage"));
		int recordPerPage = (int)(opt2.orElse(10));
		
		// 파라미터 order
		Optional<String> opt3 = Optional.ofNullable(request.getParameter("order"));
		String order = opt3.orElse("ASC"); // DESC가 넘어왔다, 이값은 안누르면 안온다(ex. 첫화면 일때)
		// 정렬방식이 온 값과 반대값을 보내주면 우리가 원하는 서비스가 구성된다.(왜냐 내림인데 내림을 주면 안되자나아아아아)
		
		// 파라미터 column이 전달되지 않으면 column=EMPLOYEE_ID로 처리한다. 
		Optional<String> opt4 = Optional.ofNullable(request.getParameter("column"));
		String column = opt4.orElse("EMPLOYEE_ID");
				
		// pageUtil(pagination에 필요한 모든 정보) 계산하기, 전에 사용하던 END랑 개념이 약간 다르다. begin 값이 0부터 시작이 아니라 1부터 시작이다.
		pageUtil.setPageutil(page, totalRecord, recordPerPage);	
		
		// DB로 보낼 Map 만들기
		Map<String, Object> map = new HashMap<String, Object>();
												   // LIMIT #{begin}, #{recordPerPage}
		map.put("begin", pageUtil.getBegin()); // begin은 0부터 시작한다. (PageUtil.java 참고)
		map.put("recordPerPage", recordPerPage);   // end값은 따로 안넘겨준다, end 대신에 recordPerPage를 전달한다.
		map.put("order", order);		
		map.put("column", column);
		
		// begin ~ end 사이의 목록 가져오기, jsp로 보낼준비
		List<EmpDTO> employees = employeeListMapper.getEmployeeListUsingPagination(map);
		
		// pagination.jsp로 전달할(forward)할 정보를 저장하기 
		model.addAttribute("employees", employees);
		model.addAttribute("pagination", pageUtil.getPagination(request.getContextPath() + "/employees/pagination.do?column=" + column + "&order=" + order));
		// 정렬방식도 계속 기억해줘야 한다 고로 파라미터로 계속 넘겨준다 여기서 util 한테 넘어가야하는데 page값은 따로 안넘겨줘도 된다.
		model.addAttribute("beginNo", totalRecord - (page - 1) * recordPerPage); // pagination에 값을 주어 순서를 제대로 매겼다.
		switch(order) {
		case "ASC" : model.addAttribute("order", "DESC"); break; // 현재 ASC 정렬이므로 다음정렬은 DESC 이라고 jsp에 알려준다.
		case "DESC" : model.addAttribute("order", "ASC"); break;
		}
		model.addAttribute("page", page);
	}
	
	@Override
		public Map<String, Object> getEmployeeListUsingScroll(HttpServletRequest request) { // 실무에서는 반환값으로 map에 list를 담는다 얼마나 더 추가될지 모르는 데이터땜에(model은 포워드방식이기 땜에 빼자)
		// 스크롤 내리는 방식이라 페이지가 없어도 될것 같지만 계산할떄 page정보가 들어가므로 꼭 있어야 할 데이터다.
		// 비동기 방식이므로 session에 저장할 필욘 없다(페이지 이동을 안하기 떄문에)
		
		// 파라미터 page가 전달되지 않는 경우 page=1로 처리한다.
		Optional<String> opt1 = Optional.ofNullable(request.getParameter("page"));
		int page = Integer.parseInt(opt1.orElse("1"));
		
		// 전체 레코드 개수를 구한다.
		int totalRecord = employeeListMapper.getEmployeeCount();
		
		// recordPerPage= 9로 처리한다, 스클롤 한번에 9개씩 보여주기
		int recordPerPage = 9;
		
		// pageUtil(pagination에 필요한 모든 정보) 계산하기
		pageUtil.setPageutil(page, totalRecord, recordPerPage);
		
		// DB로 보낼 Map 만들기
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("begin", pageUtil.getBegin());
		map.put("recordPerPage", recordPerPage);
		
		// begin부터 recordPerPage개의 목록 가져오기 
		List<EmpDTO> employees = employeeListMapper.getEmployeeListUsingScroll(map);
		
		// scroll.jsp로 응답할 데이터, 
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("employees", employees);
		resultMap.put("totalPage", pageUtil.getTotalPage());
		// 응답
		return resultMap;
		
		/*
		  	resultMap이 json으로 변환될 때의 모습, Arraylist는 배열안의 배열로 
		  	
		  	resData =
		  	{
		  		"employees": [
		  		{	
		  			"employeeId": 100,
		  			"firstName": "Steven",
		  			"lastName": "King",
		  			...,
		  			"deptDTO": {
		  				"departmentId": 90,
		  				"departmentName": "Executive",
		  				...
		  			}
		  		  },
		  		  	"employeeId": 101,
		  			"firstName": "Neena",
		  			"lastName": "Kochhar",
		  			...,
		  	 			"deptDTO": {
		  				"departmentId": 90,
		  				"departmentName": "Executive",
		  				...
		  				}
		  			},
		  			...
		   	  ], 
		   	  "totalPage": 12
		   }
		 */
		
		
		}
		@Override
		public void getEmployeeListUsingSearch(HttpServletRequest request, Model model) {
			
			// 파라미터 column, 파라미터가 오지 않으면 null이면 빈문자열로 하겠다.
			Optional<String> opt2 = Optional.ofNullable(request.getParameter("column"));
			String column = opt2.orElse("");
			
			// 파라미터 column, 파라미터가 오지 않으면 null이면 빈문자열로 하겠다.
			Optional<String> opt3 = Optional.ofNullable(request.getParameter("query"));
			String query = opt3.orElse("");
			
			// DB로 보낼 Map 만들기
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("column", column);
			map.put("query", query);
			
			Optional<String> opt1 = Optional.ofNullable(request.getParameter("page"));
			int page = Integer.parseInt(opt1.orElse("1"));
			
			// 검색된 레코드 개수를 구한다.
			int totalRecord = employeeListMapper.getEmployeeSearchCount(map);
			
			// recordPerPage=10으로 처리한다.
			int recordPerPage = 10;
			
			// pageUtil(pagination에 필요한 모든 정보) 계산하기
			pageUtil.setPageutil(page, totalRecord, recordPerPage);
			
			// db로 보낼 map 만들기
			map.put("begin", pageUtil.getBegin());
			map.put("recordPerPage",recordPerPage);

			// begin ~ end 사이의 목록 가져오기, jsp로 보낼준비
			List<EmpDTO> employees = employeeListMapper.getEmployeeListUsingSearch(map);
			
			// Search.jsp로 전달할(forward)할 정보를 저장하기 
			model.addAttribute("employees", employees);
			model.addAttribute("pagination", pageUtil.getPagination(request.getContextPath() + "/employees/search.do?column=" + column + "&query=" + query)); // 중간에 진행중인 정보를 이어나가고 싶을때 util에다가 데이터를 넘겨줘야 한다.
			model.addAttribute("beginNo", totalRecord - (page - 1) * recordPerPage); 
		}
		
		@Override
		public Map<String, Object> getAutoComplete(HttpServletRequest request) {
			
			// 파라미터 column이 전달되지 않는 경우 column=""로 처리한다. (검색할 칼럼)
			Optional<String> opt1 = Optional.ofNullable(request.getParameter("column"));
			String column = opt1.orElse("");
			
			// 파라미터 query가 전달되지 않는 경우 query=""로 처리한다. (검색어)
			Optional<String> opt2 = Optional.ofNullable(request.getParameter("query"));
			String query = opt2.orElse("");
			
			// DB로 보낼 Map 만들기(column + query)
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("column", column);
			map.put("query", query);
			
			// 검색 결과 목록 가져오기
			List<EmpDTO> employees = employeeListMapper.getAutoComplete(map);
			
			// search.jsp로 응답할 데이터
			Map<String, Object> resultMap = new HashMap<String, Object>();
			resultMap.put("employees", employees);
			
			// 응답
			return resultMap;
		}
		

}
