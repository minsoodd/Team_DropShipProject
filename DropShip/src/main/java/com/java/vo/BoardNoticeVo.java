package com.java.vo;

import java.sql.Date;

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
public class BoardNoticeVo {
	
	private int id;
	private int noticeboard_istop;
	private int admin_id;
	private int noticeboard_hit;
	private String noticeboard_title;
	private String noticeboard_content;
	private String noticeboard_file_name;
	private Date noticeboard_date;
	private Date noticeboard_update_date;
	
	private String admin_login_id; //join을 위해 필요한 값
	private String admin_name; //join을 위해 필요한 값
	private String search; //검색을 위해 필요한 값
	private String searchWord; //검색을 위해 필요한 값
	
}
