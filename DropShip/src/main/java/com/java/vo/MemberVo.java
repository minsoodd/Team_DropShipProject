package com.java.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component  // 얘를 사용하면 @service이런것들을 사용할 수 있다?? 
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class MemberVo {
	
	
	private int id;
	private String member_login_id, member_pw, member_name, member_email, 
	member_phone, member_birth, member_zip, member_road, member_addr, member_nName;
	private Date member_reg_date;
	
	
}
