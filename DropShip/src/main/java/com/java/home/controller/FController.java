package com.java.home.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.java.home.service.ShopService;
import com.java.vo.ArtistVo;
import com.java.vo.WorkReViewVo;
import com.java.vo.WorkVo;


@Controller
public class FController {

	@Autowired
	ShopService shopservice;

	@Autowired
	WorkVo workVo;

	@Autowired
	ArtistVo artistVo;

	@Autowired
	WorkReViewVo workReviewVo;
	
	@GetMapping("/")
	public String index(Model model) {
		List<WorkVo> bestList = shopservice.selectWorkBest(6); // best작품(판매량 상위6개)가져오기
		List<WorkVo> aiWorkList = shopservice.selectAiWorks(); // ai생성작품 2개 가져오기
		List<WorkVo> newList = shopservice.selectWorkNew(); // new작품 가져오기
		List<WorkReViewVo> workReviewVo = shopservice.selectWorkReView();
		
		model.addAttribute("bestList", bestList);
		model.addAttribute("aiWorkList", aiWorkList);
		model.addAttribute("newList", newList);
		model.addAttribute("workReviewVo", workReviewVo);
		return "index";
	}

	@GetMapping("/search")
	public String search(Model model) {
		return "home/bxabout/search";
	}

}// FController
