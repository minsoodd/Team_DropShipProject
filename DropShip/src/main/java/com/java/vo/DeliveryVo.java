package com.java.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class DeliveryVo {

	private int id; // 배송 고유번호(송장)
	private Date deliveryStart; // 배송 시작일. 주문날짜 + 1
	private Date deliveryEnd; // 배송 종료일. 주문날짜 + 2
	private String deliveryDeparture; // 출발지 고정

}
