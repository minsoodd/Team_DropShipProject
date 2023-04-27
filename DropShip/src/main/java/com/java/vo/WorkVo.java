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
public class WorkVo {
	
	private int id; //작품 고유번호
    private String work_name; //작품 이름
    private int artist_id; //아티스트 고유번호
    private String work_genre; //장르 이름
    private String work_subject; //주제 이름
    private String work_img_url; //작품 이미지 url
    private String work_content; //작품 설명
    private Double work_sale;	// double임 !!! 세일 퍼센테이지 0.00 소숫점 두자리까지 표현 가능 할인률
    private int work_isBest; // 1일때만 베스트 상품. 베스트 여부
    private Date work_reg_date; //작품 등록일
    private int work_price; //작품 원가
    private String work_display_position; //전시 위치
    private int work_hit; //작품 조회수
    private int admin_id; //등록 관리자 고유번호
    private int work_available; //작품 노출상태
    private int work_is_ai; // ai생성 작품인지 여부  (0-일반작품 1-ai생성작품)
    private String work_ai_prompt;  // ai생성할 때 사용됐던 프롬프트문.
    
    private String artist_name; // selectWorkAll(), selectWorkOne() 함수용. JOIN시 사용. 원래 Work테이블에 artist_name컬럼은 없음.
    private String artist_korean_name; // selectWorkAll(), selectWorkOne() 함수용. JOIN시 사용. 원래 Work테이블에 artist_name컬럼은 없음.
    
    
   
	
}
