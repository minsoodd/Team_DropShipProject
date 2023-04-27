package com.java.admin.service;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.java.mapper.AdminMapper;
import com.java.vo.AdminVo;
import com.java.vo.ArtistVo;
import com.java.vo.WorkVo;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	AdminMapper adminMapper;

	@Autowired
	WorkVo workVo;

	@Autowired
	ArtistVo artistVo;

	////////////////// ↓ AdminMember(관리자) 관련 ↓ /////////////////////////

	@Override
	public AdminVo adminMemberSelectOne(String admin_login_id, String admin_pw) {
		AdminVo adminVo = adminMapper.adminMemberSelectOne(admin_login_id, admin_pw);
		return adminVo;
	}// adminMemberSelectOne
	
	@Override
	public void insertMember(AdminVo adminMemberVo) {
		adminMapper.insertMember(adminMemberVo);
	}// insertMember

	
	@Override
	public Map<String, Object> selectAdminList(int page) {
		HashMap<String, Object> map = pageMethod(page);

		int startRow = (int) map.get("startRow");
		int endRow = (int) map.get("endRow");

		// 관리자 객체들 담기는 list
		List<AdminVo> list = adminMapper.selectAdminList(startRow, endRow);

		map.put("list", list);
		map.put("page", page);
		map.put("listCount", map.get("listCount"));
		map.put("maxPage", map.get("maxPage"));
		map.put("startPage", map.get("startPage"));
		map.put("endPage", map.get("endPage"));

		return map;
	}// selectAdminList

	public HashMap<String, Object> pageMethod(int page) {
		HashMap<String, Object> map = new HashMap<>();

		int listCount = adminMapper.selectCount();
		int rowPerPage = 10; // 한 페이지당 게시물 갯수
		int pageList = 5; // 페이지 넘버 표시할 갯수 1-2-3-4-5 또는 1-2-3 또는 1-2-3-4-5-6-7-8-9-10 이런 식
		int maxPage = (int) (Math.ceil((double) listCount / rowPerPage));
		int startPage = ((page - 1) / pageList) * pageList + 1; // pageList가 5번까지면 1~5를 1로 빼서 5로 나누면 0이고 0에 5를 곱하면 0,
																// 거기에 1을 더하면 1페이지에 다 표시됨
		int endPage = maxPage;
		if (endPage > startPage + pageList - 1) {
			endPage = startPage + pageList - 1;
		}

		int startRow = (page - 1) * rowPerPage + 1;
		int endRow = startRow + rowPerPage - 1;

		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);

		return map;
	}// pageMethod

	@Override
	public AdminVo selectOne(int id) {
		AdminVo adminMemberVo = adminMapper.selectOne(id);
		return adminMemberVo;
	}// selectOne
	
	@Override
	public AdminVo selectOnePW(String admin_login_id) {
		AdminVo adminMemberVo = adminMapper.selectOnePW(admin_login_id);
		return adminMemberVo;
	}//selectOnePW

	@Override
	public void updateAdminData(AdminVo adminMemberVo) {
		adminMapper.updateAdminData(adminMemberVo);
	}// updateAdminData

	@Override
	public void updateAdminPW(AdminVo adminMemberVo) {
		adminMapper.updateAdminPW(adminMemberVo);
	}// updateAdminPW

	@Override
	public void admin_memberDelete(String admin_login_id) {
		adminMapper.admin_memberDelete(admin_login_id);
	}// memberDelete

	@Override
	public int adminMemberCheckId(String admin_login_id) {
		int result = adminMapper.adminMemberCheckId(admin_login_id);
		return result;
	}// adminMemberCheckId

	//////////////// ↓ Artist(작가) 관련 ↓ /////////////////////////

	// 아티스트 전체 리스트 가져오기(각 작가의 등록된 작품들의 리스트도 가져옴)
	@Override
	public List<ArtistVo> selectArtistAll() {
		// 1. 아티스트 목록만 가져오기
		List<ArtistVo> artistList = adminMapper.selectArtistAll();
		// 2. 각 아티스트의 등록된 작품들의 리스트 가져오기
		for (ArtistVo artistVo : artistList) {
			List<WorkVo> workList = selectWorksByArtist(artistVo.getId());
			artistVo.setWorkList(workList);
		}
		return artistList;
	}

	// 아티스트 1명 가져오기
	@Override
	public ArtistVo selectArtistOne(int id) {
		artistVo = adminMapper.selectArtistOne(id);
		return artistVo;
	}

	// 아티스트 등록 전 artistVo 세팅
	@Override
	public ArtistVo settingArtistVo(ArtistVo artistVo, MultipartFile file) {
		if (!file.isEmpty()) {
			String originFileName = file.getOriginalFilename(); // 원본 파일명 받기
			long time = System.currentTimeMillis(); // 시간 밀리초 단위로
			// a.jpg -> 123524123232_a.jpg 로 저장
			String uploadFileName = String.format("%d_%s", time, originFileName);
			String fileSaveUrl = System.getProperty("user.dir") + "/src/main/resources/static/admin/img/artist/";
			File f = new File(fileSaveUrl + uploadFileName);
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
			// 변경된 파일이름을 artistVo 객체에 저장
			artistVo.setArtist_img_url(uploadFileName);
		} // if.
		return artistVo;
	}
	
	// 아티스트 등록
	@Override
	public int insertArtist(ArtistVo artistVo) {
		adminMapper.insertArtist(artistVo);
		return artistVo.getId();	// artistVo의 id값 리턴받음
	}

	// 아티스트 수정
	@Override
	public void updateArtistOne(ArtistVo artistVo) {
		adminMapper.updateArtistOne(artistVo);
	}

	// 아티스트 삭제
	@Override
	public void deleteArtist(int id) {
		adminMapper.deleteArtist(id);
	}

	// (작가미상 작품 만들기 위해) 익명아티스트 생성
	@Override
	public void insertAnonymousArtist(ArtistVo artistVo) {
		// 익명 아티스트 insert
		adminMapper.insertAnonymousArtist(artistVo);
	}

	// 작품 추가 전 아티스트 고유번호 확인
	@Override
	public Integer checkArtistId(String artist_name) {
		Integer cnt = adminMapper.checkArtistId(artist_name);
		return cnt;
	}

	// ARTIST_SEQ의 CURRVAL 가져오기 (작가미상으로 작품 등록시 익명아티스트 생성 후 익명아티스트의 고유번호 ID 가져오기 위해)
	@Override
	public String selectCurrval() {
		String current_id = adminMapper.selectCurrval();
		return current_id;
	}

	////////////////// ↓ Work(작품) 관련 ↓ /////////////////////////

	// 작품 전체 가져오기
	@Override
	public List<WorkVo> selectWorkAll() {
		List<WorkVo> list = new ArrayList<WorkVo>();
		list = adminMapper.selectWorkAll();
		return list;
	}

	// 작품 1개 가져오기
	@Override
	public WorkVo selectWorkOne(int id) {
		workVo = adminMapper.selectWorkOne(id);
		return workVo;
	}

	// 작품 등록 전 workVo 세팅
	@Override
	public WorkVo settingWorkVo(WorkVo workVo, String admin_id, String artist_id, MultipartFile file) {
		if (!file.isEmpty()) {
			String originFileName = file.getOriginalFilename(); // 원본 파일명 받기
			long time = System.currentTimeMillis(); // 시간 밀리초 단위로
			// a.jpg -> 123524123232_a.jpg 로 저장
			String uploadFileName = String.format("%d_%s", time, originFileName);
			String fileSaveUrl = System.getProperty("user.dir") + "/src/main/resources/static/admin/img/work/";
			File f = new File(fileSaveUrl + uploadFileName);
			try {
				file.transferTo(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
			// workVo 객체에 파일url, admin_id, artist_id 저장
			workVo.setWork_img_url(uploadFileName);
			workVo.setAdmin_id(Integer.parseInt(admin_id));
			workVo.setArtist_id(Integer.parseInt(artist_id));
		} // if.
		return workVo;
	}
	
	// 작품 등록
	@Override
	public int insertWork(WorkVo workVo) {
		int successOrFail = adminMapper.insertWork(workVo);	// insert성공하면 1, 실패하면 0.
		return successOrFail;	// 얘는 ai생성작품이 잘 등록됐는지 ajax로 확인할 때만 사용. admin에서 작품등록할 땐 사용안함
	}

	// 작품 수정
	@Override
	public void updateWorkOne(WorkVo workVo) {
		adminMapper.updateWorkOne(workVo);
	}

	// 작품 삭제
	@Override
	public void deleteWork(int id) {
		adminMapper.deleteWork(id);
	}

	// 각 작가의 등록된 작품들의 리스트 가져오기
	public List<WorkVo> selectWorksByArtist(int artistId) {
		return adminMapper.selectWorksByArtist(artistId);
	}

	
	///////////////////↓↓//////////////////// ↓     AI 관련      ↓ ////////////////////↓↓///////////////////
	
	// ai 작품 등록
	@Override
	public int registerAiWork(String work_img_url, String work_name, String work_content, int work_price,
			String work_genre, String work_subject, String member_nName, HttpSession session) throws IOException {
		
		// 1. 생성된 이미지 다운로드(api로 받아온 url은 2시간만 유효해서 직접 다운받아놔야 함)
		work_img_url = fileSave(work_name, work_img_url);
		
		// 2. 회원을 아티스트로 등록(아티스트 테이블에 회원 이름 집어넣고 -> 아티스트 고유번호 부여)
		// 2-1. 이미 해당 회원이 ai작품을 한번이라도 만들었다면, 즉 이미 artist_id를 부여받은 회원이라면 그 artist_id를 가져옴
		Integer artist_id = selectArtistIdForAi(member_nName);  // 리턴 타입 int가 아니라 Integer로 해야. 그래야 아래 마이바티스 if조건문 괄호 안에서 int == null 이게 가능함

		// 2-2. 만약 해당 회원이 '처음' ai작품을 만드는 것이라면, 즉 artist_id를 부여받은 적이 없는 회원이라면
		if(artist_id == null) {	  
			// 회원 닉네임이 들어간 작가객체 만들고 artist_id 받아오기
			artistVo = settingArtistVoForAi(artistVo, member_nName);
			artist_id = insertArtist(artistVo);
		} 
		
		// 3. 받은 아티스트 고유번호로 작품 등록하기
		String prompt = (String) session.getAttribute("prompt");	// 작품 생성하는데 쓴 프롬프트를 세션으로 저장해두었음.
		workVo = settingWorkVoForAi(workVo, artist_id, work_img_url, work_name, work_content, work_price, work_genre, work_subject, prompt);
		int successOrFail = insertWork(workVo);
		
		return successOrFail;	// 0-실패 1-성공 (ajax로 보내서 프론트에서 alert띄울 목적)
	}
	
	
	// ai작품 등록 전 파일 다운로드 
	@Override
	public String fileSave(String work_name, String work_img_url) throws IOException {
		String fileSaveUrl = System.getProperty("user.dir") + "/src/main/resources/static/admin/img/work/";
		String fileName = work_name.replace(" ", "_"); // 사용자가 입력한 작품이름을 파일이름으로. 공백 있으면 _(언더바)로 교체. 교체하는 이유 : <img src=> 는 HTML태그에 바로 넣는 거라 여백이 있어도 자동으로 encoding 해주지만 <div의 background-image속성의 속성값으로 들어갈 땐 'css'라서 자동으로 url 빈칸을 encode해주지 않아서 제대로 보여주지 못한다고 함)
		long time = System.currentTimeMillis(); 
		String uploadFileName = String.format("%d_%s", time, fileName + ".png");

		// 파일 다운로드
		URL url = new URL(work_img_url);
		InputStream inputStream = url.openStream();
		Files.copy(inputStream, Paths.get(fileSaveUrl + uploadFileName), StandardCopyOption.REPLACE_EXISTING);
		
		return uploadFileName;
	}

	// ai생성그림 등록 전에 해당 회원 이미 artist_id 부여받았는지 확인용. 받았으면 artist_id 리턴
	@Override
	public Integer selectArtistIdForAi(String member_nName) {
		Integer artist_id = adminMapper.selectArtistIdForAi(member_nName);
		return artist_id;
	}
	
	// ai생성그림 등록 전에 작가객체 만들어져야. 작가만들기 전 AiController.java 코드 줄이려고 만듦
	@Override
	public ArtistVo settingArtistVoForAi(ArtistVo artistVo, String member_nName) {
		artistVo.setArtist_korean_name(member_nName);
		artistVo.setArtist_english_name("회원 작품");
		artistVo.setArtist_img_url("회원 작품");
		artistVo.setArtist_country("회원 작품");
		artistVo.setArtist_birth_death("회원 작품");
		artistVo.setArtist_main("회원 작품");
		artistVo.setArtist_content("회원 작품");
		return artistVo;
	}
	
	// ai생성그림 등록 전 workVo세팅하는 전처리 작업. AiController.java 깔끔하게 하려고 만듦
	@Override
	public WorkVo settingWorkVoForAi(WorkVo workVo, int artist_id, String work_img_url, String work_name, String work_content, int work_price,
			String work_genre, String work_subject, String prompt) {
		workVo.setWork_name(work_name); workVo.setArtist_id(artist_id); workVo.setWork_genre(work_genre); workVo.setWork_subject(work_subject);
		workVo.setWork_img_url(work_img_url); workVo.setWork_content(work_content); workVo.setWork_sale(0.00); workVo.setWork_isBest(0);
		workVo.setWork_price(work_price); workVo.setWork_display_position(""); workVo.setWork_hit(0); workVo.setAdmin_id(1); 
		workVo.setWork_available(1); workVo.setWork_is_ai(1); workVo.setWork_ai_prompt(prompt);
		return workVo;
	}

	
	
	

}// AdminMemberServiceImpl
