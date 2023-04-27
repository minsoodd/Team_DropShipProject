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
// 마이페이지에서 회원의 주문 조회시 JOIN해서 가져오는 데이터 담는 Vo. 
public class Order_Detail_inquireVo {
	
//	private int id; 				// 회원 주문상세 고유번호
	private int order_member_id; 	// 회원 주문 고유번호 
//	private int work_id; 			// 작품 고유번호.
//	private int option_id; 			// 옵션 고유번호. 어느 작품의 어느 옵션들이 선택됐는지
//	private int total_price; 		// 총 합계금액. 한 작품 * 개수의 총 합계금액
//	private int event_work_sale; 	// 이벤트 작품 할인금액. 한 작품 * 개수의 이벤트 작품 행사로 할인받는 %
//	private int event_period_sale;  // 이벤트 기간 할인금액. 한 작품 * 개수의 이벤트 기간 행사로 할인받는 %
//	private int final_price; 		// 최종 결제금액. 한 작품 * 개수 할인 받을거 다 받고 결제하는 금액
	
	
	// 마이페이지 주문조회시 JOIN한 쿼리 때문에 얘네들 필요.
	// selectOrderDetailByMemberId()메소드 사용때 사용됨.
	// Order_Member(회원 주문), Work, Artist, Work_Option, Order_Detail(회원 주문상세) 총 5개의 테이블을 조인. 메인은 Order_Detail.
	private Date order_date;			// Order_Member 테이블의 컬럼
    private String work_img_url;		// Work 테이블의 컬럼
    private String work_name;			// Work 테이블의 컬럼
    private String artist_korean_name;	// Artist 테이블의 컬럼
    private int option_quantity;		// Work_Option 테이블의 컬럼
    private int option_selected_price;	// Work_Option 테이블의 컬럼	
    private int order_status;		// Order_Member 테이블의 컬럼	// 0405 수) String에서 int로 바꿈
	
    // 리뷰작성을위해 필요함.
    private int work_id;
    private int review_rate;
    
}
