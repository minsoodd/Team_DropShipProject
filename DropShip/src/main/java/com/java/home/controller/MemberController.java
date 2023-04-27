package com.java.home.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.java.home.service.MemberService;
import com.java.vo.MemberVo;

@Controller
@RequestMapping("member/")
public class MemberController {
	
	@Autowired
	MemberService mservice;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	MemberVo mvo;
	
	@GetMapping("login")  // 로그인 페이지
	public String login() {
		return "home/member/login";
	}
	
	@PostMapping("login") // 로그인 실행									
	public String login(String member_login_id, String member_pw, Model model) { 
		int loginResult = 0;
		mvo = mservice.memberSelectOne(member_login_id, member_pw);
		if(mvo != null) {
			model.addAttribute("mvo",mvo);	
			session.setAttribute("sessionMember_id", mvo.getId());
			session.setAttribute("sessionMember_login_id", mvo.getMember_login_id());	
			session.setAttribute("sessionMember_nName", mvo.getMember_nName());
			loginResult = 1;
			model.addAttribute("loginResult", loginResult);
		}else {
			loginResult = 0;
			model.addAttribute("loginResult", loginResult);
		}
		return "home/member/doMember";
	}
	
	@GetMapping("logout")	// 로그아웃
	public String logout(Model model) {
		return "home/member/logout";
	}
	
	@GetMapping("register_intro")  // 회원가입 페이지
	public String register_intro() {
		return "home/member/register_intro";
	}
	
	@GetMapping("register")  // 회원가입1 (약관동의) 페이지
	public String register() {
		return "home/member/register";
	}
	
	@GetMapping("register_form")  // 회원가입2 (form) 페이지
	public String register_form() {
		return "home/member/register_form";
	}
	
	@PostMapping("memberCheckId")  // ID 중복체크
	@ResponseBody
	public int memberCheckId(@RequestParam String member_login_id) {
		int flag = mservice.memberCheckId(member_login_id);
		return flag;
	}
	
	@PostMapping("memberCheckNic")  // 닉네임 중복체크
	@ResponseBody
	public int memberCheckNic(@RequestParam String member_nName) {
		int flag = mservice.memberCheckNic(member_nName);
		return flag;
	}
	
	@PostMapping("register_result")  // 회원가입2 (form) 실행
	public String registerform(MemberVo mvo, String mb_1,String mb_2,String mb_3, Model model) { 
		String mb = mb_1+mb_2+mb_3; // mb : 19991212
		mvo.setMember_birth(mb); 
		mservice.insertOneMember(mvo);
		System.out.println("");
		//return "home/member/redirect:register_result";
		return "home/member/register_result";
	}
	
	@GetMapping("register_result")  // 회원가입 완료 페이지
	public String register_result() {
		//return "home/member/redirect:register_result";
		return "home/member/register_result";
	}
	
	@GetMapping("register_update_pwcheck")  // 회원정보 변경 (PW 확인) 페이지
	public String register_update_pwcheck() {
		return "home/member/register_update_pwcheck";
	}
	
	@PostMapping("register_update_intro")  // 회원정보 변경 (PW 확인) 실행
	public String register_update_intro(@RequestParam String member_login_id, String member_pw, Model model) {
		int pwResult = 0;
		mvo = mservice.memberSelectOne(member_login_id, member_pw);
		if(mvo != null) {
			model.addAttribute("mvo",mvo);
			pwResult = 1;
			model.addAttribute("pwResult",pwResult);
		}else {
			pwResult = 0;
			model.addAttribute("pwResult",pwResult);
		}
		return "home/member/doMember";
	}
	
	@GetMapping("register_update_intro")  // 회원정보 변경 선택(비밀번호 변경, 개인정보 수정) 페이지 
	public String register_update_intro() {
		return "home/member/register_update_intro";
	}
	
	@GetMapping("register_update_pw")  // 회원정보 (비밀번호 변경) 페이지 
	public String register_update_pw() {
		return "home/member/register_update_pw";
	}
	
	@PostMapping("register_update_pw")  // 회원정보 (비밀번호 변경) 실행 
	public String register_update_pw(MemberVo mvo, Model model) { 
		int pwModifyResult = 0;
		mservice.memberPwModify(mvo);
		pwModifyResult = 1;
		model.addAttribute("pwModifyResult",pwModifyResult);
		return "home/member/doMember";
	}
	
	@GetMapping("register_update_form")  // 회원정보 (개인정보 변경) 페이지
	public String register_update_form(Model model) {  
		int id = (Integer)session.getAttribute("sessionMember_id");  //session id만 가져오기
		mvo = mservice.selectOne(id); 
		model.addAttribute("mvo", mvo);  
		return "home/member/register_update_form";
	}
	
	@PostMapping("register_update_form") // 회원정보 (개인정보 변경) 실행
	public String register_update_form(MemberVo mvo, Model model) {
		int registerUpdateResult = 0;
		mservice.memberReModify(mvo);
		model.addAttribute("mvo", mvo);
		if(mvo != null) {
			registerUpdateResult = 1;
		}
		model.addAttribute("registerUpdateResult", registerUpdateResult);
		return "home/member/doMember";
	}
	
	@GetMapping("register_update_result")  // 회원정보 변경(비밀번호 변경, 개인정보 수정) 완료 페이지
	public String register_update_result() {
		return "home/member/register_update_result";
	}
	
	@GetMapping("register_delete")  // 회원탈퇴 페이지
	public String register_delete() {
		return "home/member/register_delete";
	}
	
	@PostMapping("register_delete")  // 회원1명 삭제
	public String register_delete(String member_login_id, Model model) {
		mservice.memberDelete(member_login_id);
		int memberDeleteResult = 0;
		if(member_login_id != null) {
			memberDeleteResult = 1;
			model.addAttribute("memberDeleteResult", memberDeleteResult);
			session.invalidate();  // session이 홈페이지에서 남지 않기위해 사용
		}else {
			memberDeleteResult = 0;
			model.addAttribute("memberDeleteResult", memberDeleteResult);
		}
		return "home/member/doMember";
	}
	
	
	
	
}
