package com.java.admin.controller;

import java.util.Map;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.admin.service.AdminOrderService;
import com.java.admin.service.DropshipMemberService;
import com.java.vo.DropshipMemberVo;
import com.java.vo.Order_DetailVo;


@Controller
public class DropshipMemberController {
	
	@Autowired
	DropshipMemberService dropshipMemberService;
	
	@Autowired
	AdminOrderService adminOrderService;
	
	@Autowired
	Order_DetailVo order_DetailVo;
	
	@Autowired
	HttpSession session;

	
	@GetMapping("dropship_memberList")//전체 맴버 불러오기
	public String dropship_memberList(@RequestParam(defaultValue = "1") int page, Model model) {
		Map<String, Object> map = dropshipMemberService.selectMemberList(page);
		model.addAttribute("map", map);
		model.addAttribute("page", page);
		return "admin/dropship_memberList";
	}//dropship_memberList
	
	@RequestMapping("dropship_memberDetail")//맴버 1명 정보보기
	public String dropship_memberselectOne(@RequestParam String id, @RequestParam int page, Model model) {
		DropshipMemberVo dropshipMemberVo = dropshipMemberService.dropship_memberselectOne(Integer.parseInt(id));
		List<Order_DetailVo> order_list = adminOrderService.adminMemberSelectOrder(Integer.parseInt(id));
		model.addAttribute("dropshipMemberVo", dropshipMemberVo);
		model.addAttribute("order_list", order_list);
		model.addAttribute("page", page);
		return "admin/dropship_memberDetail";
	}//dropship_memberDetail
	
	
}//AdminBoardController
