<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="shortcut icon" href="/home/img/favicon.ico" />
<title>찜 리스트</title>
<!-- !!!!!!!!!!!!!!!!!!!!!!!   제이쿼리 최신   !!!!!!!!!!!!!!!!!!!! -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="../home/theme/buzinga/css/mobile_shop3816.css?ver=210618">
<link rel="stylesheet" href="../home/js/font-awesome/css/font-awesome.min3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/swiper.min3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/aos3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/nice-select3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/js/owl.carousel3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/common3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/sub3816.css?ver=210618">
<!--[if lte IE 8]>
<script src="https://bxgs.co.kr/js/html5.js"></script>
<![endif]-->
<script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "https://bxgs.co.kr";
var g5_bbs_url   = "https://bxgs.co.kr/bbs";
var g5_is_member = "1";
var g5_is_admin  = "";
var g5_is_mobile = "1";
var g5_bo_table  = "";
var g5_sca       = "";
var g5_editor    = "";
var g5_cookie_domain = "";
var g5_theme_shop_url = "https://bxgs.co.kr/theme/buzinga/shop";
var g5_shop_url = "https://bxgs.co.kr/shop";


</script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<script src="../home/js/jquery-1.12.4.min3816.js?ver=210618"></script>
<script src="../home/js/jquery-migrate-1.4.1.min3816.js?ver=210618"></script>
<script src="../home/js/common3816.js?ver=210618"></script>
<script src="../home/js/wrest3816.js?ver=210618"></script>
<script src="../home/js/placeholders.min3816.js?ver=210618"></script>
<script src="../home/theme/buzinga/js/swiper.min3816.js?ver=210618"></script>
<script src="../home/theme/buzinga/js/gsap-3.6.0.min3816.js?ver=210618"></script>
<script src="../home/theme/buzinga/js/aos3816.js?ver=210618"></script>
<script src="../home/theme/buzinga/js/jquery.nice-select3816.js?ver=210618"></script>
<script src="../home/theme/buzinga/js/jquery.sidr.min3816.js?ver=210618"></script>
<script src="../home/js/modernizr.custom.701113816.js?ver=210618"></script>
<script src="../home/theme/buzinga/js/owl.carousel.min3816.js?ver=210618"></script>
<script src="../home/theme/buzinga/js/unslider.min3816.js?ver=210618"></script>
</head>
<style>
    .page-numul {
        display: flex;
        justify-content: center;
    }
</style>


	<body>
	<div id="hd_login_msg">오민수님 로그인 중 <a href="https://bxgs.co.kr/bbs/logout.php">로그아웃</a></div>
	
	<div class="cursor-ball">
	    <div class="ball"></div>
	</div>
	
	
	<div id="skip_to_container">
	    <a href="#contents">본문 바로가기</a>
	</div>
	
	
	
	
	<div id="wrap" class="sub">
	
			<!-- header 부분 시작 -->
			<%@ include file ="../top/header.jsp" %>
			<!-- header 부분 끝 -->
	
	        <main id="contents">
	        
	
	<section class="mypage">
		<div class="maxinner">
			
			<!-- mypage_side_bar 시작 부분 -->
			<%@ include file = "../top/mypage_side_bar.jsp" %>			
			<!-- mypage_side_bar 끝 부분 -->	
			
			<div class="mypage-con">
				
			<!-- mypage_coupon_header 시작 부분 -->
			<%@ include file = "../top/mypage_coupon_header.jsp" %>
			<!-- mypage_coupon_header 끝 부분 -->
				
			<!-- 주문 내역 시작 { -->
			<div id="sod_ws"> 
				<div class="mypage-tit">
					<h3>찜리스트</h3>
				</div>
				
			  <c:if test="${wishListCount == 0}">
				  <div class="empty-content">
					<img src="../home/img/ico/ico-information-big.png" alt="">
					<p>찜리스트가 비었습니다.</p>
				  </div>
			  </c:if>
			  	  <!-- 찜리스트 상단부분 -->
			      <div class="tbstyle01" id="wish_li">
					<table>
					  <caption class="hide">찜리스트</caption>
					  <colgroup>
						<col width="60px">
						<col width="*">
						<col width="140px">
						<col width="160px">
					  </colgroup>
					  <c:if test="${wishListCount != 0}">
					  <thead>
					    <tr>
					      <th>
						    <div class="chk-box">
							  <input type="checkbox" name="ct_all" value="1" id="ct_all" class="selec_chk">
							  <label for="ct_all"><span class="hide">전체선택</span></label>
							</div>
						  </th>
						    <th>상품정보</th>
							<th>상품금액</th>
							<th>관리</th>
						</tr>
					  </thead>
				 	  <!-- 찜 리스트 바디부분 -->
					  
		  	 		    <c:forEach items="${wishListPageMap.wishListPageList}" var="wishlistVo" >
						  <tbody>
						    <tr>
							  <td data-title="상품선택" class="td-num">
							    <div>
								  <div class="chk-box">
								    <input type="checkbox" name="chk_it_id[0]" value="${wishlistVo.id}" id="chk_it_id_${wishlistVo.id}"  class="selec_chk" data-out_cd="">
									<label for="chk_it_id_${wishlistVo.id}"><span></span><b class="sound_only">작품제목</b></label>
								  </div>
								   	<!-- <input type="hidden" name="it_id[0]" value="1654133549">
									<input type="hidden" name="io_type[1654133549][0]" value="0">
									<input type="hidden" name="io_id[1654133549][0]" value="">
									<input type="hidden" name="io_value[1654133549][0]" value="아를의 랑그루아 다리">
									<input type="hidden" name="ct_qty[1654133549][0]" value="1"> -->
								</div>
							  </td>
							  <td data-title="상품정보" class="td-product">
							    <div class="product-box">
								  <div class="product-img">
								    <div style="background-image:url(../admin/img/work/${wishlistVo.work_img_url})">
								      <span class="hide">썸네일</span>
								    </div>
								  </div>
								  <div class="product-name">
								    <a href="../shop/painting_item?work_id=${wishlistVo.work_id}&artist_id=${wishlistVo.artist_id}"> 
									  <strong>${wishlistVo.work_name}<span>${wishlistVo.artist_name}</span>	</strong>
									</a>
								  </div>
								</div>
							  </td>
							  <td data-title="상품금액" class="td-numbig">
							  	<fmt:formatNumber type="number" value="${wishlistVo.work_price}" pattern="#,###" />원
							  </td>
							  <td data-title="상품관리" class="td-state">
							  <!--<button type="button" class="btnset btn-type04 btn-fill-brown">장바구니</button>-->
							  <button type="button" class="btnset btn-type04" onclick="deleteBtn(${wishlistVo.id})">삭제하기</button>
							  </td>
							</tr>
						   
							<!-- 찜 리스트 목록 끝 -->
						  </tbody>
					    </c:forEach>    
	     		      </c:if>
					</table>
			      </div>
		      
		      
				  <div class="wish-opt"> 
					  <button type="button" onclick="selectDeleteBtn()" class="btnset btn-type04">선택삭제</button>
					  <button type="button" onclick="allDeleteBtn(${sessionMember_id})" class="btnset btn-type04">찜리스트 비우기</button>
				  </div>
					
				<!-- 하단 넘버링 부분 시작! -->
				<nav class="pg_wrap">
					<ul class="page-numul" style="list-style:none;">
						<!-- 첫 페이지로 이동 (<<모양만있고 기능은 없음) -->
						<c:if test="${wishListPageMap.page == 1}">
							<li><span class="pg_page pg_start"></span></li>
						</c:if>
						<!-- 첫 페이지로 이동 (<<모양도있고 기능까지 있는것) -->
						<c:if test="${wishListPageMap.page != 1}">
							<a href="my_wishlist?member_id=${wishListPageMap.member_id}&page=1">
								<li><span class="pg_page pg_start"></span></li>
							</a>
						</c:if>
						
						<!-- 이전 페이지로 이동 -->
						<c:if test="${wishListPageMap.page == 1}">
							<li><span class="pg_page pg_prev"></span></li>
						</c:if>
						<c:if test="${wishListPageMap.page != 1}">
							<a href="my_wishlist?member_id=${wishListPageMap.member_id}&page=${wishListPageMap.page - 1}">
                                  	<li><span class="pg_page pg_prev"></span></li>
                                  </a>	
						</c:if>
						
						<!-- 하단 넘버링 반복문 -->
						<c:forEach begin="${wishListPageMap.startPage}" end="${wishListPageMap.endPage}" step="1" var="number"> <!-- var=number 뜻을 모르겠네 -->
							<c:if test="${wishListPageMap.page == number}">
								<li>
                                          <div class="pg_current">${number}</div>
                                      </li>
							</c:if>
							<c:if test="${wishListPageMap.page != number}">
								<li>
                                          <a href="my_wishlist?member_id=${wishListPageMap.member_id}&page=${number}">
                                              <div class="pg_page">${number}</div>
                                          </a>
                                      </li>	
							</c:if>
						</c:forEach>
						
						<!-- 다음 페이지로 이동 -->
						<c:if test="${wishListPageMap.page == wishListPageMap.maxPage}">
							<li><span class="pg_page pg_next"></span></li>
						</c:if>
						<c:if test="${wishListPageMap.page != wishListPageMap.maxPage}">
							<a href="my_wishlist?member_id=${wishListPageMap.member_id}&page=${wishListPageMap.page + 1}">
                                      <li><span class="pg_page pg_next"></span></li>
                                  </a>
						</c:if>
						
						<!-- 끝 페이지로 이동 -->
                              <c:if test="${wishListPageMap.page == wishListPageMap.maxPage}">
                                  <li><span class="pg_page pg_end">keyboard_double_arrow_right</span></li>
                              </c:if>
                              <c:if test="${wishListPageMap.page != wishListPageMap.maxPage}">
                                  <a href="my_wishlist?member_id=${wishListPageMap.member_id}&page=${wishListPageMap.maxPage}">
                                      <li><span class="pg_page pg_end">keyboard_double_arrow_right</span></li>
                                  </a>
                              </c:if>
					</ul>
				</nav>
			</div>
			</div>
		</div>
	<section>
	
	<script>
		//var id;  // 1개 삭제하기 버튼 눌렀을 때 실행
		var selectedItemsArray = [];
		
		// 오른쪽 삭제하기 버튼
		function deleteBtn(id){
			$.ajax({
				url : "WishlistDelete_ajax",
				type : "post",
				data : {"id":id},
				success: function(){
					location.reload(); // 현재 페이지 리로딩
				},
				error : function(){
					alert("시스템 오류입니다.");
				}
			});//ajax
		}//function
		
		
	    // 모두선택
	    $("input[name=ct_all]").click(function() {
	        if($(this).is(":checked"))
	            $("input[name^=chk_it_id]").attr("checked", true);
	        else
	            $("input[name^=chk_it_id]").attr("checked", false);
	    });
		
		
		// 체크박스의 체크된 항목 삭제
		function selectDeleteBtn(){
			selectedItemsArray = []; // 초기화를 시켜줘야한다 이유는? (안그러면 이미삭제했던 id가 누적으로 또 삭제가 된다)
			
			$('input[name="chk_it_id[0]"]').each(function(){
				if($(this).is(':checked')){
					selectedItemsArray.push($(this).val());		
				}//if	
			})
			
			$.ajax({
				url : "delete_items",
				type : "post",
				data : {"selectedItemsArray" : JSON.stringify(selectedItemsArray)},  // [] 배열형태를 String으로 보내기 위해 사용
				success: function(){
					location.reload();
				},
				error: function(){
					alert("시스템 오류 입니다.");
				},
				complete: function() {  // 콜백함수
					selectedItemsArray = []; // 선택하고 다시 취소했을 때 데이터가 남지 않기위해 사용
				}
			});//ajax
		}//deleteBtn()
		
		
		// 한명의 찜리스트(전체) 삭제
		function allDeleteBtn(member_id){
		
			$.ajax({
				url: "deleteAll_items",
				type: "post",
				data : {"member_id":member_id},
				success: function(){
					location.reload();
				},
				error: function(){
					alert("시스템 오류 입니다.");
				}
			})//ajax
		}//allDeleteBtn()
		
	</script>
	
	    </main>
	        
	        <!-- header 부분 시작 -->
			<%@ include file ="../top/footer.jsp" %>
			<!-- header 부분 끝 -->
	
	<div id="gotop">
	    <a href="javascript:;"><span class="hide">맨위로가기</span></a>
	</div>
	</div>
	
	
	<script src="https://bxgs.co.kr/js/sns.js"></script>
	<script src="https://bxgs.co.kr/theme/buzinga/js/css3-animate-it.js"></script>
	<link rel="stylesheet" href="https://bxgs.co.kr/theme/buzinga/css/animate.css">
	<script src="https://bxgs.co.kr/theme/buzinga/js/base.js"></script><script src="https://bxgs.co.kr/theme/buzinga/js/sub.js"></script>
	
	<!-- ie6,7에서 사이드뷰가 게시판 목록에서 아래 사이드뷰에 가려지는 현상 수정 -->
	<!--[if lte IE 7]>
	<script>
	$(function() {
	    var $sv_use = $(".sv_use");
	    var count = $sv_use.length;
	
	    $sv_use.each(function() {
	        $(this).css("z-index", count);
	        $(this).css("position", "relative");
	        count = count - 1;
	    });
	});
	</script>
	<![endif]-->
	
	
	</body>
</html>
