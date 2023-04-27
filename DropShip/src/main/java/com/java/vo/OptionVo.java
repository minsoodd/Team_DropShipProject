package com.java.vo;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

//작품 옵션 - option이라는 테이블을 만들 수 없음. 오라클 예약어라고 함. 
// 대신 테이블 명만 work_option이라 해놓음. 그러나 VO는 optionVo로 간단하게 이름지음

@Component
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Data
public class OptionVo {
 
	 private int id;                                 // 옵션 고유번호 
	 private int option_size;                         // 사이즈 0- 20.0cm x 35.7cm / 1- 25.0cm x 44.6cm		// 사이즈만 0부터 시작, 나머지 미디어 마띠에르 등등은 1부터 시작하는 걸로 바꿀수밖에 없었음
	 private int option_size_added_price;             // 사이즈 추가되는 가격 20x35면 36500, 25x44면 50300추가됨
	 private int option_media;                        // 미디어 1-canvas / 2-fineArt
	 private Double option_media_price_multiple;      // 미디어 가격 배수 canvas면 1, fineArt면 1.05
	 private int option_mattier;                      // 마띠에르 유무 1-없음 2-선택
	 private int option_frame;                        // 프레임 1-캔버스판넬, 2-래핑캔버스, 3-띄움, 4-원목 띄움, 5-올림우드, 6-앤틱D실버, 7-원목베이지, 8-관화이트, 9-관우드, 10-관블랙
	 private int option_frame_added_price;            // 프레임 추가되는 가격 : 캔버스판넬, 래핑캔버스,앤택D실버 - 0원 추가 / 띄움-4000 / 원목 띄움-16000 / 올림우드-20000 / 원목베이지-30000 /관화이트, 관우드, 관블랙-28000 추가
	 private int option_matt;                         // 매트(여백) 1-없음, 2-2cm, 3-3cm, 4-6cm, 5-11cm (프레임이 앤틱D실버와 원목베이지 일때만 매트 선택가능. 기본 '없음')
	 private int option_matt_added_price;             // 매트 추가되는 가격 없음:0, 2cm:1만, 3cm:2만, 6cm:3만, 11cm:4만원 추가됨
	 private int option_quantity;                     // 수량 
	 private int option_selected_price;               // 옵션 선택 후 가격 
	 
	 private int work_id;							// cart.jsp 장바구니 관련해서 조인해서 사용할 목적
}