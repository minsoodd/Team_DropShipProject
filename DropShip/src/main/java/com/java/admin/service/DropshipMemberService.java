package com.java.admin.service;

import java.util.List;
import java.util.Map;

import com.java.vo.Count_Order_Price_By_MonthVo;
import com.java.vo.DropshipMemberVo;
import com.java.vo.MemberCountDayVo;

public interface DropshipMemberService {

	//맴버 전체 리스트 가져오기
	public Map<String, Object> selectMemberList(int page); 

	//1명의 고객 정보 가져오기
	public DropshipMemberVo dropship_memberselectOne(int id);

	//어드민 index 페이지에서 맴버 정보 불러오기
	public Map<String, Object> indexMemberList(int page);
	
	//어드민 index 차트에서 맴버 정보 가져오기
	public List<MemberCountDayVo> selectMember_Reg_Date();

	//어드민 index 차트에서 매출 정보 가져오기
	public List<Count_Order_Price_By_MonthVo> selectOrderTotalByMonth();

}//DropshipMemberService
