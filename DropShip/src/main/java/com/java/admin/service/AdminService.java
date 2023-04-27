package com.java.admin.service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import com.java.vo.AdminVo;
import com.java.vo.ArtistVo;
import com.java.vo.WorkVo;

public interface AdminService {
	
	
	//////////////////       ↓ AdminMember(관리자) 관련  ↓        /////////////////////////
	
	public AdminVo adminMemberSelectOne(String admin_login_id, String admin_pw); //admin 로그인

	public void insertMember(AdminVo adminVo); // admin 등록

	public Map<String, Object> selectAdminList(int page); //admin 리스트와 page 불러오기

	public AdminVo selectOne(int id); //admin 1명 정보만 불러오기
	
	public AdminVo selectOnePW(String admin_login_id);

	public void updateAdminData(AdminVo adminVo); //admin 정보 수정

	public void updateAdminPW(AdminVo adminVo); //admin 비번 수정

	public void admin_memberDelete(String admin_login_id); //admin 삭제

	public int adminMemberCheckId(String admin_login_id); //admin ID 중복 체크

	
	//////////////////       ↓  Artist(작가) 관련  ↓        /////////////////////////
	
	public List<ArtistVo> selectArtistAll();	// 아티스트 전체 가져오기

	public ArtistVo selectArtistOne(int id);	// 아티스트 1명 가져오기
	
	public Integer selectArtistIdForAi(String member_nName);	// ai생성그림 등록 전에 해당 회원 이미 artist_id 부여받았는지 확인용. 받았으면 artist_id 리턴 
	
	public ArtistVo settingArtistVoForAi(ArtistVo artistVo, String member_nName);  // ai생성그림 등록 전에 작가객체 만들어져야. 작가만들기 전 AiController.java 코드 줄이려고 만듦
	
	// 아티스트 등록 전 workVo set하기(AdminArtistController 깔끔하게 하려고 만듦)
	ArtistVo settingArtistVo(ArtistVo artistVo, MultipartFile file);
	
	public int insertArtist(ArtistVo artistVo);	// 아티스트 등록
	
	public void updateArtistOne(ArtistVo artistVo);		// 아티스트 수정

	public void deleteArtist(int id);	// 아티스트 삭제

	public void insertAnonymousArtist(ArtistVo artistVo); // (작가미상 작품 만들기 위해) 익명아티스트 생성

	public Integer checkArtistId(String artist_name);	// 작품 추가 전 아티스트 고유번호 확인
	
	public String selectCurrval();	// ARTIST_SEQ의 CURRVAL 가져오기 (작가미상으로 작품 등록시 익명아티스트 생성 후 익명아티스트의 고유번호 ID 가져오기 위해)


	//////////////////       ↓  Work(작품) 관련 ↓         /////////////////////////
	
	public List<WorkVo> selectWorkAll();	// 작품 전체 가져오기

	public WorkVo selectWorkOne(int id);	// 작품 1개 가져오기
	
	// ai작품 등록하기 전 api로 받은 url주소를 이미지파일로 다운받아 저장하기 (받은 url이 2시간만 사용가능해서)
	public String fileSave(String work_name, String work_img_url) throws IOException;
	
	// ai작품 등록하기 전 workVo세팅하는 전처리 작업. AiController.java 깔끔하게 하려고 만듦
	public WorkVo settingWorkVoForAi(WorkVo workVo, int artist_id, String work_img_url, String work_name, String work_content, 
			int work_price, String work_genre, String work_subject, String prompt);
	
	// 작품 등록 전 workVo set하기(AdminWorkController 깔끔하게 하려고 만듦)
	public WorkVo settingWorkVo(WorkVo workVo, String admin_id, String artist_id, MultipartFile file);
	
	public int insertWork(WorkVo workVo);	// 작품 등록

	public void updateWorkOne(WorkVo workVo);	// 작품 수정

	public void deleteWork(int id);		// 작품 삭제

	public List<WorkVo> selectWorksByArtist(int artistId);	// 해당 아티스트의 작품들 전체 리스트 가져오기

	
	//////////////////       ↓  AI 관련 ↓         /////////////////////////
	public int registerAiWork(String work_img_url, String work_name, String work_content, int work_price,
			String work_genre, String work_subject, String member_nName, HttpSession session) throws IOException;

	

	
	


	

	
	
}//AdminMemberService
