package com.java.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Cart_MemberVo {

	private int id; 		// 회원 장바구니 고유번호
	private int member_id; 	// 회원 고유번호
	private int work_id;		// 작품 고유번호
	private int option_id; 	// 옵션 고유번호 어느 작품의 어느 옵션들이 선택됐는지
	private Date added_date; 	// 작품이 장바구니에 담긴 날짜 회원 1명이 장바구니 고유번호 여러개 가져야하는 구조.

}