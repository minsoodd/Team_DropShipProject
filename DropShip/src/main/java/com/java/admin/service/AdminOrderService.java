package com.java.admin.service;

import java.util.List;
import java.util.Map;

import com.java.vo.BoardEventVo;
import com.java.vo.Order_DetailVo;
import com.java.vo.Order_MemberVo;

public interface AdminOrderService {

	//주문리스트 전체 가져오기
	Map<String, Object> selectOrderList(int page);
	
	//주문 정보 1개 가져오기
	Order_DetailVo adminSelectOrderOne(int id);
	
	//주문 현황에서 주문 상태 수정하기
	int updateOrderStatus(int id, int orderStatus);
	
	//고객 관리 페이지에서 해당 사용자의 주문 리스트 가져오기
	List<Order_DetailVo> adminMemberSelectOrder(int id);
	
	//작품 주문 현황 상단 상태값만 가져오기
	List<Order_MemberVo> selectOrderAll();
	
	//주문 정렬(공사중)
	List<Order_DetailVo> getOrdersByStatus(String orderStatus, int page);







	
	
	
}//BoardEventService
