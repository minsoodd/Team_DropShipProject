package com.java.vo;

import java.util.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Data
public class WishListVo {

	// 찜리스트 고유번호
	private int id;
	// 회원 고유번호
	private int member_id;
	// 작품 고유번호
	private int work_id;
	// 작품이 찜리스트에 담긴 날짜
	private Date added_date;
	
	// 찜목록에 보여지기위해 변수만듬
	private String work_name;
	private int artist_id;
	private String work_img_url;
	private int work_price;
	private String artist_name;
	
	
	
}
