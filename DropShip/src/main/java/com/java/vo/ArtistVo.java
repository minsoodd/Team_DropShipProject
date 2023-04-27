package com.java.vo;

import java.util.List;

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
public class ArtistVo {

    private int id;
    private String artist_korean_name;
    private String artist_english_name;
    private String artist_img_url;
    private String artist_country;
    private String artist_birth_death;
    private String artist_main;
    private String artist_content;

    // 해당 아티스트의 작품목록을 저장한 list
    // admin_artistList.jsp에 표로 보여질 용도.
    private List<WorkVo> workList;
    
    // 프론트 bestlist.jsp에 나타나는 용도.
    private List<WorkVo> workBestList;		
    
}
