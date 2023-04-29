package com.java.home.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.java.vo.OptionVo;
import com.java.vo.Order_Detail_inquireVo;
import com.java.vo.Order_MemberVo;
import com.java.vo.WishListVo;
import com.java.vo.WorkReViewVo;
import com.java.vo.WorkVo;

@Service
public interface MyShopService {

	///////////----------↓--------↓------ 장바구니 (PostMapping("cart")) -------------↓--------↓---------//////////
	void insertCart_Member(int member_id, int work_id_int, int option_id);	
	
	
	///////////----------↓--------↓------ 장바구니 (GetMapping("cart")) -------------↓--------↓---------//////////
	Map<String, List<Integer>> selectCart_MemberList(int member_id);	

	
	///////////----------↓--------↓------ 장바구니 작품 삭제 (RequestMapping("deleteCart")) -------------↓--------↓---------//////////
	// 장바구니에서 작품 주문 후 장바구니에 담긴 것들 삭제
	void deleteCart_member(int member_id, List<Integer> optionIdList);	
	
	
	///////////----------↓--------↓------ 마이페이지 (GetMapping("mypage")) -------------↓--------↓---------//////////
	// 회원 마이페이지 주문조회 클릭시
	List<Order_Detail_inquireVo> selectOrderDetailByMemberId(int member_id, String fr_date, String to_date);	// GetMapping("orderinquiry")에도 사용
	
	// 마이페이지 - '진행 중인 주문'의 주문상태 가져오려고.
	List<Order_MemberVo> selectOrderMemberAll(int member_id);
	
	// 마이페이지 리뷰 따로 가져오기
	List<WorkReViewVo> selectReviewAll(int member_id);
	
	
	///////////----------↓--------↓------ 주문조회, 주문목록/배송조회 (GetMapping("orderinquiry")) -------------↓--------↓---------//////////
	// 회원 마이페이지 주문조회 클릭시 총 주문 수 보여줄려고
	int selectOrder_member_count(int member_id, String fr_date, String to_date);	
	
	Map<String, Object> selectFind_Dronshipment(int id);
	
	///////////----------↓--------↓------ // 구매 상세내역 (GetMapping("orderinquiry_view")) -------------↓--------↓---------//////////
	Order_MemberVo selectOrderMemberOne_result(int order_member_id);	
	Map<String, List<Integer>> selectOrderDetail(int order_member_id_int);	
	
	
	///////////----------↓--------↓------ 주문 완료(PostMapping("order_result")) -------------↓--------↓---------//////////
	int insertDelivery();	
	int insertDelivery2();	
	int selectDeliverySeq();	
	
	// 회원 주문 시 회원 주문 테이블에 주문 정보 저장
	int insertOrder_Member(int member_id, int delivery_id, Order_MemberVo order_memberVo);	
	
	void insertOrder_Detail(int order_member_id, int work_id_int, int option_id, int total_price_int);	
	
	void insertOrder_Details(int order_member_id, List<Integer> workIdList, List<Integer> optionIdList,
			int total_price_int);
	

	///////////----------↓--------↓------ 찜리스트 관련 -------------↓--------↓---------//////////
	
	Map<String, Object> selectWishlistPage(int page, int member_id); // 찜 리스트 page 불러오기
	
	
	int selectWorkWishListCheck(String member_id, int work_id);  // 찜리스트에 작품이 있는지 확인
	
	void insertWorkWishList(String member_id, int work_id);  // 찜리스트 저장
	void deleteWorkWishList(String member_id, int work_id);	 // 찜리스트 삭제
	
	int selectWishlistCount(int member_id);	// 찜리스트에 member_id가 저장한 작품이 있는지 확인
	
	List<WishListVo> selectMypageView(int member_id);  // mypage 페이지에 보여주는 작품 가져오기
	
	void deleteWorkWishListFromMyPage(int id);  // 마이페이지에서 찜 리스트 삭제
	
	void deleteCheckBox(List<Integer> selectedItemsList);  // 찜 리스트(체크박스) 삭제
	
	void deleteAll_items(int member_id);  // 찜 리스트(전체) 삭제


	///////////----------↓--------↓------ AI 마이페이지 관련 -------------↓--------↓---------//////////
	// 마이페이지 - '내가 생성한 그림' 리스트
	Map<String, Object> selectMyAiWorkVoList(int page, String member_nName);

	// 주문 총액 계산
	int calculateOrderTotalPrice(List<OptionVo> optionVoList);

	// 장바구니 담긴 개수 가져오는 메소드
	int getCartCount(int member_id);


	


	

	


	

	

	
	
	
}
