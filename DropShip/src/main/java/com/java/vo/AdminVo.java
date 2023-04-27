package com.java.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AdminVo {
	
	private int id;	// 관리자 고유번호
    private String admin_name;
    private String admin_login_id; // 관리자 페이지에 로그인할 때 쓰는 아이디 
    private String admin_pw;
    private int admin_isSuper;	// 0 - 일반관리자 1 - 슈퍼관리자
    private int admin_phone;
    private Date admin_reg_date;
    private int admin_ban; // 0 - 계정활성화, 1 - 계정정지(슈퍼만 조작)

}
