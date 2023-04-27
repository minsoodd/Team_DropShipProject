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
public class BoardVo {
	
	 // 회원 이름 회원 이름
    private String member_name;
    
    // 회원 로그인 아이디 회원 로그인 아이디. UNIQUE
    private String member_login_Id;
    
	
    private int id;	// 자유게시글 고유번호 
   
    private int freeBoard_head;	// 게시글 글머리 0-자유, 1-후기, 2-질답 //코드짤 때 주석잘 적어놔야
    
    private int freeBoard_isNotice;	    // 공지/비공지 여부 0-비공지, 1-공지
    
    private int freeBoard_isTop;// 상단고정 여부 0-비고정, 1-고정
    
    private int freeBoard_isAnswer;    // Q&A 답변여부 null-QA글X, 0-미답변, 1-답변완료

    private int member_id;    // 회원 고유번호 (작성자) 

    private int admin_id;    // 관리자 고유번호 (작성자) 

    private String freeBoard_title;    // 게시글 제목 

    private String freeBoard_content;    // 게시글 내용 

    private Date freeBoard_date;    // 게시글 작성날짜

    private Date freeBoard_update_date;    // 게시글 수정날짜

    private String freeBoard_file_name;    // 게시글 첨부파일 이름 파일 첨부 안할수도 있으니까 null가능

    private int freeBoard_hit;    // 게시글 조회수 
    
    private int freeBoard_ban;    //게시글 노출 수정
    
    private int freeBoard_group;    //게시글 그룹
    private int freeBoard_indent;    //게시글 들여쓰기
    private int freeBoard_step;    //게시글 스텝(단계)
   
    private String member_nName;    //게시자 닉네임

}
