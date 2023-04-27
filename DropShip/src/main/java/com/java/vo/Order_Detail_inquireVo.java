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
	
	private int order_member_id; 	// 회원 주문 고유번호 
	
	
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
    private int option_id;				// Work_Option 테이블의 컬럼
    private int review_rate;
    
}
