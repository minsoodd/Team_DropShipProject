package com.java.admin.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.admin.service.AdminService;
import com.java.vo.AdminVo;

@Controller
public class AdminMemberController {
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	HttpSession session;
	
	@PostMapping("admin_login")//로그인하기
	public String admin_login(@RequestParam String admin_login_id, @RequestParam String admin_pw, Model model) {
		int loginResult = 0;	// 기본 0
		AdminVo adminVo = adminService.adminMemberSelectOne(admin_login_id, admin_pw);
		if ( adminVo != null ) { // DB에 해당 관리자가 존재한다면
			model.addAttribute("adminVo", adminVo);
			session.setAttribute("sessionAdminId", adminVo.getId());	// 관리자 고유번호를 세션에 저장
			session.setAttribute("sessionAdminLoginId", adminVo.getAdmin_login_id());	// 관리자 로그인 아이디를 세션에 저장
			session.setAttribute("sessionAdminName", adminVo.getAdmin_name());	// 관리자 이름 세션에 저장
			session.setAttribute("sessionSuperAdmin", adminVo.getAdmin_isSuper());	// 슈퍼관리자 여부 세션에 저장
			session.setAttribute("sessionBan", adminVo.getAdmin_ban());	// 계정정지여부 세션에 저장
			loginResult = 1;
		}
		model.addAttribute("loginResult", loginResult);
		return "admin/doAdmin";
	}//admin_login
	
	@GetMapping("admin_memberList")//admin 맴버 전체 정보 가져오기
	public String admin_memberList(@RequestParam(defaultValue = "1") int page, Model model) {
		Map<String, Object> map = adminService.selectAdminList(page);
		model.addAttribute("map", map);
		return "admin/admin_memberList";
	}//admin_memberList
	
	@RequestMapping("admin_memberList")//슈퍼 관리자가 admin 1명의 연락처&등급&상태 수정
	public String admin_memberUpdate(AdminVo adminVo, Model model) {
		int updateResult = 0;
		adminService.updateAdminData(adminVo);
		model.addAttribute("adminVo", adminVo);
		if(adminVo != null) {
			updateResult = 1;
			model.addAttribute("updateResult", updateResult);
		}else {
			updateResult = 0;
			model.addAttribute("updateResult", updateResult);
		}
		return "admin/doAdmin";
//		return "admin/redirect:admin_memberList="+dataResult;
	}//admin_memberUpdate
	
	@GetMapping("admin_memberAdd")//admin 추가 페이지 열기
	public String admin_memberAdd(Model model) {
		return "admin/admin_memberAdd";
	}//admin_memberAdd
	
	@PostMapping("admin_memberAdd")//신규 admin 추가하기
	public String admin_memberAdd(AdminVo adminVo, Model model) {
		int addResult = 0;
		adminService.insertMember(adminVo);
		if(adminVo != null) {
			addResult = 1;
			model.addAttribute("addResult", addResult);
		}else {
			addResult = 0;
			model.addAttribute("addResult", addResult);
		}
		return "admin/doAdmin";
	}//admin_memberAdd
	
	@PostMapping("adminMemberCheckId")//admin ID 중복 체크
	@ResponseBody
	public int adminMemberCheckId(@RequestParam String admin_login_id) {
		int flag = adminService.adminMemberCheckId(admin_login_id);
		return flag;
	}//adminMemberCheckId
	
	@GetMapping("admin_memberUpdate")//admin 1명 수정 페이지에서 정보보기
	public String admin_memberUpdate(@RequestParam String id, Model model) {
		AdminVo adminVo = adminService.selectOne(Integer.parseInt(id));
		model.addAttribute("adminVo", adminVo);
		return "admin/admin_memberUpdate";
	}//admin_memberUpdate

	@RequestMapping("admin_memberUpdatePW")//admin 비번수정 페이지 이동하기
	public String admin_memberUpdatePW(@RequestParam String admin_login_id, Model model) {
		AdminVo adminVo = adminService.selectOnePW(admin_login_id);
		model.addAttribute("adminVo", adminVo);
		return "admin/admin_memberUpdatePW";
	}//admin_memberUpdatePW
	
	@RequestMapping("admin_memberPW")//admin 자기 자신의 PW 수정
	public String admin_memberUpdatePW(AdminVo adminVo, Model model) {
		int PWResult = 0;
		System.out.println("adminVo admin_name :             " + adminVo.getAdmin_name() );
		System.out.println("adminVo login_id :             " + adminVo.getAdmin_login_id() );
		adminService.updateAdminPW(adminVo);
		model.addAttribute("adminVo", adminVo);
		if(adminVo != null) {
			PWResult = 1;
			model.addAttribute("PWResult", PWResult);
		}else {
			PWResult = 0;
			model.addAttribute("PWResult", PWResult);
		}
		return "admin/doAdmin";
	}//admin_memberUpdatePW
	
	@GetMapping("admin_memberDelete") //1개 ADMIN 삭제하기
	public String admin_memberDelete(@RequestParam String admin_login_id, Model model) {
		adminService.admin_memberDelete(admin_login_id);
		int deleteResult = 0;
		if(admin_login_id != null) {
			deleteResult = 1;
		}
		model.addAttribute("deleteResult", deleteResult);
		return "admin/doAdmin";
	}//admin_memberDelete
	
	@GetMapping("admin_logout")//로그아웃 진행하기
	public String admin_logout(Model model) {
		return "admin/admin_logout";
	}//admin_logout

}//Bx_adminMemberController
