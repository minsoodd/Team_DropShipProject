package com.java.home.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.MemberMapper;
import com.java.vo.MemberVo;
import com.java.vo.Order_Detail_inquireVo;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberMapper mMapper;
	
	@Override
	public MemberVo memberSelectOne(String member_login_id, String member_pw) { // 회원 로그인 검색
		MemberVo mvo = mMapper.memberSelectOne(member_login_id, member_pw); 
		return mvo;
	}
	
	@Override
	public MemberVo selectOne(int id) {  // 회원 1명 정보가져오기
		MemberVo mvo = mMapper.selectOne(id);
		return mvo;
	}
	
	@Override
	public int memberCheckId(String member_login_id) { // ID 중복체크
		int result = mMapper.memberCheckId(member_login_id);
		return result;
	}
	
	@Override
	public int memberCheckNic(String member_nName) { // 닉네임 중복체크
		int result = mMapper.memberCheckNic(member_nName);
		return result;
	}
	
	@Override
	public void insertOneMember(MemberVo mvo) { // 회원 1명 추가
		mMapper.insertOneMember(mvo);
		
	}

	@Override
	public void memberPwModify(MemberVo mvo) {	 // 회원1명 비밀번호 변경
		mMapper.memberPwModify(mvo);
		
	}

	@Override
	public void memberReModify(MemberVo mvo) {  // 회원 1명 개인정보 수정
		mMapper.memberReModify(mvo);
		
	}

	@Override
	public void memberDelete(String member_login_id) {  // 회원 1명 삭제 (탈퇴)
		mMapper.memberDelete(member_login_id);
	}

	
	
	


}
