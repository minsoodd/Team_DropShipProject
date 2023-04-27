package com.java.home.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.ShopMapper;
import com.java.vo.ArtistVo;
import com.java.vo.OptionVo;
import com.java.vo.Order_Detail_inquire_viewVo;
import com.java.vo.Order_MemberVo;
import com.java.vo.WorkReViewVo;
import com.java.vo.WorkVo;

@Service
public class ShopServiceImpl implements ShopService {

	@Autowired
	ShopMapper shopMapper;

	@Autowired
	WorkVo workVo;

	@Autowired
	ArtistVo artistVo;
	
	@Autowired
	WorkReViewVo workReviewVo;

	@Autowired
	Order_MemberVo order_memberVo;

	@Autowired
	Order_Detail_inquire_viewVo order_Detail_inquire_viewVo;

	//////////////////////// ↓ Work(작품) 관련 ↓ ///////////////////////////////
	// 작품 그림작품과 page 가져오기
	@Override
	public Map<String, Object> selectWorkList(int page, String sortType, String viewOption, int rowPerPage) {
		HashMap<String, Object> sortedWorkMap = pageMethodWork(page, sortType, viewOption, rowPerPage);
		List<WorkVo> sortedWorkList = shopMapper.selectWorkList((int) sortedWorkMap.get("startRow"), (int) sortedWorkMap.get("endRow"), sortType, viewOption);
		
		// MD-PICK 자리에 작품 랜덤으로 보여지게 할 목적
		List<WorkVo> allWorkVoList = shopMapper.selectWorkAll(); // -> 일단은 전체 workVo들을 가져왔지만 작품개수가 많아지면 매우 비효율적일 것. workId들만 가져오는게 나을 듯. 시간관계상 그렇게 안함
		Collections.shuffle(allWorkVoList);	// 전체 작품들을 섞어
		List<WorkVo> randomWorkVoList = allWorkVoList.subList(0, 5); // 그 중 0~4번째 작품만 가져와
		
		sortedWorkMap.put("randomWorkVoList", randomWorkVoList);
		sortedWorkMap.put("sortedWorkList", sortedWorkList);
		return sortedWorkMap;
	}
	
	
	// 작품 페이징 메소드
	private HashMap<String, Object> pageMethodWork(int page, String sortType, String viewOption, int rowPerPage) { 
	    HashMap<String, Object> map = new HashMap<>();
	    HashMap<String, Object> paramMap = new HashMap<>();
	    paramMap.put("sortType", sortType);
	    paramMap.put("viewOption", viewOption);

	    int listCount = shopMapper.selectWorkCount(paramMap); // 작품 총 갯수
//		int rowPerPage = 6; // 1페이지당 작품 갯수
		int pageList = 5; // 하단넘버링 갯수
		int maxPage = (int) (Math.ceil((double) listCount / rowPerPage)); // 최대페이지(하단넘버링 마지막번호)
		int startPage = ((page - 1) / pageList) * pageList + 1; // 하단넘버링1번째(현재보여지는 페이지에서)
		int endPage = maxPage; // 하단넘버링마지막(현재보여지는 페이지에서)
		if (endPage > startPage + pageList - 1) {
			endPage = startPage + pageList - 1;
		}
		int startRow = (page - 1) * rowPerPage + 1; // 게시글 시작부분(현재 보여지는 페이지에서)
		int endRow = startRow + rowPerPage - 1; // 게시글 끝부분(현재 보여지는 페이지에서)

		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);
		map.put("page", page);

		return map;
	}

	// 베스트 작품 가져오기(판매량 높은)
	@Override
	public List<WorkVo> selectWorkBest(int best_num) {
		List<WorkVo> bestWorkList = new ArrayList<WorkVo>();
	    bestWorkList = shopMapper.selectWorkBest(best_num);

	    int additionalWorksNeeded = best_num - bestWorkList.size();
	    if (additionalWorksNeeded > 0) {	// 판매된 작품이 6개보다 적으면
	        List<WorkVo> randomWorkVoList = shopMapper.selectRandomWorks(best_num, additionalWorksNeeded);
	        bestWorkList.addAll(randomWorkVoList);
	    }
	    return bestWorkList;
	}

	// 작품 new 가져오기
	@Override
	public List<WorkVo> selectWorkNew() {
		List<WorkVo> list = new ArrayList<WorkVo>();
		list = shopMapper.selectWorkNew();
		return list;
	}

	// ai 생성작품 랜덤으로 가져오기
	@Override
	public List<WorkVo> selectAiWorks() {
		List<WorkVo> aiWorkList = new ArrayList<WorkVo>();
		aiWorkList = shopMapper.selectAiWorks();
		return aiWorkList;
	}
	
	
	// 작품(구매창) 1개 가져오기
	@Override
	public WorkVo selectWorkBuy(int work_id) {
		workVo = shopMapper.selectWorkBuy(work_id);
		return workVo;
	}

	// 주문페이지용 작품 1개 가져오기(전체컬럼 아니고 일부만 가져옴)
	@Override
	public WorkVo selectWorkOneOrder(int id) {
		workVo = shopMapper.selectWorkOneOrder(id);
		return workVo;
	}

	// 작가의 작품들 가져오기
	@Override
	public List<WorkVo> selectWorkArtistAll(int artist_id) {
		List<WorkVo> list = new ArrayList<WorkVo>();
		list = shopMapper.selectWorkArtistAll(artist_id);
		return list;
	}
	
	/////////////////////////////////////////////////////////////////////////////
	//작품 비교
	@Override
	public List<WorkVo> selectWorkCompare(List<Integer> compare_work_id_list) {
	List<WorkVo> compareWorkVoList = new ArrayList<WorkVo>();
	compareWorkVoList = shopMapper.selectWorkCompare(compare_work_id_list);
	return compareWorkVoList;
	}
	/////////////////////////////////////////////////////////////////////////////

	@Override //search 관련
	public List<WorkVo> search(String searchWord) {
		List<WorkVo> list = shopMapper.search(searchWord);
		return list;
	}
	
	
	////////////////////////↓ Aritist(작가) 관련 ↓ ///////////////////////////////

	// 작가 전체 가져오기
	@Override
	public ArtistVo selectArtistAll(int artist_id) {
		artistVo = shopMapper.selectArtistAll(artist_id);
		return artistVo;
	}

	// 작가별 작가와 page 가져오기
	@Override
	public Map<String, Object> selectArtistList(int page) {
		HashMap<String, Object> map = pageMethodArtist(page);

		int startRow = (int) map.get("startRow");
		int endRow = (int) map.get("endRow");

		List<ArtistVo> list = shopMapper.selectArtistList(startRow, endRow);
		map.put("list", list);
		map.put("page", page);
		map.put("listCount", map.get("listCount"));
		map.put("maxPage", map.get("maxPage"));
		map.put("startPage", map.get("startPage"));
		map.put("endPage", map.get("endPage"));

		return map;
	}

	private HashMap<String, Object> pageMethodArtist(int page) { // 작가 페이징 메소드
		HashMap<String, Object> map = new HashMap<>();

		int listCount = shopMapper.selectArtistCount(); // 작가 총 갯수
		int rowPerPage = 6; // 1페이지당 작품 갯수
		int pageList = 5; // 하단넘버링 갯수
		int maxPage = (int) (Math.ceil((double) listCount / rowPerPage)); // 최대페이지(하단넘버링 마지막번호)
		int startPage = ((page - 1) / pageList) * pageList + 1; // 하단넘버링1번째(현재보여지는 페이지에서)
		int endPage = maxPage; // 하단넘버링마지막(현재보여지는 페이지에서)
		if (endPage > startPage + pageList - 1) {
			endPage = startPage + pageList - 1;
		}
		int startRow = (page - 1) * rowPerPage + 1; // 게시글 시작부분(현재 보여지는 페이지에서)
		int endRow = startRow + rowPerPage - 1; // 게시글 끝부분(현재 보여지는 페이지에서)

		map.put("listCount", listCount);
		map.put("maxPage", maxPage);
		map.put("startPage", startPage);
		map.put("endPage", endPage);
		map.put("startRow", startRow);
		map.put("endRow", endRow);

		return map;
	}

	
	////////////////////////↓ order(주문) 관련 ↓ ///////////////////////////////
	

	

//	@Override
//	public int selectOrderMemberSeq() {    //?????????????????????????
//		int order_member_id = shopMapper.selectOrderMemberSeq();
//		return order_member_id;
//	}

	

	
	
	@Override
	public int insertOption(OptionVo optionVo) {
		int successOrFail = shopMapper.insertOption(optionVo); 
		return optionVo.getId();	
	}

	@Override
	public int selectOptionSeq() {
		int option_id = shopMapper.selectOptionSeq();
		return option_id;
	}

	
	
	@Override
	public Order_Detail_inquire_viewVo selectOptionOneInquiryView(int order_member_id_int) {
		order_Detail_inquire_viewVo = shopMapper.selectOptionOneInquiryView(order_member_id_int);
		return order_Detail_inquire_viewVo;
	}

	

	// 회원 주문 상세용 option객체들 가져오기
	@Override
	public List<OptionVo> selectOptionList(List<Integer> optionIdList) {
		List<OptionVo> optionVoList = shopMapper.selectOptionList(optionIdList);
		return optionVoList; // 주문 상세에 대한 option객체들 담김
	}

	// 회원 주문 상세용 work객체들 가져오기 + artist 객체들 가져오기
	@Override
	public Map<String, List<? extends Object>> selectMemberWorkList(List<Integer> workIdList) {
		
		List<WorkVo> workVoList = new ArrayList<>();
		for(int work_id : workIdList) {
			workVoList.add(shopMapper.selectShopWorkList(work_id));
		}
		
		// 작가 한글이름도 order_inquiry_view.jsp에 필요. 근데 작가는 작품(work)이랑만 연결되어있음.
		// 따라서 work를 통해 artist를 조회할 수 밖에 없고,
		// artist_korean_name을 알려면 artist테이블의 id가 필요.
		List<Integer> artistIdList = new ArrayList<>(); // artist_id들을 담는 리스트 선언

		for (WorkVo workVo : workVoList) {
			artistIdList.add(workVo.getArtist_id()); // artistIdList에 workVo에 있는 artist_id들을 삽입
		}

		// artist_id들이 담긴 list를 사용해서 artistVo들을 가져와서 artistVoList에 담음
		List<ArtistVo> artistVoList = shopMapper.selectArtistOrderList(artistIdList);

		Map<String, List<? extends Object>> workArtistVoMap = new HashMap<>();

		workArtistVoMap.put("workVoList", workVoList); // 결국 map에 작품(work) 객체들, 작가(artist) 객체들을 담아서 보냄
		workArtistVoMap.put("artistVoList", artistVoList);

		return workArtistVoMap; // 주문 상세에 대한 work, artist 객체들 담김
	}

	@Override
	public int selectOrderMemberSeq() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void insertOrder_Details(int order_member_id, List<Integer> workIdList, List<Integer> optionIdList,
			int total_price_int) {
		// TODO Auto-generated method stub
		
	}

	
	////////////////////////↓ Work_Review(작품 리뷰) 관련 ↓ ///////////////////////////////
		
	// index에서 작품 리뷰 가져오기
	@Override
	public List<WorkReViewVo> selectWorkReView() {
	List<WorkReViewVo> reviewList = new ArrayList<WorkReViewVo>();
	reviewList = shopMapper.selectWorkReView();
	return reviewList;
	}
	
	
	// 작품에 리뷰가 있는지 확인
	@Override
	public int selectWorkReViewCount(int work_id) {
	int workReViewList = shopMapper.selectWorkReViewCount(work_id);
	return workReViewList;
	}
	
	// painting_item에서 작품1개 리뷰 가져오기
	@Override
	public List<WorkReViewVo> selectWorkReViewOne(int work_id) {
	List<WorkReViewVo> workReViewList = shopMapper.selectWorkReViewOne(work_id);
	return workReViewList;
	}
	
	// painting_item에서 작품 1개의 리뷰(최신순, 별점높은순, 별점낮은순)
	@Override
	public List<WorkReViewVo> selectWorkReViewOne(int work_id, String sort_id) {
	List<WorkReViewVo> workReViewList = null;
	switch (sort_id) {
	
	case "newest" :  // 최신순
	workReViewList = shopMapper.selectWorkReViewOne(work_id);
	break;
	
	case "highest" :  // 별점 높은순
	workReViewList = shopMapper.selectWorkReViewHigh(work_id);
	break;
	
	case "lowest" :  // 별점 낮은순
	workReViewList = shopMapper.selectWorkReViewOneLow(work_id);
	break;
	}
	System.out.println("ServiceImpl : "+workReViewList);
	return workReViewList;
	}
	
	// 작품리뷰 1개 저장
	@Override
	public void insertWorkReviewOne(WorkReViewVo workReViewVo) {
		shopMapper.insertWorkReviewOne(workReViewVo);
	}
	
	// 작품 리뷰있는지 확인
	@Override
	public List<Integer> selectMemberWorkReviewCheck(int member_id, List<Integer> work_idList) {
		List<Integer> workReviewVoCheckList = new ArrayList<>();  
		
		for(int work_id : work_idList) {  
			workReviewVoCheckList.add(shopMapper.selectMemberWorkReviewCheck(member_id, work_id));
		}
		return workReviewVoCheckList;
	}
	
	
	// member 1명의 작품리뷰1개 가져오기
	@Override
	public WorkReViewVo selectMemberWorkReViewOne(int member_id, int work_id) {
	WorkReViewVo workReViewVo = shopMapper.selectMemberWorkReViewOne(member_id, work_id);
	return workReViewVo;
	}
	
	// member 1명의 작품리뷰1개 수정하기
	@Override
	public void updateMemberWorkReViewOne(WorkReViewVo workReViewVo) {
	shopMapper.updateMemberWorkReViewOne(workReViewVo);
	
	}
	
	// member 1명의 작품리뷰1개 삭제하기
	@Override
	public void deleteMemberWorkReViewOne(int member_id, int work_id) {
	shopMapper.deleteMemberWorkReViewOne(member_id, work_id);
	
	}
	

	

	

	

	

	

	

}
