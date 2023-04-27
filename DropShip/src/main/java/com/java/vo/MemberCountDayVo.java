package com.java.vo;

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
public class MemberCountDayVo {
	int year;
	int month;
	int day;
	int member_count;
}
