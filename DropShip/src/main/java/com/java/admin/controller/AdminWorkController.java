package com.java.admin.controller;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.java.admin.service.AdminService;
import com.java.vo.WorkVo;

@Controller
public class AdminWorkController {

	@Autowired
	AdminService adminService;

	@Autowired
	WorkVo workVo;

	// 작품 리스트 페이지로 이동
	@GetMapping("admin_workList")
	public String admin_workList(Model model) {
		List<WorkVo> list = adminService.selectWorkAll();
		model.addAttribute("list", list);
		return "admin/admin_workList";
	}

	// 작품 추가 페이지로 이동
	@GetMapping("admin_workAdd")
	public String admin_workAdd(Model model) {
		return "admin/admin_workAdd";
	}

	// 작품을 db에 추가
	@PostMapping("admin_workAdd")
	public String admin_workAdd(WorkVo workVo, String artist_id, String admin_id, 
			@RequestPart MultipartFile file) {
		workVo = adminService.settingWorkVo(workVo, admin_id, artist_id, file);
		adminService.insertWork(workVo);
		return "redirect:admin_workList";
	}// 작품 db입력
	
	// 작품 db입력 전 아티스트 고유번호 조회
	@ResponseBody // 얘가 있어야 .jsp로 인식 안 함
	@PostMapping("checkArtistId")
	public Integer checkArtistId(String artist_name) { // RequestBody()안해도?
		Integer cnt = adminService.checkArtistId(artist_name);
		return cnt;
	}

	// 작품삭제	// admin_workView, admin_workList.jsp 두 군데서 가능
	@ResponseBody
	@RequestMapping("deleteWork")	
	public void deleteWork(int id) {
		adminService.deleteWork(id);
	}

	// 작품 상세 페이지로 이동
	@GetMapping("admin_workView")
	public String admin_workView(String id, Model model) {
		workVo = adminService.selectWorkOne(Integer.parseInt(id));
		model.addAttribute("workVo", workVo);
		return "admin/admin_workView";
	}

	// 작품 수정 페이지로 이동
	@GetMapping("admin_workUpdate")
	public String admin_workUpdate(String id, Model model) {
		workVo = adminService.selectWorkOne(Integer.parseInt(id));
		model.addAttribute("workVo", workVo);
		return "admin/admin_workUpdate";
	}

	// 작품 수정 실행
	@PostMapping("admin_workUpdate")
	public String admin_workUpdate2(WorkVo workVo, String artist_id, String admin_id, @RequestPart MultipartFile file,
			String original_file, Model model) {
		workVo.setWork_img_url(original_file);	// 사진첨부 새로 안받았을 때
		if (!file.isEmpty()) {	// 사진첨부 새로 받았을 때
			workVo = adminService.settingWorkVo(workVo, artist_id, admin_id, file);	
		}
		adminService.updateWorkOne(workVo);
		return "redirect:admin_workView?id=" + workVo.getId();
	}

}// AdminBoardController
