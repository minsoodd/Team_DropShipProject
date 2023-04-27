package com.java.vo;

import java.sql.Date;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component  // 얘를 사용하면 @service이런것들을 사용할 수 있다?? 
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Count_Order_Price_By_MonthVo {
	  //private int order_Month;
	  private Date order_Day;
	  private int total_Price;
}
