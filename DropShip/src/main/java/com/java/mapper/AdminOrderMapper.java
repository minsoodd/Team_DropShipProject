package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.java.vo.BoardEventVo;
import com.java.vo.Order_DetailVo;
import com.java.vo.Order_MemberVo;

@Mapper
public interface AdminOrderMapper {

	//주문 현황 전체 리스트보기
	List<Order_DetailVo> selectOrderList(int startRow, int endRow);
	
	//주문 전체 개수 확인하기
	int selectCount();
	
	//
	Order_DetailVo adminSelectOrderOne(int id);

	//주문 처리 상태 수정하기
	int updateOrderStatus(int id, int orderStatus);
	
	//고객 관리에서 주문 불러오기
	List<Order_DetailVo> adminMemberSelectOrder(int id);

	//모든 주문 가져오기
	List<Order_MemberVo> selectOrderAll();
	
	//주문 정렬(공사중)
	List<Order_DetailVo> getOrdersByStatus(String orderStatus, int page);

}// AdminMemberMapper