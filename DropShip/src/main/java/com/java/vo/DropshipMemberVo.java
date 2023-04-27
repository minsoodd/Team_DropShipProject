package com.java.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class DropshipMemberVo {
	
	private String member_login_id;
	private String member_pw;
	private String member_name;
	private String member_email;
	private String member_birth;
	private String member_road;
	private String member_addr;
	private String member_nname; 
	private int id;
	private int member_phone;
	private int member_zip;
	private int admin_ban;
	private Date member_reg_date;
	
	private int member_id; //고객 관리에서 주문 고객 불러오기용
	private String delivery_name; //고객 관리에서 주문 고객 불러오기용
	private Date order_date; //고객 관리에서 주문 고객 불러오기용
	private int order_status; //고객 관리에서 주문 고객 불러오기용
	private String delivery_road;//고객 관리에서 주문 고객 불러오기용
	
}

  