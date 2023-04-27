package com.java.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.java.vo.ArtistVo;
import com.java.vo.Cart_MemberVo;
import com.java.vo.DeliveryVo;
import com.java.vo.OptionVo;
import com.java.vo.Order_DetailVo;
import com.java.vo.Order_Detail_inquireVo;
import com.java.vo.Order_Detail_inquire_viewVo;
import com.java.vo.Order_MemberVo;
import com.java.vo.WorkReViewVo;
import com.java.vo.WorkVo;

@Mapper
public interface ShopMapper {

	
	
	//////////////////↓  Work(작품) 관련 ↓         /////////////////////////
	List<WorkVo> search(String searchWord); //search 관련
	
	int selectWorkCount(HashMap<String, Object> paramMap);  // 작품 list page 카운트하는 구문

	// painting_list.jsp 그림 작품 페이지
	List<WorkVo> selectWorkList(int startRow, int endRow, String sortType, String viewOption);
	
	List<WorkVo> selectWorkBest(int best_num); // 작품 베스트 가져오기
	
	List<WorkVo> selectAiWorks();	// index ai작품 2개 가져오기
	
	List<WorkVo> selectWorkNew();  // 작품 new 가져오기

	WorkVo selectWorkBuy(int work_id);  // 작품(구매창) 1개 가져오기
	
	List<WorkVo> selectWorkArtistAll(int artist_id);  // 작가의 작품들 가져오기
	
	
	//////////////////↓  Artist(작가) 관련 ↓      /////////////////////////
		
	ArtistVo selectArtistAll(int artist_id);  // 작가 전체 가져오기
	
	int selectArtistCount();  // 작가 list page 카운트하는 구문
	
	List<ArtistVo> selectArtistList(int startRow, int endRow);  // 작가별 작가 가져오기
	
	//////////////////////////////////////////////////////////////////////////////
	List<WorkVo> selectWorkCompare(List<Integer> compare_work_id_list); // ####작품비교#####
	//////////////////////////////////////////////////////////////////////////////
	
	//////////////////↓  order(주문) 관련 ↓         /////////////////////////

	WorkVo selectWorkOneOrder(int id);	// 작품 주문용 1개 가져오기 (order_form.jsp)

	// 회원 주문 시 회원 주문 테이블(Order_Member)에 데이터 저장
	int insertOrder_Member(int member_id, int delivery_id, String delivery_name, String delivery_phone,
			String delivery_zip, String delivery_road, String delivery_address, String delivery_request);
//	void insertOrder_Member(int member_id, int delivery_id, Order_MemberVo order_memberVo);

	

	
//	int selectOrderMemberSeq();  ????????????????????????

	// Work_Option 테이블 (작품 옵션 테이블) 에 optionVo 저장후 바로 option고유번호(id)반환받기
	int insertOption(OptionVo optionVo);
	
//	void insertOrder_Details2(Map<String, Object> paramMap);
	


	
	int selectOptionSeq();


	//////////////// 마이페이지 회원 주문조회 상세페이지 보여줄 때 join 5번 하는 대신 DB 1번 왕복하는 방식 /////////////  
	Order_Detail_inquire_viewVo selectOptionOneInquiryView(int id);


	List<OptionVo> selectOptionList(List<Integer> optionIdList);

	List<String> selectArtistName(List<Integer> workIdList);

	List<WorkVo> selectMemberWorkList(List<Integer> workIdList);

	// 장바구니 페이지 들어갈 때
	WorkVo selectShopWorkList(int work_id);
	
	
	List<ArtistVo> selectArtistOrderList(List<Integer> artistIdList);

	// painting_list.jsp에 MD-Pick 슬라이드쇼 랜덤으로 보여질 수 있게 일단 모든 작품 다 가져옴(페이징 처리 안한)
	List<WorkVo> selectWorkAll();

	List<WorkVo> selectRandomWorks(int best_num, int additionalWorksNeeded);

	

	//////////////////↓  Work_ReView(작품리뷰) 관련 ↓         /////////////////////////
		
	List<WorkReViewVo> selectWorkReView(); // index에서 작품 리뷰 가져오기
	
	List<WorkReViewVo> selectWorkReViewOne(int work_id); // painting_item에서 작품 1개의 리뷰 가져오기
	
	List<WorkReViewVo> selectWorkReViewHigh(int work_id);  // painting_item에서 작품 1개의 리뷰(최신순, 별점높은순, 별점낮은순) : 별점 높은순
	
	List<WorkReViewVo> selectWorkReViewOneLow(int work_id);  // // painting_item에서 작품 1개의 리뷰(최신순, 별점높은순, 별점낮은순) : 별점 낮은순
	
	int selectWorkReViewCount(int work_id);  // 작품에 리뷰가 있는지 확인, 작품리뷰 page 카운트 하는 구문
	
	void insertWorkReviewOne(WorkReViewVo workReViewVo);  // 작품 리뷰1개 저장
	
	Integer selectMemberWorkReviewCheck(int member_id, int work_id); // 작품 리뷰있는지 확인
	
	WorkReViewVo selectMemberWorkReViewOne(int member_id, int work_id); // member 1명의 작품리뷰1개 가져오기
	
	void updateMemberWorkReViewOne(WorkReViewVo workReViewVo);  // member 1명의 작품리뷰1개 수정하기
	
	void deleteMemberWorkReViewOne(int member_id, int work_id);  // member 1명의 작품리뷰1개 삭제하기

	





	



}
