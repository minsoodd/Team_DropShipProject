package com.java.admin.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.AdminOrderMapper;
import com.java.vo.Order_DetailVo;
import com.java.vo.Order_MemberVo;

@Service
public class AdminOrderServiceImpl implements AdminOrderService {
	
	@Autowired
	AdminOrderMapper adminOrderMapper;

	@Autowired
	Order_DetailVo order_DetailVo;

	@Override
	public Map<String, Object> selectOrderList(int page) {//주문 리스트 전체 가져오기
		HashMap<String, Object> map = pageMethod(page);

		int startRow = (int) map.get("startRow");
		int endRow = (int) map.get("endRow");

		// 관리자 객체들 담기는 list
		List<Order_DetailVo> list = adminOrderMapper.selectOrderList(startRow, endRow);

		map.put("list", list);
		map.put("page", page);
		map.put("listCount", map.get("listCount"));
		map.put("maxPage", map.get("maxPage"));
		map.put("startPage", map.get("startPage"));
		map.put("endPage", map.get("endPage"));

		return map;
	}//selectEventList
	
	public HashMap<String, Object> pageMethod(int page) {//전체 확인하기
		HashMap<String, Object> map = new HashMap<>();

		int listCount = adminOrderMapper.selectCount();
		int rowPerPage = 20; // 한 페이지당 게시물 갯수
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
	public Order_DetailVo adminSelectOrderOne(int id) { //어드민에서 주문 정보 1개 가져오기
		order_DetailVo = adminOrderMapper.adminSelectOrderOne(id);
		return order_DetailVo;
	}

	@Override
	public int updateOrderStatus(int id, int orderStatus) { //주문 상태 업데이트하기
	  int success = adminOrderMapper.updateOrderStatus(id,orderStatus);
	  return success;
	}

	@Override
	public List<Order_DetailVo> adminMemberSelectOrder(int id) { //고객 관리에서 주문 부분만 추가로 가져오기
		List<Order_DetailVo> order_list = adminOrderMapper.adminMemberSelectOrder(id);
		return order_list;
	}

	@Override //전체 주문 현황 가져오기 - 주문 현황 상단 정보 표시용
	public List<Order_MemberVo> selectOrderAll() {
		List<Order_MemberVo> order_MemberVoList = adminOrderMapper.selectOrderAll();
		return order_MemberVoList;
	}	

	@Override
	public List<Order_DetailVo> getOrdersByStatus(String orderStatus, int page) { //주문 정렬(공사중)
		List<Order_DetailVo> orderList = adminOrderMapper.getOrdersByStatus(orderStatus, page);
		return orderList;
	}	




	
	

}//AdminOrderServiceImpl
