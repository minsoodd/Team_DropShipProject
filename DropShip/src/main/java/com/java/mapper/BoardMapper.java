package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.java.vo.BoardVo;
import com.java.vo.CommentVo;

@Mapper
public interface BoardMapper {
	
	public List<BoardVo> selectBoardAll(int startRow, int endRow);//전체 페이지 + 페이지 넘버링
	
	public int selectCount(); // 넘버링 카운트
	
	public void insertBoard(BoardVo boardVo);// 파일첨부게시글 저장

	public BoardVo selectOne(int id);//게시글 하나 불러오기 
	
	public BoardVo preSelectOne(int id);
	
	public BoardVo nextSelectOne(int id);
	
	public void updateFreeBoard_hit(int id); //조회수 1 증가하기
	
	public void updateBoard(BoardVo boardVo);// 게시글 수정
	
	public void adminupdateBoard(BoardVo boardVo);// 게시글 수정

	public void deleteBoard(int id);// 게시글 삭제

	public BoardVo selectOneforAdmin(int id); //admin 페이지에서 게시글 하나 가져오기(이전글 다음글 없는거)
	
	// 답글달기 메소드
	public void setStepPlusOne(int freeBoard_group, int freeBoard_step);
	public void insertReply(BoardVo boardVo);

	// 댓글 달기 메소드
	public void insertComment(CommentVo commentVo);
	
	// 방금 단 댓글 바로 가져오기 메소드
	public CommentVo selectCommentById(int id);

	// 댓글들 가져오기
	public List<CommentVo> selectCommentsByFreeBoardId(int freeBoard_id);

	// 댓글 수정
	public void updateComment(int comment_id, String comment_content);

	// 댓글 삭제
	public int deleteComment(int comment_id);
	
	
}
