package com.java.home.service;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.java.mapper.BoardMapper;
import com.java.vo.BoardVo;
import com.java.vo.CommentVo;

@Service
public class BoardServiceimpl implements BoardService{
	@Autowired
	BoardMapper boardMapper;
	
	@Autowired
	BoardVo boardVo;
	
	@Autowired
	CommentVo commentVo;
	
	@Override // 전체게시글 가져오기
	public Map<String, Object> selectBoardAll(int page) {
		// 페이지 page, 총개수listCount, maxpage, startpage, endpage, startrow, endrow 
		
		HashMap<String, Object> map = pageMethod(page);
		int startRow = (int) map.get("startRow");
		int endRow = (int) map.get("endRow");
		
		// 전체게시글 가져오기
		List<BoardVo> list = boardMapper.selectBoardAll(startRow,endRow);
		
		map.put("list", list);
		map.put("page", page);
		map.put("listCount", map.get("listCount"));
		map.put("maxpage", map.get("maxpage"));
		map.put("startpage", map.get("startpage"));
		map.put("endpage", map.get("endpage"));
		
		return map;
	} // selectBoardList
	
	public HashMap<String, Object> pageMethod(int page){//넘버링 
		HashMap<String, Object> map = new HashMap<>();
		
		int listCount = boardMapper.selectCount();
		
		int rowPerPage = 5;
		int pageList = 5;
		int maxpage = (int)(Math.ceil((double)listCount/rowPerPage));
		int startpage = ((page-1)/pageList)*pageList+1;
		int endpage = maxpage;
		if(endpage > startpage + pageList - 1) {
			endpage = startpage + pageList -1;
		}
		int startRow = (page - 1)*rowPerPage +1; 
		int endRow = startRow + rowPerPage -1;
		
		
		
		map.put("listCount", listCount);
		map.put("maxpage", maxpage);
		map.put("startpage", startpage);
		map.put("endpage", endpage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return map;
	}//페이지 메소드
	
	@Override // 파일첨부 게시글 저장
	public void insertBoard(BoardVo boardVo) {
		boardMapper.insertBoard(boardVo);
	}

	   @Override
	   public Map<String, Object> selectOne(int id) {
	      Map<String, Object> map = new HashMap<>();
	      BoardVo boardVo = boardMapper.selectOne(id);
	      BoardVo preBoardVo = boardMapper.preSelectOne(id);
	      BoardVo nextBoardVo = boardMapper.nextSelectOne(id);
	      map.put("boardVo", boardVo);
	      map.put("preBoardVo", preBoardVo);
	      map.put("nextBoardVo", nextBoardVo);
	      boardMapper.updateFreeBoard_hit(id);
	      
	      return map;
	   }
	 
    @Override //게시글 삭세
	public void deleteBoard(int id) {
		boardMapper.deleteBoard(id);
	}

	@Override //게시글 수정 
	public void updateBoard(BoardVo boardVo) {
		boardMapper.updateBoard(boardVo);
	}   
	
    @Override //admin 전용 게시글 불러들이기(이전글 다음글 포함x )
	public BoardVo selectOneforAdmin(int id) {
		BoardVo boardVo = boardMapper.selectOneforAdmin(id);
		return boardVo;
	}
	
	@Override //게시글 수정 
	public void adminupdateBoard(BoardVo boardVo) {
		boardMapper.adminupdateBoard(boardVo);
	}

	
	@Override // 파일 첨부받았을때 세팅
	public BoardVo fileSetting(BoardVo boardVo, MultipartFile file) {
		boardVo.setFreeBoard_file_name("");
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
		} 
		boardVo.setAdmin_id(1);
		return boardVo;
	}

	// 자유게시판 답글달기
	@Override
	public void insertReply(BoardVo boardVo) {
		boardMapper.setStepPlusOne(boardVo.getFreeBoard_group(), boardVo.getFreeBoard_step());	//답글 달기 전, 같은 group내 원글의 step보다 큰 step의 글들의 step을 1씩 올리기
		boardMapper.insertReply(boardVo);	// indent와 step을 원글보다 1씩 증가시켜서 저장
	}

	// 자유게시판 댓글달기
	@Override
	public CommentVo insertComment(CommentVo commentVo) {
	    try {
	        boardMapper.insertComment(commentVo);
	        return boardMapper.selectCommentById(commentVo.getId());
	    } catch (Exception e) {
	        e.printStackTrace();
	        return null;
	    }
	}

	// 댓글들 가져오기
	@Override
	public List<CommentVo> selectCommentsByFreeBoardId(int freeBoard_id) {
		List<CommentVo> commentVoList = boardMapper.selectCommentsByFreeBoardId(freeBoard_id);
		return commentVoList;
	}

	// 댓글 수정
	@Override
	public CommentVo updateComment(String comment_id, String comment_content) {
		boardMapper.updateComment(Integer.parseInt(comment_id), comment_content);
		return boardMapper.selectCommentById(Integer.parseInt(comment_id));
	}

	@Override
	public int deleteComment(String comment_id) {
		int deleteSuccess = boardMapper.deleteComment(Integer.parseInt(comment_id));
		return deleteSuccess;
	}
	
}
