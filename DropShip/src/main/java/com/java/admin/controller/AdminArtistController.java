package com.java.admin.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.java.admin.service.AdminService;
import com.java.vo.ArtistVo;
import com.java.vo.WorkVo;

@Controller
public class AdminArtistController {
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	ArtistVo artistVo;
	
	// 아티스트 리스트 페이지로 이동
	@GetMapping("admin_artistList")
	public String admin_artistList(Model model) {
		List<ArtistVo> artistList = adminService.selectArtistAll();
		model.addAttribute("artistList", artistList);
		return "admin/admin_artistList";
	}
	
	
	// 아티스트 추가 페이지로 이동
	@GetMapping("admin_artistAdd")
	public String admin_artistAdd(Model model) {
		return "admin/admin_artistAdd";
	}
	
	// 아티스트를 db에 추가
	@PostMapping("admin_artistAdd")
	public String admin_artistAdd(ArtistVo artistVo, @RequestPart MultipartFile file, Model model) { 
		artistVo = adminService.settingArtistVo(artistVo, file);	// 파일 저장
		adminService.insertArtist(artistVo);
		return "redirect:admin_artistList";
	}// 아티스트 db입력
	
	
	// 작가미상 작품용 익명 아티스트 만들기 
	@ResponseBody
	@PostMapping("createUnknownArtist")
	public String createUnknownArtist() {
		
		artistVo.setArtist_korean_name("작가미상");
		artistVo.setArtist_english_name("알수없음");
		artistVo.setArtist_img_url("알수없음");
		artistVo.setArtist_country("알수없음");
		artistVo.setArtist_birth_death("알수없음");
		artistVo.setArtist_main("알수없음");
		artistVo.setArtist_content("알수없음");
		
		// 익명 작가 INSERT
		adminService.insertAnonymousArtist(artistVo);
		
		// ARTIST_SEQ.CURRVAL 가져오기
		String current_id = adminService.selectCurrval();
		
		return current_id;
	}
	
	
	
	
	// 작가 삭제 (ajax사용)
	@ResponseBody
	@PostMapping("deleteArtist")			// **** ON DELETE CASCADE 사용하면 됨
	public Map<String, Integer> deleteArtist(int id) {
		List<WorkVo> workList = adminService.selectWorksByArtist(id);
		int workCount = workList.size();
		Map<String, Integer> resultMap = new HashMap<>();
		if(workCount >= 1) { // 작가의 등록된 작품이 존재한다면
			resultMap.put("workCount", workCount);
		} else { // 작가의 작품이 없다면 삭제
			adminService.deleteArtist(id);
			resultMap.put("workCount", workCount);
		}
		return resultMap;
	}
	
	
	
	// 작가 상세 페이지로 이동
	@GetMapping("admin_artistView")
	public String admin_artistView(String id, Model model) {
		artistVo = adminService.selectArtistOne(Integer.parseInt(id));
		List<WorkVo> workList = adminService.selectWorksByArtist(artistVo.getId());
		model.addAttribute("artistVo", artistVo);
		model.addAttribute("workList", workList);
		return "admin/admin_artistView";
	}
	
	// 작가 수정 페이지로 이동
	@GetMapping("admin_artistUpdate")
	public String admin_artistUpdate(String id, Model model) {
		artistVo = adminService.selectArtistOne(Integer.parseInt(id));
		model.addAttribute("artistVo", artistVo);
		return "admin/admin_artistUpdate";
	}
	
	// 작가 수정 실행
	@PostMapping("admin_artistUpdate")
	public String admin_artistUpdate(ArtistVo artistVo, @RequestPart MultipartFile file,
			String original_file, Model model) {
		artistVo.setArtist_img_url(original_file);	// 사진첨부 새로 안받았을 때
		if (!file.isEmpty()) {	// 사진첨부 새로 받았을 때
			artistVo = adminService.settingArtistVo(artistVo, file);	
		}
		adminService.updateArtistOne(artistVo);
		return "redirect:admin_artistView?id=" + artistVo.getId();
	}
	
	
	
}//AdminArtistController
