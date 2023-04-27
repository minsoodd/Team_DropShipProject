package com.java.admin.service;

import java.util.List;
import java.util.Map;

import com.java.vo.BoardNoticeVo;

public interface BoardNoticeService {

	public Map<String, Object> selectNoticeList(int page); //공지 리스트 전체 불러오기

	public void insertNoticeAdd(BoardNoticeVo boardNoticeVo); //공지 추가하기

	public void deleteNoticeOne(int id); //공지 삭제하기

	public void updateNoticeBoard(BoardNoticeVo boardNoticeVo); //공지 수정하기

	public Map<String, Object> selectNoticeOne(int id); //게시글 1개 가져오기

	public BoardNoticeVo adminSelectNoticeOne(int id); //어든 페이지에서 게시글 1개 가져오기

	public List<BoardNoticeVo> noticeBoardSearch(String search, String searchWord);






	
	
	
}
