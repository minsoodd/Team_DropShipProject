package com.java.home.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.home.service.ShopService;
import com.java.vo.ArtistVo;
import com.java.vo.WorkReViewVo;
import com.java.vo.WorkVo;

@Controller
@RequestMapping("shop/")
public class ShopController {
	
	@Autowired
	ShopService shopservice;
	
	@Autowired
	WorkReViewVo workReViewVo;
	
	@Autowired
	WorkVo workVo;
	
	@Autowired
	ArtistVo artistVo;
	
	
	//////////////////↓  Work(작품) 관련 ↓         /////////////////////////
		
	@GetMapping("painting_list")    // 그림 작품 페이지로 이동
    public String painting_list(HttpServletRequest request,
    		@RequestParam(defaultValue = "1") int page,
    		@RequestParam(required = false) String work_id,
    		@RequestParam(defaultValue = "high_rate") String sortType, 	 // 기본은 후기 평균평점 높은 순으로 정렬
    		@RequestParam(defaultValue = "all") String viewOption, Model model) {
		
		Cookie[] cookies = request.getCookies(); // 모든 쿠키 가져오기
		if (cookies != null) {
	        for (Cookie cookie : cookies) {
	            if (cookie.getName().equals("work_id")) {
	                String cookieValue = cookie.getValue();
	                model.addAttribute("cookieValue", cookieValue.split(","));
	                break;
	            }
	        }
	    }		
		
		int rowPerPage = 6; // 기본값은 12개
	    if (viewOption.equals("6_per_page")) {
	    	rowPerPage = 6;
	    } else if (viewOption.equals("9_per_page")) {
	    	rowPerPage = 9;
	    }
		
		Map<String, Object> workMap = shopservice.selectWorkList(page, sortType, viewOption, rowPerPage);

		model.addAttribute("workMap", workMap);
		model.addAttribute("sortType", sortType);
		model.addAttribute("viewOption", viewOption);
		return "home/shop/painting_list";
    }
	
	@GetMapping("best_list")	// 베스트	작품 페이지로 이동
	public String best_list(WorkVo workVo, Model model) {
		List<WorkVo> list = shopservice.selectWorkBest(6);	// 판매량 높은 작품 상위 6개만 가져오기
		model.addAttribute("list",list);
		return "home/shop/best_list";
	}
	
	@GetMapping("painting_item")	// 작품 구매창 페이지로 이동
	public String painting_item(int work_id, int artist_id, Model model) {
		workVo = shopservice.selectWorkBuy(work_id);  // 작품 구매창1개
		List<WorkVo> list = shopservice.selectWorkArtistAll(artist_id);  // 작가의 작품들
		artistVo = shopservice.selectArtistAll(artist_id);  // 작가전체
		int workReViewCount = shopservice.selectWorkReViewCount(work_id);  // 작품에 리뷰가 있는지 확인
		List<WorkReViewVo> workReViewList = shopservice.selectWorkReViewOne(work_id);  // painting_item에서 Review 부분 가져오기
		
		model.addAttribute("workVo", workVo); 
		model.addAttribute("list", list); // 작품전체 배열  --- 이렇게 보내는 이유는 painting_item에서 forEach를 사용하기위해서 이렇게 사용함
		model.addAttribute("artistVo", artistVo);
		model.addAttribute("workReViewCount",workReViewCount);
		model.addAttribute("workReViewList",workReViewList);
		
		return "home/shop/painting_item";
	}
	
	
	//////////////////↓  Work_Review(작품 리뷰) 관련 ↓         /////////////////////////
	@ResponseBody
	@PostMapping("workReviewSort_ajax")  // 작품 (최신순, 평점낮은순, 평점높은순) 나열
	public Map<String, Object> workReviewSort_ajax(int work_id, String sort_id, Model model) {
		System.out.println("Controller sort_id : "+sort_id);
		List<WorkReViewVo> workReViewList = shopservice.selectWorkReViewOne(work_id,sort_id);  // painting_item에서 Review 부분 가져오기
		
		Map<String, Object> map = new HashMap<>();
		map.put("workReViewList", workReViewList);
		
		return map;
	}
	
	@GetMapping("work_review_write")  // 작품리뷰 쓰기
	public String work_review_write() {
		
		return "home/shop/work_review_write";
	}
	
	@GetMapping("work_review_update")  // 작품리뷰 수정
	public String work_review_update(int member_id, int work_id, int order_member_id, Model model ) {
		workReViewVo = shopservice.selectMemberWorkReViewOne(member_id, work_id, order_member_id); // member 1명의 작품리뷰1개 가져오기
		System.out.println("DB들렸다온 workReViewVo 수정 : "+workReViewVo);
		model.addAttribute("workReViewVo",workReViewVo);
		
		return "home/shop/work_review_update";
	}
	
	@PostMapping("work_review_update")  // 작품리뷰 수정 실행
	public String work_review_update( WorkReViewVo workReViewVo, Model model) {
		int WorkReViewUpdateResult = 0;
		shopservice.updateMemberWorkReViewOne(workReViewVo);
		model.addAttribute("workReViewVo",workReViewVo);
		if(workReViewVo != null) {
			WorkReViewUpdateResult = 1;
		}
		model.addAttribute("WorkReViewUpdateResult", WorkReViewUpdateResult);
		
		return "home/shop/do_review";
	}
	
	@GetMapping("work_review_delete")  // 작품리뷰 삭제 실행
	public String work_review_delete(int member_id, int work_id, int order_member_id, Model model) {
		int WorkReViewDeleteResult = 0;
		if (member_id != 0 && work_id != 0) {
			shopservice.deleteMemberWorkReViewOne(member_id, work_id, order_member_id);
			WorkReViewDeleteResult = 1;
		}
		model.addAttribute("WorkReViewDeleteResult",WorkReViewDeleteResult);
		
		return "home/shop/do_review";
	}
	
	//////////////////↓  (상품비교) 관련 ↓         /////////////////////////
	@PostMapping("compare2")  //상품비교
	public String compare2(@RequestParam("work_id_list") String workIds, WorkVo workVo, Model model) {
		//System.out.println("넘어온 작품id 리스트 : " + workIds);
	    
		String[] workIdsArr = workIds.split(",");
		List<Integer> compare_work_id_list = new ArrayList<>();
		
		for (int i = 0; i < workIdsArr.length && i < 10; i++) { // for문으로 2~10개까지 비교가능, &&는 단락연산자이므로 첫 번째 피연산자가 거짓(배열이 비어있으면) 두번째 피 연산자는 평가되지 않으며 조건은 거짓으로 간주된다.
		    int work_id = Integer.parseInt(workIdsArr[i]);
		    compare_work_id_list.add(work_id);
		}

		List<WorkVo> compareWorkVoList = shopservice.selectWorkCompare(compare_work_id_list);
		model.addAttribute("compareWorkVoList", compareWorkVoList);
		
		return "home/shop/compare2";
	}
	//////////////////↓  Artist(작가) 관련 ↓         /////////////////////////
	
	@GetMapping("artist_list")	  // 작가별 페이지로 이동
	public String artist_list(@RequestParam(defaultValue = "1") int page, Model model) {
		Map<String, Object> map = shopservice.selectArtistList(page);
		model.addAttribute("map",map);
		return "home/shop/artist_list";
	}
	
	@GetMapping("artist_view")	  // 작가별 상세페이지
	public String artist_view(int artist_id, Model model) {
		artistVo = shopservice.selectArtistAll(artist_id); 
		List<WorkVo> list = shopservice.selectWorkArtistAll(artist_id);  
		model.addAttribute("artistVo", artistVo); // 작가 전체  
		model.addAttribute("list",list); // 작가의 작품들  
		
		return "home/shop/artist_view";
	} 
	
	@GetMapping("genre_list")    // 사진 인화
	public String genre_list(Model model) {
		return "home/shop/genre_list";
	} 
	
	@GetMapping("shop/compare")  // 나의 마일리지
	public String compare(Model model) {
		return "shop/compare";
	}
	@GetMapping("shop/compare2")  // 나의 마일리지
	public String compare2(Model model) {
		return "shop/compare2";
	}
	
	
	

	
	
	
}
