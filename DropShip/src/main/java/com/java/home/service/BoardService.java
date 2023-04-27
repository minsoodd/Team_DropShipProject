package com.java.home.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.java.vo.BoardVo;
import com.java.vo.CommentVo;

public interface BoardService {
	
	public Map<String, Object> selectBoardAll(int page); //전체 게시글 불러들이기
	
	public void insertBoard(BoardVo boardVo); //글 등록

	public Map<String, Object> selectOne(int id);//게시글 불러오기(이전글 다음글기능 포함)
	
	public BoardVo selectOneforAdmin(int id);//admin에서 불러들이는거 (이전글 다음글 기능 포함x)

	public void deleteBoard(int id);//글 삭제

	public void updateBoard(BoardVo boardVo); //글 수정

	public void adminupdateBoard(BoardVo boardVo);//admin이 게시글(글 정지 or 사용) 업뎃

	public BoardVo fileSetting(BoardVo boardVo, MultipartFile file);	// 첨부파일 있을 때 첨부파일 저장

	public void insertReply(BoardVo boardVo);

	// 댓글달기
	public CommentVo insertComment(CommentVo commentVo);

	// 댓글들 가져오기
	public List<CommentVo> selectCommentsByFreeBoardId(int freeBoard_id);

	// 댓글 수정
	public CommentVo updateComment(String comment_id, String comment_content);

	// 댓글 삭제
	public int deleteComment(String comment_id);
}
