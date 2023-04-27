package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.java.vo.BoardNoticeVo;

@Mapper
public interface BoardNoticeMapper {
	
	public List<BoardNoticeVo> selectNoticeList(int startRow, int endRow); //공지 리스트 보기

	public int selectCount(); //공지 전체 리스트 카운트

	public void insertNoticeAdd(BoardNoticeVo boardNoticeVo); //공지 등록하기

	public void deleteNoticeOne(int id); //공지 1개 삭제하기

	public void updateNoticeBoard(BoardNoticeVo boardNoticeVo); //공지 업데이트하기 

	public void updateNoticeboard_hit(int id); //조회수 1 증가하기
	
	public BoardNoticeVo selectNoticeOne(int id); //공지 1개 보기

	public BoardNoticeVo preSelectNoticeOne(int id); //이전 게시물 가져오기

	public BoardNoticeVo nextSelectNoticeOne(int id); //다음 게시물 가져오기

	public List<BoardNoticeVo> noticeBoardSearch(String search, String searchWord);







}
