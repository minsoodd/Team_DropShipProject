package com.java.home.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.java.home.service.ShopService;
import com.java.vo.ArtistVo;
import com.java.vo.WorkVo;

@Controller
@RequestMapping("bxabout/")
public class BxaboutController {
	
	@Autowired
	ShopService shopservice;
	
	@Autowired
	WorkVo workVo;
	
	@Autowired
	ArtistVo artistVo;
	
	@GetMapping("about")  // 회사소개
	public String about(Model model) {
		List<WorkVo> list = shopservice.selectWorkBest(6); // best작품 가져오기
		List<WorkVo> newList = shopservice.selectWorkNew(); // new작품 가져오기
		model.addAttribute("BestList", list);
		model.addAttribute("newList", newList);
		System.out.println("DB에서 받아온 BestList : " + list);
		return "/home/bxabout/about";
	}
	
	@GetMapping("faq")  // Q&A
	public String faq() {
		return "/home/bxabout/faq";
	}
	
	@GetMapping("privacy")  // 개인정보처리방침
	public String privacy() {
		return "/home/bxabout/privacy";
	}
	
	@GetMapping("term")  // 이용약관
	public String term() {
		return "/home/bxabout/term";
	}
	
	@PostMapping("search") // 헤더에서 검색하기
	public String search(@RequestParam("searchWord") String searchWord, Model model) {
		System.out.println("wdwdwDW"+searchWord);
		List<WorkVo> searchResultList = shopservice.search(searchWord);
		model.addAttribute("searchResultList",searchResultList);
		System.out.println("wdwdwDW"+searchResultList);
		System.out.println();
		return "home/bxabout/search";
	}
	
	
//	@GetMapping("searchNotice") //list 검색하기
//	public String search(@RequestParam String search, @RequestParam String searchWord, Model model) {
//		List<BoardNoticeVo> list = boardNoticeService.noticeBoardSearch(search, searchWord);
//		model.addAttribute("list",list);
//		return "home/bbs/notice";
//	}
	
}
