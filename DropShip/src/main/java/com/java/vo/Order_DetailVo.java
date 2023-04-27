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
// 회원 주문상세 테이블
public class Order_DetailVo {
	
	private int id; 				// 회원 주문상세 고유번호
	private int order_member_id; 	// 회원 주문 고유번호 
	private int work_id; 			// 작품 고유번호.
	private int option_id; 			// 옵션 고유번호. 어느 작품의 어느 옵션들이 선택됐는지
	private int total_price; 		// 총 합계금액. 한 작품 * 개수의 총 합계금액
	private int event_work_sale; 	// 이벤트 작품 할인금액. 한 작품 * 개수의 이벤트 작품 행사로 할인받는 %
	private int event_period_sale;  // 이벤트 기간 할인금액. 한 작품 * 개수의 이벤트 기간 행사로 할인받는 %
	private int final_price; 		// 최종 결제금액. 한 작품 * 개수 할인 받을거 다 받고 결제하는 금액
	
	private String member_name; // member_name에서 조인으로 맴버 이름 가져와서 관리자 페이지에 뿌리기 위해 추가.
	private String work_name; // WorkVo에서 조인으로 주문한 작품명을 가져와서 관리자 페이지에 뿌리기 위해 추가
	private Date order_date; // Order_MemberVo에서 조인으로 주문한 날짜 정보를 가져와서 관리자 페이지에 뿌리기 위해 추가
	private int order_status; // Order_MemberVo에서 조인으로 주문 상태 정보를 가져와서 관리자 페이지에 뿌리기 위해 추가
	private int member_id;	  // Order_MemberVo에서 조인으로 주문 상태 정보를 가져와서 관리자 페이지에 뿌리기 위해 추가
	
	private String delivery_name;	// 받는 사람 이름 회원 정보와 다를 수 있으니까 존재
	private String delivery_road;	// Order_MemberVo에서 조인으로 주문 상태 정보를 가져와서 관리자 페이지에 뿌리기 위해 추가
	private String delivery_address;// Order_MemberVo에서 조인으로 주문 상태 정보를 가져와서 관리자 페이지에 뿌리기 위해 추가
	private String delivery_phone;	// 받는 사람 휴대폰번호 회원 정보와 다를 수 있으니까 존재
	private int order_detail_id; //Order_Detail에 id값을 가져오기 위해 추가
	private int delivery_id; // 배송 고유번호(송장)
	private String delivery_request; // 배송 고유번호(송장)
	
	//주문 상세 페이지를 위해서 추가
	private int option_quantity; // 주문 옵션 확인을 위한 값
	private int option_size; // 주문 옵션 확인을 위한 값
	private int option_media; // 주문 옵션 확인을 위한 값
	private int option_mattier; // 주문 옵션 확인을 위한 값
	private int option_frame; // 주문 옵션 확인을 위한 값
	private int option_matt; // 주문 옵션 확인을 위한 값
	private int option_selected_price;
	private int option_frame_added_price;
	private int option_matt_added_price;
}
