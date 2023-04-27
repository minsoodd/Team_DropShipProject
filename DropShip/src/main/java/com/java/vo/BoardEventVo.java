package com.java.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Component
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class BoardEventVo {
	
	private int id; 
	private int eventboard_istop;
	private int admin_id;
	private int eventboard_hit;
	private int eventboard_status;
	private String eventboard_title;
	private String eventboard_content;
	private String eventboard_file_name;
	private Date eventboard_date;
	private Date eventboard_update_date;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd\'T\'HH:mm")
    private Date eventboard_start;
   
    @DateTimeFormat(pattern = "yyyy-MM-dd\'T\'HH:mm")
    private Date eventboard_end;
	
	private String admin_login_id; //join을 위해 필요한 값
	private String admin_name; //join을 위해 필요한 값
	private String searchType; //검색을 위해 필요한 값
	private String searchWord; //검색을 위해 필요한 값
	
}
