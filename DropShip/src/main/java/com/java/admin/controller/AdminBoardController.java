package com.java.admin.controller;

import java.io.File;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.java.admin.service.AdminService;
import com.java.admin.service.BoardEventService;
import com.java.admin.service.BoardNoticeService;
import com.java.home.service.BoardService;

import com.java.vo.BoardEventVo;
import com.java.vo.BoardNoticeVo;
import com.java.vo.BoardVo;

@Controller
public class AdminBoardController {
	
	@Autowired
	AdminService adminService;
	
	@Autowired
	BoardNoticeService boardNoticeService;
	
	@Autowired
	BoardEventService boardEventService;
	
	@Autowired
	BoardService boardService;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	BoardNoticeVo boardNoticeVo;

	@Autowired
	BoardEventVo boardEventVo;
	
		
	//이벤트 추가하기 페이지로 이동
	@GetMapping("admin_eventBoardAdd")
	public String admin_eventBoardAdd(Model model) {
		return "admin/admin_eventBoardAdd";
	}
	
	//이벤트 게시글 작성
	@PostMapping("eventBoardAdd")
	public String eventBoardAdd(BoardEventVo boardEventVo, @RequestPart MultipartFile file, Model model,
			@RequestParam("eventboard_start") @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm") Date eventboard_start,
            @RequestParam("eventboard_end") @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm") Date eventboard_end) { 
		boardEventVo.setEventboard_start(eventboard_start);
	    boardEventVo.setEventboard_end(eventboard_end);
		if ( file.isEmpty() ) {
			boardEventVo.setEventboard_file_name(""); //업로드파일이 없는 경우
		}else if(!file.isEmpty()) {
			String originFileName = file.getOriginalFilename(); // 원본 파일명 받기
			long time = System.currentTimeMillis(); // 시간 밀리초 단위로 
			String uploadFileName = String.format("%d_%s", time, originFileName);
			String fileSaveUrl = System.getProperty("user.dir") + "/src/main/resources/static/admin/upload/";
			File f = new File(fileSaveUrl + uploadFileName);  
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
			// 변경된 파일이름을 boardEventVo 객체에 저장
			boardEventVo.setEventboard_file_name(uploadFileName);
			// 파일이 첨부 안됐으면 안넣어
		} // if. 
		
		int insertEventAddResult = 0;
		boardEventService.insertEventAdd(boardEventVo);
		if(boardEventVo != null) {
			insertEventAddResult = 1;
			model.addAttribute("insertEventAddResult", insertEventAddResult);
		}else {
			insertEventAddResult = 0;
			model.addAttribute("insertEventAddResult", insertEventAddResult);
		}
		return "admin/doAdmin";
	}//eventBoardAdd
	
	
	//이벤트 게시글 1개 보기 이동
	@GetMapping("admin_eventBoardView") 
	public String admin_eventBoardView(@RequestParam(defaultValue = "1") int page, @RequestParam int id, Model model) {
		Map<String, Object> map = boardEventService.adminSelectEventOne(id);
		model.addAttribute("map", map); //map.boardVo
		model.addAttribute("page", page);
		model.addAttribute("id", id);
		return "admin/admin_eventBoardView";
	}
	
	//이벤트 1개 삭제하기
	@GetMapping("admin_eventBoardDelete")
	public String admin_eventBoardDelete(String id, Model model) {
		int eventDeleteResult = 0;
		boardEventService.deleteEventOne(Integer.parseInt(id));
		model.addAttribute("boardEventVo", boardEventVo);
		if(boardEventVo != null) {
			eventDeleteResult = 1;
			model.addAttribute("eventDeleteResult", eventDeleteResult);
		}else {
			eventDeleteResult = 0;
			model.addAttribute("eventDeleteResult", eventDeleteResult);
		}
		return "admin/doAdmin";
	}
	
	//이벤트 수정 페이지로 이동하기
	@GetMapping("admin_eventBoardUpdate") 
	public String admin_eventBoardUpdate(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "1") int id, Model model) {
		Map<String, Object> map = boardEventService.adminSelectEventOne(id);
		model.addAttribute("map", map); //map.boardVo
		model.addAttribute("page", page);
		model.addAttribute("id", id);
		return "admin/admin_eventBoardUpdate";
	}
	
	//이벤트 게시글 수정
	@RequestMapping("eventBoardUpdate")
	public String eventBoardUpdate(BoardEventVo boardEventVo, @RequestPart MultipartFile file, String original_file, Model model,
			@RequestParam("eventboard_start") @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm") Date eventboard_start,
            @RequestParam("eventboard_end") @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm") Date eventboard_end) { 
			
			boardEventVo.setEventboard_start(eventboard_start);
			boardEventVo.setEventboard_end(eventboard_end);
	    
			boardEventVo.setEventboard_file_name(original_file);
			
		if (!file.isEmpty()) {
			String originFileName = file.getOriginalFilename(); // 원본 파일명 받기
			long time = System.currentTimeMillis(); // 시간 밀리초 단위로 
			String uploadFileName = String.format("%d_%s", time, originFileName);
			String fileSaveUrl = System.getProperty("user.dir") + "/src/main/resources/static/admin/upload/";
			
			File f = new File(fileSaveUrl + uploadFileName);  
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
			// 변경된 파일이름을 boardEventVo 객체에 저장
			boardEventVo.setEventboard_file_name(uploadFileName);
			// 파일이 첨부 안됐으면 안넣어
		} // if. 
		
		int updateEventResult = 0;
		boardEventService.updateEventBoard(boardEventVo);
		model.addAttribute("boardEventVo", boardEventVo);
		if(boardEventVo != null) {
			updateEventResult = 1;
			model.addAttribute("updateEventResult", updateEventResult);
		}else {
			updateEventResult = 0;
			model.addAttribute("updateEventResult", updateEventResult);
		}
		return "admin/doAdmin";
	}//eventBoardAdd
		
	///////////////////////////////////////////////////////공지 관련 부분//////////////////////////////////////////////////////////////////
	
	
	//공지 추가 페이지로 이동
	@GetMapping("admin_noticeBoardAdd")
	public String admin_noticeBoardAdd(Model model) {
		return "admin/admin_noticeBoardAdd";
	}
		
	//공지 작성
	@PostMapping("admin_noticeAdd")
	public String admin_noticeAdd(BoardNoticeVo boardNoticeVo, @RequestPart MultipartFile file, Model model) { 
		if ( file.isEmpty() ) {
			boardNoticeVo.setNoticeboard_file_name(""); //업로드파일이 없는 경우
		}else if(!file.isEmpty()) {
			String originFileName = file.getOriginalFilename(); // 원본 파일명 받기
			long time = System.currentTimeMillis(); // 시간 밀리초 단위로 
			String uploadFileName = String.format("%d_%s", time, originFileName);
			String fileSaveUrl = System.getProperty("user.dir") + "/src/main/resources/static/admin/upload/";
			
			File f = new File(fileSaveUrl + uploadFileName);  
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
			// 변경된 파일이름을 artistVo 객체에 저장
			boardNoticeVo.setNoticeboard_file_name(uploadFileName);
			// 파일이 첨부 안됐으면 안넣어
		} // if. 
		int insertNoticeAddResult = 0;
		boardNoticeService.insertNoticeAdd(boardNoticeVo);
		if(boardNoticeVo != null) {
			insertNoticeAddResult = 1;
			model.addAttribute("insertNoticeAddResult", insertNoticeAddResult);
		}else {
			insertNoticeAddResult = 0;
			model.addAttribute("insertNoticeAddResult", insertNoticeAddResult);
		}
		return "admin/doAdmin";
	}
	
	//공지 1개 보기 이동
	@GetMapping("admin_noticeBoardView")
	public String admin_noticeBoardView(String id, @RequestParam(defaultValue = "1") int page, Model model) {
		boardNoticeVo = boardNoticeService.adminSelectNoticeOne(Integer.parseInt(id));
		model.addAttribute("boardNoticeVo", boardNoticeVo);
		model.addAttribute("page", page);
		return "admin/admin_noticeBoardView";
	}
	
//	@GetMapping("admin_noticeBoardView") //1개 게시글 가져오기
//	public String admin_noticeBoardView(@RequestParam(defaultValue = "1") int id, Model model) {
//		Map<String, Object> map = boardNoticeService.selectNoticeOne(id);
//		model.addAttribute("map", map); //map.boardVo
//		model.addAttribute("id", id);
//		
//		return "admin/admin_noticeBoardView";
//	}
	
	//공지 1개 삭제하기
	@GetMapping("admin_noticeBoardDelete")
	public String admin_noticeBoardDelete(String id, Model model) {
		int noticeDeleteResult = 0;
		boardNoticeService.deleteNoticeOne(Integer.parseInt(id));
		model.addAttribute("boardNoticeVo", boardNoticeVo);
		if(boardNoticeVo != null) {
			noticeDeleteResult = 1;
			model.addAttribute("noticeDeleteResult", noticeDeleteResult);
		}else {
			noticeDeleteResult = 0;
			model.addAttribute("noticeDeleteResult", noticeDeleteResult);
		}
		return "admin/doAdmin";
	}
	
	//공지 수정 페이지로 이동
	@GetMapping("admin_noticeBoardUpdate")
	public String admin_noticeBoardUpdate(String id, Model model) {
		boardNoticeVo = boardNoticeService.adminSelectNoticeOne(Integer.parseInt(id));
		model.addAttribute("boardNoticeVo", boardNoticeVo);
		return "admin/admin_noticeBoardUpdate";
	}
	
	//공지 수정 후 업데이트 진행
	@RequestMapping("admin_noticeBoardUpdate")
	public String admin_noticeBoardUpdate(BoardNoticeVo boardNoticeVo, @RequestPart MultipartFile file, String original_file, Model model) {

		boardNoticeVo.setNoticeboard_file_name(original_file);
		
		if(!file.isEmpty()) {
			String originFileName = file.getOriginalFilename(); // 원본 파일명 받기
			long time = System.currentTimeMillis(); // 시간 밀리초 단위로 
			String uploadFileName = String.format("%d_%s", time, originFileName);
			String fileSaveUrl = System.getProperty("user.dir") + "/src/main/resources/static/admin/upload/";
			File f = new File(fileSaveUrl + uploadFileName);  
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
			// 변경된 파일이름을 artistVo 객체에 저장
			boardNoticeVo.setNoticeboard_file_name(uploadFileName);
			// 파일이 첨부 안됐으면 안넣어
		} // if. 
		int updateNoticeResult = 0;
		boardNoticeService.updateNoticeBoard(boardNoticeVo);
		model.addAttribute("boardNoticeVo", boardNoticeVo);
		if(boardNoticeVo != null) {
			updateNoticeResult = 1;
			model.addAttribute("updateNoticeResult", updateNoticeResult);
		}else {
			updateNoticeResult = 0;
			model.addAttribute("updateNoticeResult", updateNoticeResult);
		}
		return "admin/doAdmin";
	}
	
	////////////////////////////////////////게시판///////////////////////////////////////
		
	@GetMapping("admin_freeBoardView") //홈페이지에 등록된 게시글 1개 불러오기
		public String admin_freeBoardView(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "1") int id, Model model) {
		BoardVo boardVo = boardService.selectOneforAdmin(id);
		model.addAttribute("boardVo", boardVo);
		model.addAttribute("page", page);
		
		return "admin/admin_freeBoardView";
	}
	
	@PostMapping("admin_freeBoardModify")
		public String admin_freeBoardModify(BoardVo boardVo, Model model) {
		boardService.adminupdateBoard(boardVo);
		return "redirect:admin_freeBoardList";
	}
	
	
	
	
	
}//AdminBoardController
