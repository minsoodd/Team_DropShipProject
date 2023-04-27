package com.java.home.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.java.mapper.AdminMapper;
import com.java.mapper.MyShopMapper;
import com.java.vo.Cart_MemberVo;
import com.java.vo.OptionVo;
import com.java.vo.OptionVo;
import com.java.vo.Order_DetailVo;
import com.java.vo.Order_Detail_inquireVo;
import com.java.vo.Order_MemberVo;
import com.java.vo.WishListVo;
import com.java.vo.WorkVo;

@Service
public class MyShopServiceImpl implements MyShopService{

	@Autowired
	MyShopMapper myshopMapper;
	
	@Autowired
	AdminMapper adminMapper;
	
	@Autowired
	WorkVo workVo;
	
	WishListVo wishListVo;
	
	@Autowired
	Order_MemberVo order_memberVo;
	
	
	///////////----------↓--------↓------ order(주문) 관련 ↓ -------------↓--------↓---------//////////
	// 회원 주문 시 회원 주문 테이블에 주문 정보 저장
	@Override
	public int insertOrder_Member(int member_id, int delivery_id, Order_MemberVo order_memberVo) {    //ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
		int successOrFail = myshopMapper.insertOrder_Member2(member_id, delivery_id, order_memberVo);	// 왜 order_memberVo객체 자체론 안되지? 안돼서 getter로 일일이 할 수밖에..
		System.out.println("insertOrder_Member selectKey 성공여부 :  " + successOrFail); // selectKey의 결과로는 0(실패)또는 1(성공)만 나옴
		return order_memberVo.getId();	// selectKey 실행되면 원하는 결과물은 Vo의 인스턴스 변수에 set됨. 따라서 애초에 Vo를 반드시 전달해줘야.
	}

	@Override
	public int insertDelivery() {		//ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
		int delivery_id = myshopMapper.insertDelivery();
		return delivery_id;
	}

	@Override
	public int insertDelivery2() {	//ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
		int delivery_id2 = myshopMapper.insertDelivery2();
		return delivery_id2;
	}
	
	@Override
	public int selectDeliverySeq() {	//ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
		int delivery_id = myshopMapper.selectDeliverySeq();
		return delivery_id;
	}
	
	@Override
	public void insertOrder_Detail(int order_member_id, int work_id_int, int option_id, int total_price_int) {	//ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
		myshopMapper.insertOrder_Detail(order_member_id, work_id_int, option_id, total_price_int);
	}
	
	@Override
	public Order_MemberVo selectOrderMemberOne_result(int order_member_id) {	//ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
		order_memberVo = myshopMapper.selectOrderMemberOne_result(order_member_id);
		return order_memberVo;
	}

	// 회원 마이페이지 주문조회 클릭시
	@Override
	public List<Order_Detail_inquireVo> selectOrderDetailByMemberId(int member_id, String fr_date, String to_date) {	//ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
		List<Order_Detail_inquireVo> order_detail_list = myshopMapper.selectOrderDetailByMemberId(member_id, fr_date, to_date);
		return order_detail_list;
	}
	
	
	// 마이페이지 - '진행 중인 주문'의 주문상태 가져오려고.
	@Override
	public List<Order_MemberVo> selectOrderMemberAll(int member_id) {
		List<Order_MemberVo> order_MemberVoList = myshopMapper.selectOrderMemberAll(member_id);
		return order_MemberVoList;
	}
	
	// 마이페이지 - 리뷰 별점(review_rate) 따로 가져오려고.
	@Override
	public List<Integer> selectReviewRateAll(int member_id) {
		List<Integer> review_rate_list = new ArrayList<>();
		review_rate_list = myshopMapper.selectReviewRateAll(member_id);
		return review_rate_list;
	}
	
	
	// 회원 마이페이지 주문조회 클릭시 총 주문 수 보여줄려고
	@Override
	public int selectOrder_member_count(int member_id, String fr_date, String to_date) {	//ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
		int order_member_count = myshopMapper.selectOrder_member_count(member_id, fr_date, to_date);
		return order_member_count;
	}
	
	
	// 작품상세페이지 or 장바구니에서 주문할 때 주문상세 DB에 저장
	@Override
	public void insertOrder_Details(int order_member_id, List<Integer> workIdList, List<Integer> optionIdList,	//ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
			int total_price_int) {
		myshopMapper.insertOrder_Details(order_member_id, workIdList, optionIdList, total_price_int);
	}
	
	
	
	// 구매상세 내역 조회시 work_id들이 담긴 리스트와 option_id들이 담긴 리스트를 저장한 map을 리턴받는 메소드. ->
	// workVo와 optionVo들이 필요하기 때문.
	@Override
	public Map<String, List<Integer>> selectOrderDetail(int order_member_id) {	//ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
		// 회원 주문 상세 객체 리스트를 받아옴. 회원 주문 고유번호 하나에 여러 주문 상세 값이 있을 수 있으니까 list로 받아와야.
		// 회원 주문 상세에선 딱히 사용할 게 없음. 다만 나중에 workVo와 optionVo들이 결국 필요하기 때문에
		// 그 둘을 가져올 수 있는 work_id와 option_id만 order_DetailVo리스트에 담기게 됨..
		List<Order_DetailVo> Order_DetailVoList = myshopMapper.selectOrderDetail(order_member_id); // 얘는 결과물이 아니고 중간에 사용할
																									// 용도

		List<Integer> workIdList = new ArrayList();
		List<Integer> optionIdList = new ArrayList();

		Map<String, List<Integer>> map = new HashMap<>();

		for (Order_DetailVo order_DetailVo : Order_DetailVoList) {
			workIdList.add(order_DetailVo.getWork_id()); // workID를 담는 리스트에다가 아까 받아온 order_DetailVo(회원주문객체)에 담긴 work_id를
															// 담음.
			optionIdList.add(order_DetailVo.getOption_id()); // optionId를 담는 리스트에다가 artist_id들을 담음
		}

		map.put("workIdList", workIdList);
		map.put("optionIdList", optionIdList);
		return map;
	}
	
	@Override
	public Map<String, Object> selectFind_Dronshipment(int id) {
		Map<String, Object> map = new HashMap<>();
		Order_MemberVo order_memberVo = myshopMapper.selectFind_Dronshipment(id);
		
		map.put("order_memberVo", order_memberVo);
		return map;
	}
	
	///////////----------↓--------↓------ cart(장바구니) 관련 ↓ -------------↓--------↓---------//////////
	
	@Override
	public void insertCart_Member(int member_id, int work_id_int, int option_id) {  
		myshopMapper.insertCart_Member(member_id, work_id_int, option_id);
	}

	@Override
	public Map<String, List<Integer>> selectCart_MemberList(int member_id) {	
		List<Cart_MemberVo> cart_MemberVoList = myshopMapper.selectCart_MemberList(member_id);
		
		List<Integer> workIdList = new ArrayList<>();
		List<Integer> optionIdList = new ArrayList<>();
		Map<String, List<Integer>> map = new HashMap<>();
		
		for(Cart_MemberVo cart_MemberVo : cart_MemberVoList) {
			workIdList.add(cart_MemberVo.getWork_id());
			optionIdList.add(cart_MemberVo.getOption_id());
		}
		map.put("workIdList" , workIdList);
		map.put("optionIdList" , optionIdList);
		
		return map;
	}

	@Override
	public void deleteCart_member(int member_id, List<Integer> optionIdList) {	//ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ
		myshopMapper.deleteCart_member(member_id, optionIdList);
		
	}
	
	@Override
	public int calculateOrderTotalPrice(List<OptionVo> optionVoList) {
	    int order_total_price = 0;
	    for (OptionVo optionVo : optionVoList) {
	        order_total_price += optionVo.getOption_selected_price() * optionVo.getOption_quantity();
	    }
	    return order_total_price;
	}
	
	@Override
	public int getCartCount(int member_id) {
	    Map<String, List<Integer>> cart_MemberMap = selectCart_MemberList(member_id);
	    return cart_MemberMap.get("optionIdList").size();
	}
	
	
	///////////----------↓--------↓------ 찜리스트 관련ㅋㅋ -------------↓--------↓---------//////////
	// 찜리스트 page 가져오기
	@Override
	public Map<String, Object> selectWishlistPage(int page, int member_id) {
		String tableName = "wishlist";
		String columnName = "member_id";
		HashMap<String, Object> wishListPageMap = pageMethodWishList(page, member_id, tableName, columnName);
		
		int startRow = (int) wishListPageMap.get("startRow");
		int endRow = (int) wishListPageMap.get("endRow");
		
		List<WishListVo> wishListPageList = myshopMapper.selectWishlistpage(startRow, endRow, member_id);
		wishListPageMap.put("member_id", member_id);
		wishListPageMap.put("wishListPageList", wishListPageList);
		wishListPageMap.put("page", page);
		wishListPageMap.put("listCount", wishListPageMap.get("listCount"));
		wishListPageMap.put("maxPage", wishListPageMap.get("maxPage"));
		wishListPageMap.put("startPage", wishListPageMap.get("startPage"));
		wishListPageMap.put("endPage", wishListPageMap.get("endPage"));
		
		
		return wishListPageMap;
	}
	
	private HashMap<String, Object> pageMethodWishList(int page, int member_id, String tableName, String columnName) {  // 찜리스트 페이지 메소드
		HashMap<String, Object> map = new HashMap<>();
		int listCount = myshopMapper.selectWishListCount(tableName, columnName, member_id); // 찜 리스트 총 갯수	// * 페이징 때문에 총 개수 가져오는 거 자주쓰이는 거 같아서 재사용 해보려고 이렇게 고쳐봄 (승택)
		int rowPerPage = 3; // 한페이지당 찜 리스트 갯수
		int pageList = 5;  // 하단넘버링 갯수
		int maxPage = (int)(Math.ceil((double) listCount / rowPerPage)); // 최대페이지(하단넘버링 마지막번호)
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

	// 찜리스트에 작품이 있는지 확인 
	@Override
	public int selectWorkWishListCheck(String member_id, int work_id) {
		int list = myshopMapper.selectWorkWishListCheck(member_id, work_id);
		return list;
	}
	
	// 찜리스트에 저장
	@Override
	public void insertWorkWishList(String member_id, int work_id) {
		myshopMapper.insertWorkWishList(member_id, work_id);
		
	}
	
	// 찜리스트에 member_id가 저장한 작품이 있는지 확인
	@Override
	public int selectWishlistCount(int member_id) {
		int wishListCount = myshopMapper.selectWishlistCount(member_id);		
		return wishListCount;
	}

	// mypage 페이지에 보여주는 작품 찜리스트 가져오기
	@Override
	public List<WishListVo> selectMypageView(int member_id) {
		List<WishListVo> list = new ArrayList<WishListVo>(member_id);
		list = myshopMapper.selectMypageView(member_id);
		return list;
	}
	
	
	// 찜 리스트 삭제
	@Override
	public void deleteWorkWishList(int id) {
		myshopMapper.deleteWorkWishList(id);
		
	}
	
	// 찜 리스트(체크박스) 삭제
	@Override
	public void deleteCheckBox(List<Integer> selectedItemsList) {
		myshopMapper.deleteCheckBox(selectedItemsList);
		
	}
	
	// 찜 리스트(전체) 삭제
	@Override
	public void deleteAll_items(int member_id) {
		myshopMapper.deleteAll_items(member_id);
		
	}

    ///////////----------↓--------↓------ AI 관련 -------------↓--------↓---------//////////

	// 마이페이지 - '내가 생성한 그림' 리스트
	@Override
	public Map<String, Object> selectMyAiWorkVoList(int page, String member_nName) {
		Integer artist_id = adminMapper.selectArtistIdForAi(member_nName);
		
		HashMap<String, Object> myAiWorkListPageMap = new HashMap<>();
		if(artist_id == null) {	// 회원이 ai이미지를 생성한 적이 없다면
			return myAiWorkListPageMap; // 빈 맵을 리턴
		}
		
		String tableName = "work";
		String columnName = "artist_id";
		myAiWorkListPageMap = pageMethodWishList(page, artist_id, tableName, columnName);	// 찜하기에서 페이징 처리하는 메소드를 재사용한것
		
		int startRow = (int) myAiWorkListPageMap.get("startRow");
		int endRow = (int) myAiWorkListPageMap.get("endRow");
		
		// 내가 만든 ai작품들 리스트로 가져오기
		List<WorkVo> myAiWorkVoList = myshopMapper.selectMyAiWorkVoList(startRow, endRow, member_nName);
		
		//////////////////////    작품 판매개수 가져오기    ////////////////////////////
		List<Integer> workIdList = new ArrayList<>();
		for(WorkVo workVo : myAiWorkVoList) {
			workIdList.add(workVo.getId());
		}
		// 1. 작품 팔린 개수 알기위해 주문상세 테이블에서 work_id마다 option_id들 리스트로 가져오기(work_id 하나에 option_id들이 여러개, 즉 work_id 하나에 optionIdList 1개 할당(map을 통해서)) 
		Map<String, List<Integer>> orderDetail_workId_OptionIdMap = new HashMap<>();
		for(Integer work_id : workIdList) { 	// workIdList안의 1개의 work_id마다 각각의 optionIdList가 따로 나오게 됨. 왜냐면 상세주문 테이블에서 예를들어 work_id가 43번인 애들의 option_id가 여러개일 수 있기 때문.	
			orderDetail_workId_OptionIdMap.put(work_id+"", myshopMapper.selectOrderDetail_OptionIds(work_id)); 
		}	
		// 2. work_id마다 있는 optionIdList가 담긴 map을 가지고 option테이블에서 option_quantity값들을 list로 가져와서 optionWorkId_QuantityMap에 저장 
		Map<String, List<Integer>> optionWorkId_QuantityMap = new HashMap<>(); // 변수명 해석 : option -> 테이블명, WorkId_Quantity -> work_id에 따른 option들의 개수
		for(Integer work_id : workIdList) { 	// orderDetail_workId_OptionIdMap.get(work_id+"") -> 얘가 1개의 work_id에 따른 option_id들이 담겨있는 List<Integer>임 
			optionWorkId_QuantityMap.put(work_id+"", myshopMapper.selectOptionQuantity(orderDetail_workId_OptionIdMap.get(work_id+""))); 
		}	
		// 3. work_id마다 있는 option_quantity들의 리스트가 담긴 map(optionWorkId_QuantityMap)을 가지고 option_quantity들의 합을 구해서 sumOfQuantityMap 맵에 저장
		Map<String, Integer> sumOfQuantityMap = new HashMap<>(); // work_id에 따른 quantity들의 합, 즉 총 판매개수
		for(Integer work_id : workIdList) { 	// optionWorkId_QuantityMap.get(work_id+"") -> 얘가 1개의 work_id에 따른 option_quantity들이 담겨있는 List<Integer>임	 
			int sum = 0;
			if(optionWorkId_QuantityMap.get(work_id+"").size() != 0) {	// work_id에 따른 quantity가 있을 때만
				for(int i = 0; i < optionWorkId_QuantityMap.get(work_id+"").size(); i++) {	
					sum += optionWorkId_QuantityMap.get(work_id+"").get(i);	// 판매개수를 누적해서 더함
				}
				sumOfQuantityMap.put(work_id+"", sum); 	// 누적해서 더한 최종 판매개수를 해당 work_id의 value로 지정
			} else {	// work_id에 따른 quantity가 없을 때, 즉 판매된 적이 없으면
				sumOfQuantityMap.put(work_id+"", 0); 	// 해당 work_id의 value로 0을 지정
			}
		}
		// work_id마다 있는 총 합계들을 key는 없애고 숫자만 넣는 List에 담음. map안에 map태우기가 좀 그래서..
		List<Integer> quantityList = new ArrayList<>();
		for(Integer work_id : workIdList) {
			quantityList.add(sumOfQuantityMap.get(work_id+"")); 
		}
		//////////////////////    작품 판매개수 가져오기 끝!!!!   ////////////////////////////
		
		myAiWorkListPageMap.put("myAiWorkVoList", myAiWorkVoList);
		myAiWorkListPageMap.put("page", page);
		myAiWorkListPageMap.put("quantityList", quantityList);
		
		return myAiWorkListPageMap;
	}

	

	

	
	

	

	
	
	
	
	
	
}
