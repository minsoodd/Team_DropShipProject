package com.java.home.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.admin.service.BoardEventService;
import com.java.vo.BoardEventVo;

@Controller
@RequestMapping("event/")
public class EventController {
	
	@Autowired
	BoardEventService boardEventService;
	
	@Autowired
	BoardEventVo boardEventVo;
	
	@GetMapping("all_event") //프론트 모든 이벤트 리스트 가져오기
	public String all_event(@RequestParam(defaultValue = "1") int page, Model model) {
		Map<String, Object> map = boardEventService.selectEventListAll(page);
		model.addAttribute("map", map);
		model.addAttribute("page", page);
		return "home/event/all_event";
	}
	
	@GetMapping("pro_event")  //프론트 진행 중인 모든 이벤트 가져오기
	public String pro_event(@RequestParam(defaultValue = "1") int page, Model model) {
		Map<String, Object> map = boardEventService.selectEventListOn(page);
		model.addAttribute("map", map);
		model.addAttribute("page", page);
		return"home/event/pro_event";
	}
	
	@GetMapping("final_event")  //프론트 종료된 모든 이벤트 가져오기
	public String final_event(@RequestParam(defaultValue = "1") int page, Model model) {
		Map<String, Object> map = boardEventService.selectEventListOff(page);
		model.addAttribute("map", map);
		model.addAttribute("page", page);
		return"home/event/final_event";
	}
	
	@GetMapping("event_view")  //프론트 이벤트 1개 보기 뷰 페이지
	public String event_view(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "1") int id, Model model) {
		Map<String, Object> map = boardEventService.adminSelectEventOne(id);
		model.addAttribute("map", map); //map.boardVo
		model.addAttribute("page", page);
		model.addAttribute("id", id);
		return "home/event/event_view";
	}
	
}//EventController
