package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.java.vo.Count_Order_Price_By_MonthVo;
import com.java.vo.DropshipMemberVo;
import com.java.vo.MemberCountDayVo;

@Mapper
public interface DropshipMemberMapper {

	public List<DropshipMemberVo> selectMemberList(int startRow, int endRow); //맴버 전체 리스트 가져오기

	public int selectCount(); //맴버 list page 카운트

	public DropshipMemberVo dropship_memberselectOne(int id);

	public List<DropshipMemberVo> indexMemberList(int startRow, int endRow);

	public List<MemberCountDayVo> selectMember_Reg_Date();

	public List<Count_Order_Price_By_MonthVo> selectOrderTotalByMonth();

	
	
}//AdminMemberMapper