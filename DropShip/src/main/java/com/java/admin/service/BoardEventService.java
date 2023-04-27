package com.java.admin.service;

import java.util.Map;

import com.java.vo.BoardEventVo;

public interface BoardEventService {

	public void insertEventAdd(BoardEventVo boardEventVo); //이벤트 추가하기

	public Map<String, Object> selectEventList(int page); //이벤트 전체 리스트 가져오기

	public Map<String, Object> selectEventListAll(int page); //프론트에서 이벤트 전체 리스트 가져오기

	public Map<String, Object> adminSelectEventOne(int id); //이벤트 1개 가져오기

	public void updateEventBoard(BoardEventVo boardEventVo); //이벤트 수정하기

	public void deleteEventOne(int id); //이벤트 삭제하기

	public Map<String, Object> selectEventListOn(int page); //이벤트 진행 중인 리스트 가져오기

	public Map<String, Object> selectEventListOff(int page); //이벤트 종료된 리스트 가져오기
	
	








	
	
	
}//BoardEventService
