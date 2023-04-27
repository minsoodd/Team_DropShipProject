package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.java.vo.BoardEventVo;

@Mapper
public interface BoardEventMapper {

	void insertEventAdd(BoardEventVo boardEventVo); //이벤트 1개 추가하기

	List<BoardEventVo> selectEventList(int startRow, int endRow); //이벤트 전체 리스트 불러오기
	
	List<BoardEventVo> selectEventListAll(int startRow, int endRow); //이벤트 전체 리스트 불러오기

	int selectCount(); //이벤트 게시물 개수 체크

	BoardEventVo selectEventOne(int id); //이벤트 1개 상세 보기
	
	BoardEventVo preSelectEventOne(int id); //이벤트 1개 상세 보기시 이전글

	BoardEventVo nextSelectEventOne(int id); //이벤트 1개 상세 보기시 다음글

	void updateEventBoard_hit(int id); //이벤트 게시물 조회수 1증가

	void updateEventBoard(BoardEventVo boardEventVo); //이벤트 게시물 수정

	void deleteEventOne(int id); //이벤트 게시물 삭제

	List<BoardEventVo> selectEventListOn(int startRow, int endRow); //활성화된 이벤트만 가져오기

	List<BoardEventVo> selectEventListOff(int startRow, int endRow); //종료된 이벤트만 가져오기

	int selectCountEventOn(); //진행 중인 이벤트 개수만 체크

	int selectCountEventOff(); //종료된 이벤트 개수만 체크

	void updateEventboard_status_start(); //날짜에 따라 이벤트 시작 종료 변경하기
	
	void updateEventboard_status_end(); //날짜에 따라 이벤트 시작 종료 변경하기

	

	
	
	






}
