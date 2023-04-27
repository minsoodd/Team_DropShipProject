package com.java.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
// 회원 주문 테이블
public class Order_MemberVo {
	 
	private int id;	           	    // 회원 주문 고유번호 ->> 다른 곳에서 사용할 땐 order_member_id로 불려질 것임.
	private int member_id;	        // 회원 고유번호 
	private Date order_date;		// 주문 날짜 
	private int order_status;		// 처리 상태 0-입금확인중 1-입금완료 2-상품준비중 3-배송중 4-배송완료 5-주문취소
	private int delivery_id;	    // 배송 고유번호(송장) 기본null. 배송시작되면 값 들어감
	private String delivery_name;	// 받는 사람 이름 회원 정보와 다를 수 있으니까 존재
	private String delivery_phone;	// 받는 사람 휴대폰번호 회원 정보와 다를 수 있으니까 존재
	private String delivery_zip;	// 배송지 우편번호 
	private String delivery_road;	// 배송지 도로명주소 
	private String delivery_address;// 배송지 상세주소 회원 정보와 다를 수 있으니까 존재
	private String delivery_request;// 배송 요청사항  
    
}
