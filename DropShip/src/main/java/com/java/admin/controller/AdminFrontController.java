package com.java.admin.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.admin.service.AdminOrderService;
import com.java.admin.service.AdminService;
import com.java.admin.service.BoardEventService;
import com.java.admin.service.BoardNoticeService;
import com.java.admin.service.DropshipMemberService;
import com.java.home.service.BoardService;
import com.java.home.service.MemberService;
import com.java.home.service.MyShopService;
import com.java.vo.Count_Order_Price_By_MonthVo;
import com.java.vo.MemberCountDayVo;
import com.java.vo.Order_DetailVo;
import com.java.vo.Order_MemberVo;

@Controller
public class AdminFrontController {
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	MemberService memberSerivce;
	
	@Autowired
	BoardNoticeService boardNoticeService;
	
	@Autowired
	AdminOrderService adminOrderService;
	
	@Autowired
	BoardEventService boardEventService;
	
	@Autowired
	BoardService boardService;
	
	@Autowired
	MyShopService myShopService;
	
	@Autowired
	DropshipMemberService dropshipMemberService;
	
	@Autowired
	Order_DetailVo order_DetailVo;
	
	@Autowired
	HttpSession session;
	
	@GetMapping("admin_login")//로그인 페이지 열기
	public String admin_login(Model model) {
		return "admin/admin_login";
	}//admin_login
	
	@RequestMapping("admin_index")//어드민 메인 페이지 열기
	public String admin_index(@RequestParam(defaultValue = "1") int page, Model model) {
		Map<String, Object> map = dropshipMemberService.indexMemberList(page);
		Map<String, Object> order = adminOrderService.selectOrderList(page);
		
		List<Order_MemberVo> order_MemberVoList = adminOrderService.selectOrderAll();	
		
		session.setAttribute("order_MemberVoList", order_MemberVoList);
		
		model.addAttribute("map", map);
		model.addAttribute("order", order);
		model.addAttribute("page", page);
		return "admin/admin_index";
	}
	
	@GetMapping("admin_tables")
	public String admin_tables(Model model) {
		return "admin/admin_tables";
	}
	
	@GetMapping("admin_orderList")//어드민 주문 게시판 리스트 열기
	public String admin_orderList(@RequestParam(defaultValue = "1") int page, Model model) {
		Map<String, Object> map = adminOrderService.selectOrderList(page);
		
		Map<String, Integer> orderStatusCountMap = new HashMap<>();
		List<Order_MemberVo> order_MemberVoList = adminOrderService.selectOrderAll();
		for (Order_MemberVo order_MemberVo : order_MemberVoList) {
			int order_status = order_MemberVo.getOrder_status();
			if(orderStatusCountMap.containsKey(order_status + "")) {	// 이미 있으면 (int를 +""함으로써 String으로 변환시켜서 key에 저장
				orderStatusCountMap.put(order_status + "", orderStatusCountMap.get(order_status+"") + 1);
			} else {
				orderStatusCountMap.put(order_status + "", 1);
			}
		}
		model.addAttribute("orderStatusCountMap", orderStatusCountMap);
		
		
		model.addAttribute("map", map);
		model.addAttribute("page", page);
		return "admin/admin_orderList";
	}
	
	@GetMapping("admin_printingList")
	public String admin_printingList(Model model) {
		return "admin/admin_printingList";
	}
	
	@GetMapping("admin_noticeBoardList")//어드민 공지 게시판 리스트 열기
	public String admin_noticeBoardList(@RequestParam(defaultValue = "1") int page, Model model) {
		Map<String, Object> map = boardNoticeService.selectNoticeList(page);
		model.addAttribute("map", map);
		model.addAttribute("page", page);
		return "admin/admin_noticeBoardList";
	}
	
	@GetMapping("admin_eventBoardList") //어드민 이벤트 리스트 열기
	public String admin_eventBoardList(@RequestParam(defaultValue = "1") int page, Model model) {
		Map<String, Object> map = boardEventService.selectEventList(page);
		model.addAttribute("map", map);
		model.addAttribute("page", page);
		return "admin/admin_eventBoardList";
	}
	
	@GetMapping("admin_freeBoardList") //어드민 일반 게시판 페이지 열기
	public String admin_freeBoardList(@RequestParam(defaultValue = "1") int page, Model model) {
		Map<String, Object> map = boardService.selectBoardAll(page);
		model.addAttribute("map", map);
		return "admin/admin_freeBoardList";
	}
	
	private Map<String, Object> getMemberCountData() {
	    Map<String , Object> memberCountDayMap = new HashMap<>();
	    String [] memberLabel= null; //Choi Ki-hwa
	    int [] memberData=null;//initialize
	    // Get access to DB memberLabel, memberData
	    List<MemberCountDayVo> list= dropshipMemberService.selectMember_Reg_Date();
	    System.out.println("Result: "+ list);

	    List<String> monthDayDateList = new ArrayList<>();
	    for(MemberCountDayVo memberCountDayVo : list) {
	        String monthDayDate = Integer.toString(memberCountDayVo.getMonth())+"월"+Integer.toString(memberCountDayVo.getDay())+"일";
	        monthDayDateList. add(monthDayDate); // [0:"March 1st", 1:"March 2nd", 2:"March 3rd"]
	    }

	    List<Integer> monthDayDateMemberCountList = new ArrayList<>();
	    for(MemberCountDayVo memberCountDayVo : list) {
	        monthDayDateMemberCountList.add(memberCountDayVo.getMember_count()); // [22, 3, 12,....]
	    }

	    memberCountDayMap.put("dateList", monthDayDateList);
	    memberCountDayMap.put("memberCountList", monthDayDateMemberCountList);

	    return memberCountDayMap;
	}

	private Map<String , Object> getOrderTotalData() {
	    Map<String , Object> map =new HashMap<>();
	    Date [] orderDay= null; 
	    int [] totalPrice=null;
	    // Get access to DB memberLabel, memberData
	    List<Count_Order_Price_By_MonthVo> list= dropshipMemberService.selectOrderTotalByMonth();
	    System.out.println("111111: "+orderDay);
	    if(list !=null) {
	    	orderDay = new Date [list.size()];
	        totalPrice = new int [list.size()];

	        for(int i=0; i<list.size(); i++) {
	        	orderDay[i] = list.get(i).getOrder_Day();
	            totalPrice[i] = list.get(i).getTotal_Price();
	        }
	    }

	    map.put("orderDay", orderDay); // horizontal axis names
	    map.put("totalPrice", totalPrice); // vertical axis data value

	    return map;
	}

	@GetMapping("/adminchartData3")
	@ResponseBody 
	public Map<String, Object> chartData3(@RequestParam String period, @RequestParam String period2) {

	    Map<String , Object> combinedData = new HashMap<>();
	    combinedData.put("memberCountDayMap",getMemberCountData());
	    combinedData.put("orderTotalMap",getOrderTotalData());

	    return combinedData;
	}
	
	
	
}
