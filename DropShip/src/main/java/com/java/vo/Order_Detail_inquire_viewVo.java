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
// 마이페이지에서 회원의 주문 조회 - 해당 주문건 클릭시 JOIN해서 가져오는 데이터 담는 Vo. orderinquiry_view.jsp 
public class Order_Detail_inquire_viewVo {
	
	private int id;
    private Date order_date;
    private String delivery_name;
    private String delivery_phone;
    private String delivery_zip;
    private String delivery_road;
    private String delivery_address;
    private String delivery_request;
    private String work_name;
    private String work_img_url;
    private int work_id;
    private int work_price;
    private int option_size;
    private int option_size_added_price;
    private int option_media;
    private Double option_media_price_multiple;
    private int option_mattier;
    private int option_frame;
    private int option_frame_added_price;
    private int option_matt;
    private int option_matt_added_price;
    private int option_quantity;
    private int option_selected_price;
    private String artist_korean_name;
    private String member_name;
    private String member_phone;
    private String member_zip;
    private String member_road;
    private String member_addr;
    private String member_email;
    
	
}
