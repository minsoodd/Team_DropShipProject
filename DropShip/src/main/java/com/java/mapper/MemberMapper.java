package com.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.java.vo.MemberVo;
import com.java.vo.Order_Detail_inquireVo;

@Mapper
public interface MemberMapper {
	
	public MemberVo memberSelectOne(String member_login_id, String member_pw); // 회원 로그인 검색 

	public MemberVo selectOne(int id);  // 회원1명 정보 가져오기

	public int memberCheckId(String member_login_id); // ID 중복체크
	
	public int memberCheckNic(String member_nName); // 닉네임 중복체크
	
	public void insertOneMember(MemberVo mvo); // 회원 1명추가

	public void memberPwModify(MemberVo mvo);  // 회원 1명 비밀번호 변경

	public void memberReModify(MemberVo mvo);  // 회원 1명 개인정보 수정

	public void memberDelete(String member_login_id);  // 회원 1명 삭제 (탈퇴)

	
	
	
}
