package com.java.admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.BoardEventMapper;
import com.java.vo.BoardEventVo;
import com.java.vo.BoardNoticeVo;

@Service
public class BoardEventServiceImpl implements BoardEventService {
	
	@Autowired
	BoardEventMapper boardEventMapper;

	@Autowired
	BoardEventVo boardEventVo;

	@Override
	public Map<String, Object> selectEventList(int page) {//이벤트 리스트 전체 가져오기
		HashMap<String, Object> map = pageMethod(page);

		int startRow = (int) map.get("startRow");
		int endRow = (int) map.get("endRow");

		// 관리자 객체들 담기는 list
		List<BoardEventVo> list = boardEventMapper.selectEventList(startRow, endRow);
		boardEventMapper.updateEventboard_status_start();
		boardEventMapper.updateEventboard_status_end();

		map.put("list", list);
		map.put("page", page);
		map.put("listCount", map.get("listCount"));
		map.put("maxPage", map.get("maxPage"));
		map.put("startPage", map.get("startPage"));
		map.put("endPage", map.get("endPage"));

		return map;
	}//selectEventList

	@Override
	public Map<String, Object> selectEventListAll(int page) {//프론트 이벤트 리스트 전체 가져오기
		HashMap<String, Object> map = pageMethodHome(page);

		int startRow = (int) map.get("startRow");
		int endRow = (int) map.get("endRow");

		// 관리자 객체들 담기는 list
		List<BoardEventVo> list = boardEventMapper.selectEventListAll(startRow, endRow);
		boardEventMapper.updateEventboard_status_start();
		boardEventMapper.updateEventboard_status_end();

		map.put("list", list);
		map.put("page", page);
		map.put("listCount", map.get("listCount"));
		map.put("maxPage", map.get("maxPage"));
		map.put("startPage", map.get("startPage"));
		map.put("endPage", map.get("endPage"));

		return map;
	}//selectEventListAll
	
	@Override
	public Map<String, Object> selectEventListOn(int page) {//프론트 진행 중인 이벤트 리스트 전체 가져오기
		HashMap<String, Object> map = pageMethodOn(page);
		
		int startRow = (int) map.get("startRow");
		int endRow = (int) map.get("endRow");
		
		// 관리자 객체들 담기는 list
		List<BoardEventVo> list = boardEventMapper.selectEventListOn(startRow, endRow);
		boardEventMapper.updateEventboard_status_start();
		boardEventMapper.updateEventboard_status_end();
		
		map.put("list", list);
		map.put("page", page);
		map.put("listCount", map.get("listCount"));
		map.put("maxPage", map.get("maxPage"));
		map.put("startPage", map.get("startPage"));
		map.put("endPage", map.get("endPage"));
		
		return map;
	}//selectEventListOn
	
	@Override
	public Map<String, Object> selectEventListOff(int page) {//프론트 종료된 이벤트 리스트 전체 가져오기
		HashMap<String, Object> map = pageMethodOff(page);
		
		int startRow = (int) map.get("startRow");
		int endRow = (int) map.get("endRow");
		
		// 관리자 객체들 담기는 list
		List<BoardEventVo> list = boardEventMapper.selectEventListOff(startRow, endRow);
		boardEventMapper.updateEventboard_status_start();
		boardEventMapper.updateEventboard_status_end();
		
		map.put("list", list);
		map.put("page", page);
		map.put("listCount", map.get("listCount"));
		map.put("maxPage", map.get("maxPage"));
		map.put("startPage", map.get("startPage"));
		map.put("endPage", map.get("endPage"));
		
		return map;
	}//selectEventListOff
	
	public HashMap<String, Object> pageMethod(int page) {//전체 확인하기
		HashMap<String, Object> map = new HashMap<>();

		int listCount = boardEventMapper.selectCount();
		int rowPerPage = 10; // 한 페이지당 게시물 갯수
		int pageList = 5; // 페이지 넘버 표시할 갯수 1-2-3-4-5 또는 1-2-3 또는 1-2-3-4-5-6-7-8-9-10 이런 식
		int maxPage = (int) (Math.ceil((double) listCount / rowPerPage));
		int startPage = ((page - 1) / pageList) * pageList + 1; // pageList가 5번까지면 1~5를 1로 빼서 5로 나누면 0이고 0에 5를 곱하면 0,
																// 거기에 1을 더하면 1페이지에 다 표시됨
		int endPage = maxPage;
		
		if (endPage > startPage + pageList - 1) {
			endPage = startPage + pageList - 1;
		}

		int startRow = (page - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		
		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);

		return map;
	}//pageMethod

	public HashMap<String, Object> pageMethodHome(int page) {//프론트 홈 전체 이벤트
		HashMap<String, Object> map = new HashMap<>();

		int listCount = boardEventMapper.selectCount();
		int rowPerPage = 4; // 한 페이지당 게시물 갯수
		int pageList = 5; // 페이지 넘버 표시할 갯수 1-2-3-4-5 또는 1-2-3 또는 1-2-3-4-5-6-7-8-9-10 이런 식
		int maxPage = (int) (Math.ceil((double) listCount / rowPerPage));
		int startPage = ((page - 1) / pageList) * pageList + 1; // pageList가 5번까지면 1~5를 1로 빼서 5로 나누면 0이고 0에 5를 곱하면 0,
																// 거기에 1을 더하면 1페이지에 다 표시됨
		int endPage = maxPage;
		
		if (endPage > startPage + pageList - 1) {
			endPage = startPage + pageList - 1;
		}

		int startRow = (page - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		
		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);

		return map;
	}//pageMethod
	
	public HashMap<String, Object> pageMethodOn(int page) {//프론트 홈 진행 중 이벤트
		HashMap<String, Object> map = new HashMap<>();
		
		int listCount = boardEventMapper.selectCountEventOn();
		int rowPerPage = 4; // 한 페이지당 게시물 갯수
		int pageList = 5; // 페이지 넘버 표시할 갯수 1-2-3-4-5 또는 1-2-3 또는 1-2-3-4-5-6-7-8-9-10 이런 식
		int maxPage = (int) (Math.ceil((double) listCount / rowPerPage));
		int startPage = ((page - 1) / pageList) * pageList + 1; // pageList가 5번까지면 1~5를 1로 빼서 5로 나누면 0이고 0에 5를 곱하면 0,
		// 거기에 1을 더하면 1페이지에 다 표시됨
		int endPage = maxPage;
		
		if (endPage > startPage + pageList - 1) {
			endPage = startPage + pageList - 1;
		}
		
		int startRow = (page - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		
		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return map;
	}//pageMethod
	
	public HashMap<String, Object> pageMethodOff(int page) {//프론트 홈 종료된 이벤트
		HashMap<String, Object> map = new HashMap<>();
		
		int listCount = boardEventMapper.selectCountEventOff();
		int rowPerPage = 4; // 한 페이지당 게시물 갯수
		int pageList = 5; // 페이지 넘버 표시할 갯수 1-2-3-4-5 또는 1-2-3 또는 1-2-3-4-5-6-7-8-9-10 이런 식
		int maxPage = (int) (Math.ceil((double) listCount / rowPerPage));
		int startPage = ((page - 1) / pageList) * pageList + 1; // pageList가 5번까지면 1~5를 1로 빼서 5로 나누면 0이고 0에 5를 곱하면 0,
		// 거기에 1을 더하면 1페이지에 다 표시됨
		int endPage = maxPage;
		
		if (endPage > startPage + pageList - 1) {
			endPage = startPage + pageList - 1;
		}
		
		int startRow = (page - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;
		
		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		
		return map;
	}//pageMethod
	
	

	@Override
	public void insertEventAdd(BoardEventVo boardEventVo) { //이벤트 1개 추가하기
		boardEventMapper.insertEventAdd(boardEventVo);
	}

	@Override
	public Map<String, Object> adminSelectEventOne(int id) { //이벤트 1개 가져오고 조회수 1 증가 시키기
		Map<String, Object> map = new HashMap<>();
		BoardEventVo boardEventVo = boardEventMapper.selectEventOne(id);
		BoardEventVo preBoardEventVo = boardEventMapper.preSelectEventOne(id);
		BoardEventVo nextBoardEventVo = boardEventMapper.nextSelectEventOne(id);
		
		boardEventMapper.updateEventBoard_hit(id);
		
		map.put("boardEventVo", boardEventVo);
		map.put("preBoardEventVo", preBoardEventVo);
		map.put("nextBoardEventVo", nextBoardEventVo);
		
		return map;
	}

	@Override
	public void updateEventBoard(BoardEventVo boardEventVo) {
		boardEventMapper.updateEventBoard(boardEventVo);
	}

	@Override
	public void deleteEventOne(int id) {
		boardEventMapper.deleteEventOne(id);
		
	}


	




	




	
	

}//BoardEventServiceImpl
