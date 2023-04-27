package com.java.vo;

import java.sql.Date;
import java.text.SimpleDateFormat;

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
public class CommentVo {

	private int id;
    private int freeBoard_id;
    private int member_id;
    private String comment_pw;
    private String comment_content;
    private Date comment_date;
    
    private String member_nName;
    
    private String formatted_comment_date;
    public String getFormatted_comment_date() {
        if (comment_date != null) {
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd (E)  HH:mm:ss");
            return sdf.format(comment_date);
        }
        return "";
    }
    
}
