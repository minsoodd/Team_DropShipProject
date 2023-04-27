package com.java.admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.DropshipMemberMapper;
import com.java.vo.Count_Order_Price_By_MonthVo;
import com.java.vo.DropshipMemberVo;
import com.java.vo.MemberCountDayVo;

@Service
public class DropshipMemberServiceImpl implements DropshipMemberService {
	
	@Autowired
	DropshipMemberMapper dropshipMemberMapper;

	//맴버 전체 리스트 가져오기
		@Override
		public Map<String, Object> selectMemberList(int page) {
			Map<String, Object> map = pageMethod(page);
			
			int startRow = (int)map.get("startRow");
			int endRow = (int)map.get("endRow");
			
			List<DropshipMemberVo> list = dropshipMemberMapper.selectMemberList(startRow, endRow);
			
			map.put("list", list);
			map.put("page", page);
			map.put("listCount", map.get("listCount"));
			map.put("maxPage", map.get("maxPage"));
			map.put("startPage", map.get("startPage"));
			map.put("endPage", map.get("endPage"));
			
			return map;
		}//selectMemberList
		
		//페이징 처리를 위한 메소드 정의
		public HashMap<String, Object> pageMethod(int page) {
			HashMap<String, Object> map = new HashMap<>();
			
			int listCount = dropshipMemberMapper.selectCount();
			int rowPerPage = 10; //한 페이지당 게시물 갯수
			int pageList = 5; //페이지 넘버 표시할 갯수 1-2-3-4-5 또는 1-2-3 또는 1-2-3-4-5-6-7-8-9-10 이런 식
			int maxPage = (int)( Math.ceil ( ( double ) listCount / rowPerPage ) );
			int startPage = ( ( page - 1 ) / pageList ) * pageList + 1; //pageList가 5번까지면 1~5를 1로 빼서 5로 나누면 0이고 0에 5를 곱하면 0, 거기에 1을 더하면 1페이지에 다 표시됨
			int endPage = maxPage;
			if ( endPage > startPage + pageList - 1 ) { endPage = startPage + pageList - 1; }
			
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

		//1명의 고객 정보 가져오기
		@Override
		public DropshipMemberVo dropship_memberselectOne(int id) {
			DropshipMemberVo dropshipMemberVo = dropshipMemberMapper.dropship_memberselectOne(id);
			return dropshipMemberVo;
		}

		//어드민 index 페이지에서 맴버 정보 불러오기
		@Override
		public Map<String, Object> indexMemberList(int page) {
			Map<String, Object> map = pageMethodIndex(page);
			
			int startRow = (int)map.get("startRow");
			int endRow = (int)map.get("endRow");
			
			List<DropshipMemberVo> list = dropshipMemberMapper.indexMemberList(startRow, endRow);
			
			map.put("list", list);
			map.put("page", page);
			map.put("listCount", map.get("listCount"));
			map.put("maxPage", map.get("maxPage"));
			map.put("startPage", map.get("startPage"));
			map.put("endPage", map.get("endPage"));
			
			return map;
		}//selectMemberList
		
		//페이징 처리를 위한 메소드 정의(혹시 모를 메인 페이지 맴버 정보 페이징 처리를 위한)
		public HashMap<String, Object> pageMethodIndex(int page) {
			HashMap<String, Object> map = new HashMap<>();
			
			int listCount = dropshipMemberMapper.selectCount();
			int rowPerPage = 10; //한 페이지당 게시물 갯수
			int pageList = 5; //페이지 넘버 표시할 갯수 1-2-3-4-5 또는 1-2-3 또는 1-2-3-4-5-6-7-8-9-10 이런 식
			int maxPage = (int)( Math.ceil ( ( double ) listCount / rowPerPage ) );
			int startPage = ( ( page - 1 ) / pageList ) * pageList + 1; //pageList가 5번까지면 1~5를 1로 빼서 5로 나누면 0이고 0에 5를 곱하면 0, 거기에 1을 더하면 1페이지에 다 표시됨
			int endPage = maxPage;
			if ( endPage > startPage + pageList - 1 ) { endPage = startPage + pageList - 1; }
			
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

		//어드민 index 차트에서 맴버 정보 가져오기
		@Override
		public List<MemberCountDayVo> selectMember_Reg_Date() {
			List<MemberCountDayVo> list = dropshipMemberMapper.selectMember_Reg_Date();
			return list;
		}//selectMember_Reg_Date

		//어드민 index 차트에서 매출 정보 가져오기
		@Override
		public List<Count_Order_Price_By_MonthVo> selectOrderTotalByMonth() {
			List<Count_Order_Price_By_MonthVo>list= dropshipMemberMapper.selectOrderTotalByMonth();
			return list;
		}//selectOrderTotalByMonth
		
		
}//DropshipMemberServiceImpl