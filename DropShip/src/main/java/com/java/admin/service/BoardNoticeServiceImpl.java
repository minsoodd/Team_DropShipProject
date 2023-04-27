package com.java.admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.AdminMapper;
import com.java.mapper.BoardNoticeMapper;
import com.java.vo.ArtistVo;
import com.java.vo.BoardNoticeVo;
import com.java.vo.WorkVo;

@Service
public class BoardNoticeServiceImpl implements BoardNoticeService {
	
	@Autowired
	AdminMapper adminMapper;
	
	@Autowired
	BoardNoticeMapper boardNoticeMapper;

	@Autowired
	WorkVo workVo;

	@Autowired
	ArtistVo artistVo;
	
	@Autowired
	BoardNoticeVo boardNoticeVO;

	@Override
	public Map<String, Object> selectNoticeList(int page) {//공지 리스트 전체 가져오기
		HashMap<String, Object> map = pageMethod(page);

		int startRow = (int) map.get("startRow");
		int endRow = (int) map.get("endRow");

		// 관리자 객체들 담기는 list
		List<BoardNoticeVo> list = boardNoticeMapper.selectNoticeList(startRow, endRow);

		map.put("list", list);
		map.put("page", page);
		map.put("listCount", map.get("listCount"));
		map.put("maxPage", map.get("maxPage"));
		map.put("startPage", map.get("startPage"));
		map.put("endPage", map.get("endPage"));

		return map;
	}// selectAdminList

	public HashMap<String, Object> pageMethod(int page) {
		HashMap<String, Object> map = new HashMap<>();

		int listCount = boardNoticeMapper.selectCount();
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
	}// pageMethod

	@Override
	public void insertNoticeAdd(BoardNoticeVo boardNoticeVo) { //공지 추가하기
		boardNoticeMapper.insertNoticeAdd(boardNoticeVo);
	}
	
	@Override
	public void deleteNoticeOne(int id) { //공지 1개 삭제하기
		boardNoticeMapper.deleteNoticeOne(id);
	}

	@Override
	public void updateNoticeBoard(BoardNoticeVo boardNoticeVo) { //공지 수정하기
		boardNoticeMapper.updateNoticeBoard(boardNoticeVo);
	}

	@Override
	public Map<String, Object> selectNoticeOne(int id) { //공지 1개 가져오기
		Map<String, Object> map = new HashMap<>();
		BoardNoticeVo boardNoticeVo = boardNoticeMapper.selectNoticeOne(id);
		BoardNoticeVo preBoardNoticeVo = boardNoticeMapper.preSelectNoticeOne(id);
		BoardNoticeVo nextBoardNoticeVo = boardNoticeMapper.nextSelectNoticeOne(id);
		map.put("boardNoticeVo", boardNoticeVo);
		map.put("preBoardNoticeVo", preBoardNoticeVo);
		map.put("nextBoardNoticeVo", nextBoardNoticeVo);
		
		return map;
	}

	@Override
	public BoardNoticeVo adminSelectNoticeOne(int id) { //공지 1개 가져오고 조회수 1 증가시키기
		boardNoticeVO = boardNoticeMapper.selectNoticeOne(id);
		boardNoticeMapper.updateNoticeboard_hit(id);
		return boardNoticeVO;
	}

	@Override
	public List<BoardNoticeVo> noticeBoardSearch(String search, String searchWord) { //프론트에서 공지사항 검색하기
		List<BoardNoticeVo> list = boardNoticeMapper.noticeBoardSearch(search, searchWord);
		return list;
	}




	




	
	

}
