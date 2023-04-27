package com.java.home.controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.java.admin.service.BoardNoticeService;
import com.java.home.service.BoardService;
import com.java.vo.BoardNoticeVo;
import com.java.vo.BoardVo;
import com.java.vo.CommentVo;

@Controller
@RequestMapping("bbs/")
public class BbsController {
	
	@Autowired
	BoardNoticeService boardNoticeService;
	
	@Autowired
	BoardService boardService;
	
	@Autowired
	BoardNoticeVo boardNoticeVo;
	
	@Autowired
	HttpSession session;
	
/////////////////////////////////////////////////자유게시판 관련 내용/////////////////////////////////////////////////////////////
	
	
	@GetMapping("board") //자유게시판 전체 보기
	public String board(@RequestParam(defaultValue = "1") int page, Model model) {
		Map<String, Object> map = boardService.selectBoardAll(page);
		
		model.addAttribute("map", map);
		return "home/bbs/board";
	}
	
	@GetMapping("board_view") //자유게시판 1개 게시글 가져오기
	   public String boardView(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "1") int id, Model model) {
	      Map<String, Object> map = boardService.selectOne(id);
	      model.addAttribute("map", map); //map.boardVo
	      model.addAttribute("page", page);
	      model.addAttribute("id", id);
	      
	      // 댓글 목록 가져오기
	      List<CommentVo> commentVoList = boardService.selectCommentsByFreeBoardId(id);
	      model.addAttribute("commentVoList", commentVoList);
	      
	      return "home/bbs/board_view";
	   }
	
	@GetMapping("board_write") //자유게시판 글쓰기
	public String board_write() {
		return "home/bbs/board_write";
	}

	@PostMapping("doBoardWrite") // 글쓴 거 저장 - POST 방식
	public String fboardWrite(BoardVo boardVo, @RequestPart MultipartFile file, Model model) { // bfile로 보냈어도 알아서 받음
		// 업로드 파일이 없을 경우 - boardVo 의 bfile을 빈 공백으로 넣어줘야 에러 안남
		boardVo.setFreeBoard_file_name("");
		
		if (!file.isEmpty()) {
			String originFileName = file.getOriginalFilename(); // 원본 파일명 받기
			long time = System.currentTimeMillis(); // 시간 밀리초 단위로
			// a.jpg -> 123524123232_a.jpg 로 저장
			String uploadFileName = String.format("%d_%s", time, originFileName);
			String fileSaveUrl = System.getProperty("user.dir") + "/src/main/resources/static/admin/upload/";
//			String fileSaveUrl = "/upload";
			File f = new File(fileSaveUrl + uploadFileName); // /upload/23213213_a.jpg 로 저장됨
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
			// 변경된 파일이름을 boardVo 객체에 저장
			boardVo.setFreeBoard_file_name(uploadFileName);
			// 파일이 첨부 안됐으면 안넣어
		} // if.
		
		boardVo.setAdmin_id(1);
		boardService.insertBoard(boardVo);

		int uploadResult = 0;
		if (boardVo != null) {
			uploadResult = 1;
		}
		model.addAttribute("uploadResult", uploadResult);
		return "home/bbs/doBoard";
	}

	@GetMapping("doBoard") //결과값 페이지 돌리기
	public String doBoard() {
		return "home/bbs/doBoard";
	}
	
	@GetMapping("board_update") //자유게시판 게시글 수정페이지 이동
	public String fboardUpdate(@RequestParam int id, 
			@RequestParam(defaultValue = "1") int page, Model model) {
		
		Map<String, Object> map = boardService.selectOne(id);
		model.addAttribute("map", map);
		model.addAttribute("page", page);
		return "home/bbs/board_update"; 
	}
	
	@PostMapping("board_update") //자유게시판 게시글 수정
	public String fboardUpdate(BoardVo boardVo, @RequestPart MultipartFile file, Model model) { // bfile로 보냈어도 알아서 받음
		if (!file.isEmpty()) {
			String originFileName = file.getOriginalFilename(); // 원본 파일명 받기
			long time = System.currentTimeMillis(); // 시간 밀리초 단위로
			// a.jpg -> 123524123232_a.jpg 로 저장
			String uploadFileName = String.format("%d_%s", time, originFileName);
			String fileSaveUrl = System.getProperty("user.dir") + "/src/main/resources/static/admin/upload/";
			File f = new File(fileSaveUrl + uploadFileName); // /upload/23213213_a.jpg 로 저장됨
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
			// 변경된 파일이름을 boardVo 객체에 저장
			boardVo.setFreeBoard_file_name(uploadFileName);
			
			// 파일이 첨부 안됐으면 안넣어
		} // if.
		
		boardService.updateBoard(boardVo);
		return "redirect:/bbs/board_view?id="+boardVo.getId();	// board_view로 리다이렉트
	}// 글쓴 거 저장 (파일저장도)
	
	
	@GetMapping("board_delete") //자유게시판 게시글 삭제
	public String fboardDelete(@RequestParam int id, 
			@RequestParam(defaultValue = "1") int page, Model model) {
		boardService.deleteBoard(id);
		return "redirect:/bbs/board";
	}
	
///////////  ↓  ///////////  ↓   ///////////////// 답글 관련 //////////////  ↓   ///////////  ↓   //////////////////////////
	
	@GetMapping("board_reply") //자유게시글 답글다는 페이지 이동
	public String fboardReply(@RequestParam int id, 
			@RequestParam(defaultValue = "1") int page, Model model) {
		
		Map<String, Object> map = boardService.selectOne(id);
		model.addAttribute("map", map);
		model.addAttribute("page", page);
		return "home/bbs/board_reply"; 
	}
	
	@PostMapping("board_reply") //자유게시판 답글 달기 실행
	public String fboardReply(BoardVo boardVo, @RequestPart MultipartFile file, Model model) { // bfile로 보냈어도 알아서 받음
		boardVo = boardService.fileSetting(boardVo, file);
		boardService.insertReply(boardVo);
		return "redirect:/bbs/board_view?id="+boardVo.getId();	// board_view로 리다이렉트
	}// 답글 달기 실행
	
///////////  ↓  ///////////  ↓   ///////////////// 댓글 관련 //////////////  ↓   ///////////  ↓   //////////////////////////
	
	// 댓글 달기 (AJAX)
	@PostMapping("comment_create")
	@ResponseBody
	public CommentVo createComment(@RequestBody CommentVo commentVo) {
	    try {
	        CommentVo createdCommentVo = boardService.insertComment(commentVo);
	        return createdCommentVo;
	    } catch (Exception e) {
	        e.printStackTrace();
	        return null; 
	    }
	}
    
    // 댓글 수정
 	@PostMapping("comment_update")
 	@ResponseBody
 	public CommentVo updateComment(String comment_id, String comment_content) {
 		CommentVo updatedCommentVo = boardService.updateComment(comment_id, comment_content);
 		return updatedCommentVo;
 	}
 	
 	// 댓글 삭제
 	@PostMapping("comment_delete")
 	@ResponseBody
 	public Map<String, Object> deleteComment(String comment_id) {
 	    int deleteSuccess = boardService.deleteComment(comment_id);
 	    Map<String, Object> response = new HashMap<>();
 	    if (deleteSuccess > 0) {
 	        response.put("success", true);
 	    } else {
 	        response.put("success", false);
 	    }
 	    return response;
 	}
    
    
	
	
	
	
///////////////////////////////////////////////////공지사항 관련 내용/////////////////////////////////////////////////////////////
	
	@GetMapping("notice")  //공지사항 페이지 보기
	public String notice(@RequestParam(defaultValue = "1") int page, Model model) {
		Map<String, Object> map = boardNoticeService.selectNoticeList(page);
		model.addAttribute("map", map);
		model.addAttribute("page", page);
		return "home/bbs/notice";
	}
	
	@GetMapping("searchNotice") //list 검색하기
	public String search(@RequestParam String search, @RequestParam String searchWord, Model model) {
		List<BoardNoticeVo> list = boardNoticeService.noticeBoardSearch(search, searchWord);
		model.addAttribute("list",list);
		return "home/bbs/notice";
	}
	
	@GetMapping("notice_view") //1개 게시글 가져오기
	public String notice_view(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "1") int id, Model model) {
		Map<String, Object> map = boardNoticeService.selectNoticeOne(id);
		model.addAttribute("map", map); //map.boardVo
		model.addAttribute("page", page);
		model.addAttribute("id", id);
		return "home/bbs/notice_view";
	}

	@GetMapping("support")  //공지사항 글쓰기
	public String support() {
		return "home/bbs/support";
	}
}//BbsController
