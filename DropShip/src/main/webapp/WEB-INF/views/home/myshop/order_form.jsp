<%@page import="com.java.vo.OptionVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
	
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
    <meta name="HandheldFriendly" content="true">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="shortcut icon" href="/home/img/favicon.ico" />
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>	
    <title>작품구매 페이지</title>
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
        var g5_url = "https://bxgs.co.kr";
        var g5_bbs_url = "https://bxgs.co.kr/bbs";
        var g5_is_member = "1";
        var g5_is_admin = "";
        var g5_is_mobile = "1";
        var g5_bo_table = "";
        var g5_sca = "";
        var g5_editor = "";
        var g5_cookie_domain = "";
        var g5_theme_shop_url = "https://bxgs.co.kr/theme/buzinga/shop";
        var g5_shop_url = "https://bxgs.co.kr/shop";
    </script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<script src="https://spi.maps.daum.net/imap/map_js_init/postcode.v2.js"></script>
	<script src="https://bxgs.co.kr/js/shop.order.js?ver=210618"></script>
	<script src="https://bxgs.co.kr/js/jquery-1.12.4.min.js?ver=210618"></script>
	<script src="https://bxgs.co.kr/js/jquery-migrate-1.4.1.min.js?ver=210618"></script>
	<script src="https://bxgs.co.kr/js/common.js?ver=210618"></script>
	<script src="https://bxgs.co.kr/js/wrest.js?ver=210618"></script>
	<script src="https://bxgs.co.kr/js/placeholders.min.js?ver=210618"></script>
	<script src="https://bxgs.co.kr/theme/buzinga/js/swiper.min.js?ver=210618"></script>
	<script src="https://bxgs.co.kr/theme/buzinga/js/gsap-3.6.0.min.js?ver=210618"></script>
	<script src="https://bxgs.co.kr/theme/buzinga/js/aos.js?ver=210618"></script>
	<script src="https://bxgs.co.kr/theme/buzinga/js/jquery.nice-select.js?ver=210618"></script>
	<script src="https://bxgs.co.kr/theme/buzinga/js/jquery.sidr.min.js?ver=210618"></script>
	<script src="https://bxgs.co.kr/js/modernizr.custom.70111.js?ver=210618"></script>
	<script src="https://bxgs.co.kr/theme/buzinga/js/owl.carousel.min.js?ver=210618"></script>
	<script src="https://bxgs.co.kr/theme/buzinga/js/unslider.min.js?ver=210618"></script>
</head>

<body>
    <div id="hd_login_msg">
        ${sessionMember_name}님 로그인 중 <a href="https://bxgs.co.kr/bbs/logout.php">로그아웃</a>
    </div>

    <div class="cursor-ball">
        <div class="ball"></div>
    </div>


    <div id="skip_to_container">
        <a href="#contents">본문 바로가기</a>
    </div>




    <div id="wrap" class="sub">

        <!-- header 부분 시작 -->
        <%@ include file="../top/header.jsp"%>
        <!-- header 부분 끝 -->

        <main id="contents">

            <section class="sub-tit-wrap" data-aos="fade-up">
                <div class="maxinner">
                    <h2 class="sub-tit">ORDER FORM</h2>
                </div>
            </section>


            <form name="forderform" id="forderform" method="post" action="order_result" autocomplete="off">
            	<input type="hidden" name="fromWhatPage" value="${fromWhatPage}">
            	<input type="hidden" name="total_price" value="${total_price}">
            	
            	<c:set var="workIdList" value="${workIdList}" scope="session"/>
            	<c:set var="optionIdList" value="${optionIdList}" scope="session"/>
            	
                <div id="sod_frm" class="sod_frm_pc">
                    <div class="maxinner">
                        <!-- 주문상품 확인 시작 { -->
                        <div class="sod_od_prd_wrap">
                            <div class="sod_list_tit">
                                <h3>주문상품</h3>
                                <p>
                                    <span class="f-color">*</span>제주/도서산간 지역의 경우 추가 배송비가 발생할 수
                                    있습니다.
                                </p>
                            </div>
                            <div class="tbl_order od_prd_list">
                                <table id="sod_list">
                                    <thead>
                                        <tr>
                                            <th scope="col">No</th>
                                            <th scope="col">Product</th>
                                            <th scope="col">Unit Price</th>
                                            <th scope="col">Quantity</th>
                                            <th scope="col">Subtotal</th>
                                            <!--<th scope="col">포인트</th>-->
                                            <!--<th scope="col">배송비</th>-->
                                        </tr>
                                    </thead>
                                    <tbody>
										<c:forEach items="${optionVoList}" var="optionVo" varStatus="loop">
	                                        <tr>
	                                            <td data-title="No" class="td_no">${loop.index+1}</td>
	                                            <td data-title="Product" class="td_prd">
	                                                <div class="sod_img">
	                                                    <a href="/shop/painting_item?work_id=${workVoList[loop.index].id}&artist_id=${workVoList[loop.index].artist_id}" style="background-image:url(/admin/img/work/${workVoList[loop.index].work_img_url})">
	                                                        <span class="hide">제품이미지</span>
	                                                    </a>
	                                                </div>
	                                                <div class="sod_name">
	                                                    <input type="hidden" name="it_id[0]" value="1654129940"> <!-- ${workVo.artist_name}안될수도. -->	
	                                                    <input type="hidden" name="it_name[0]" value="양산을 든 여인 - 카미유와 장"> <input type="hidden" name="it_price[0]" value="74700"> <input type="hidden" name="cp_id[0]" value=""> <input type="hidden" name="cp_price[0]" value="0"> <a href="../shop/painting_item?id=${workVo.id}" class="prd_name">
	                                                    
	                                                    <!-- 세션으로 다음페이지인 order_result로 넘기기 위해 set -->
														<c:set var="optionVo" value="${optionVo}" scope="session"/>                                                    
	                                                    
	                                                    <!-- Order_Detail 회원 주문상세 테이블에 넣을 정보 -->
<%-- 			                                            <input type="hidden" name="total_price" value="${optionVo.option_selected_price * optionVo.option_quantity}"> --%>
			                                            <input type="hidden" name="work_id" value="${workVoList[loop.index].id}">
			                                            <!-- Order_Detail 회원 주문상세 테이블에 넣을 정보 -->
			                                            
	                                                    <strong>${workVoList[loop.index].work_name}</strong><span>${workVoList[loop.index].artist_name}</span><span class="price_txt"></span>
	                                                        <div class="sod_opt_txt">
	                                                            <c:choose>
																    <c:when test="${optionVo.option_size == 0}">
																        <p>사이즈 : 20.0cm x 35.7cm<span class="price_txt">(+${optionVo.option_size_added_price})</span></p>
																    </c:when>
																    <c:when test="${optionVo.option_size == 1}">
																        <p>사이즈 : 25.0cm x 44.6cm<span class="price_txt">(+${optionVo.option_size_added_price})</span></p>
																    </c:when>
																</c:choose>
																
																<c:choose>
																    <c:when test="${optionVo.option_media == 1}">
																        <p>미디어 : 캔버스<span class="price_txt">(+${optionVo.option_selected_price - optionVo.option_size_added_price - optionVo.option_frame_added_price - optionVo.option_matt_added_price - workVoList[loop.index].work_price})</span></p>
																    </c:when>
																    <c:when test="${optionVo.option_media == 2}">
																        <p>미디어 : 파인아트<span class="price_txt">(+${optionVo.option_selected_price - optionVo.option_size_added_price - optionVo.option_frame_added_price - optionVo.option_matt_added_price - workVoList[loop.index].work_price})</span></p>
																    </c:when>
																</c:choose>
																
																<c:choose>
																    <c:when test="${optionVo.option_mattier == 1}">
																        <p>리터치 : 없음<span class="price_txt">(+0)</span></p>
																    </c:when>
																    <c:when test="${optionVo.option_mattier == 2}">
																        <p>리터치 : 선택<span class="price_txt">(+0)</span></p>
																    </c:when>
																</c:choose>
																
																<c:choose>
																    <c:when test="${optionVo.option_frame == 1}">
																        <p>프레임 : 캔버스판넬<span class="price_txt">(+0)</span></p>
																    </c:when>
																    <c:when test="${optionVo.option_frame == 2}">
																        <p>프레임 : 래핑캔버스<span class="price_txt">(+0)</span></p>
																    </c:when>
																    <c:when test="${optionVo.option_frame == 3}">
																        <p>프레임 : 띄움<span class="price_txt">(+${optionVo.option_frame_added_price})</span></p>
																    </c:when>
																    <c:when test="${optionVo.option_frame == 4}">
																        <p>프레임 : 원목 띄움<span class="price_txt">(+${optionVo.option_frame_added_price})</span></p>
																    </c:when>
																    <c:when test="${optionVo.option_frame == 5}">
																        <p>프레임 : 올림우드<span class="price_txt">(+${optionVo.option_frame_added_price})</span></p>
																    </c:when>
																    <c:when test="${optionVo.option_frame == 6}">
																        <p>프레임 : 앤틱D실버<span class="price_txt">(+0)</span></p>
																    </c:when>
															        <c:when test="${optionVo.option_frame == 7}">
																        <p>프레임 : 원목베이지<span class="price_txt">(+${optionVo.option_frame_added_price})</span></p>
																    </c:when>
																    <c:when test="${optionVo.option_frame == 8}">
																        <p>프레임 : 관화이트<span class="price_txt">(+${optionVo.option_frame_added_price})</span></p>
																    </c:when>
																    <c:when test="${optionVo.option_frame == 9}">
																        <p>프레임 : 관우드<span class="price_txt">(+${optionVo.option_frame_added_price})</span></p>
																    </c:when>
																    <c:when test="${optionVo.option_frame == 10}">
																        <p>프레임 : 관블랙<span class="price_txt">(+${optionVo.option_frame_added_price})</span></p>
																    </c:when>
																</c:choose>
																<p>매트(여백) : 
																    <c:choose>
																        <c:when test="${optionVo.option_matt == 1}">
																            없음<span class="price_txt">(+0)</span>
																        </c:when>
																        <c:when test="${optionVo.option_matt == 2}">
																            2cm<span class="price_txt">(+10000)</span>
																        </c:when>
																        <c:when test="${optionVo.option_matt == 3}">
																            3cm<span class="price_txt">(+20000)</span>
																        </c:when>
																        <c:when test="${optionVo.option_matt == 4}">
																            6cm<span class="price_txt">(+30000)</span>
																        </c:when>
																        <c:when test="${optionVo.option_matt == 5}">
																            11cm<span class="price_txt">(+40000)</span>
																        </c:when>
																    </c:choose>
																</p>
	                                                        </div>
	                                                    </a>
	                                                </div>
	                                            </td>
	                                            <td data-title="Unit Price" class="td_numbig  text_right">${workVoList[loop.index].work_price}
	                                                원</td>
	                                            <td data-title="Quantity" class="td_num">${optionVo.option_quantity}</td>
	                                            <td data-title="Subtotal" class="td_numbig  text_right"><span class="total_price">${optionVo.option_selected_price}원 * ${optionVo.option_quantity}개 <br><br> ${optionVo.option_selected_price * optionVo.option_quantity}</span> 원</td>
	                                            <!--<td class="td_numbig  text_right">3,000</td>-->
	                                            <!--<td class="td_dvr">선불</td>-->
	                                        </tr>
										</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <!-- } 주문상품 확인 끝 -->

                        <div class="sod_od_contents_wrap">
                            <div class="sod_left">
                                <input type="hidden" name="od_price" value="74700"> <input type="hidden" name="org_od_price" value="74700"> <input type="hidden" name="od_send_cost" value="2000"> <input type="hidden" name="od_send_cost2" value="0"> <input type="hidden" name="item_coupon" value="0"> <input type="hidden" name="od_coupon" value="0"> <input type="hidden" name="od_send_coupon" value="0"> <input type="hidden" name="od_goods_name" value="양산을 든 여인 - 카미유와 장">

                                <input type="hidden" name="req_tx" value="pay"> <input type="hidden" name="site_cd" value="T0000"> <input type="hidden" name="site_name" value="백상"> <input type="hidden" name="def_site_cd" value="T0000">

                                <!-- <input type="hidden" name="KCP_PAY_MODULE"  value="kcp_web" > -->
                                <input type="hidden" name="pay_method" value=""> <input type="hidden" name="ordr_idxx" value="2023031515380329">
                                <input type="hidden" name="good_name" value="양산을 든 여인 - 카미유와 장">
                                <input type="hidden" name="good_mny" value="0"> <input type="hidden" name="buyr_name" value=""> <input type="hidden" name="buyr_mail" value=""> <input type="hidden" name="buyr_tel1" value=""> <input type="hidden" name="buyr_tel2" value=""> <input type="hidden" name="rcvr_name" value=""> <input type="hidden" name="rcvr_tel1" value=""> <input type="hidden" name="rcvr_tel2" value=""> <input type="hidden" name="rcvr_mail" value=""> <input type="hidden" name="rcvr_zipx" value=""> <input type="hidden" name="rcvr_add1" value=""> <input type="hidden" name="rcvr_add2" value=""> <input type="hidden" name="payco_direct" value="">
                                <!-- PAYCO 결제창 호출 -->
                                <input type="hidden" name="naverpay_direct" value="A">
                                <!-- NAVERPAY 결제창 호출 -->
                                <input type="hidden" name="kakaopay_direct" value="A">
                                <!-- KAKAOPAY 결제창 호출 -->

                                <input type="hidden" name="quotaopt" value="12">

                                <!-- 필수 항목 : 결제 금액/화폐단위 -->
                                <input type="hidden" name="currency" value="WON">


                                <!-- PLUGIN 설정 정보입니다(변경 불가) -->
                                <input type="hidden" name="module_type" value="01">
                                <!-- 복합 포인트 결제시 넘어오는 포인트사 코드 : OK캐쉬백(SCSK), 베네피아 복지포인트(SCWB) -->
                                <input type="hidden" name="epnt_issu" value="">
                                <!--
      ※ 필 수
          필수 항목 : Payplus Plugin에서 값을 설정하는 부분으로 반드시 포함되어야 합니다
          값을 설정하지 마십시오
-->
                                <input type="hidden" name="res_cd" value=""> <input type="hidden" name="res_msg" value=""> <input type="hidden" name="tno" value=""> <input type="hidden" name="trace_no" value=""> <input type="hidden" name="enc_info" value=""> <input type="hidden" name="enc_data" value=""> <input type="hidden" name="ret_pay_method" value=""> <input type="hidden" name="tran_cd" value=""> <input type="hidden" name="bank_name" value=""> <input type="hidden" name="bank_issu" value=""> <input type="hidden" name="use_pay_method" value="">

                                <!--  현금영수증 관련 정보 : Payplus Plugin 에서 설정하는 정보입니다 -->
                                <input type="hidden" name="cash_tsdtime" value=""> <input type="hidden" name="cash_yn" value=""> <input type="hidden" name="cash_authno" value=""> <input type="hidden" name="cash_tr_code" value=""> <input type="hidden" name="cash_id_info" value="">

                                <!-- 2012년 8월 18일 정자상거래법 개정 관련 설정 부분 -->
                                <!-- 제공 기간 설정 0:일회성 1:기간설정(ex 1:2012010120120131)  -->
                                <!--
        2012.08.18 부터 개정 시행되는 '전자상거래 등에서의 소비자보호에 관한 법률'에 따른 코드 변경
        이용기간이 제한되는 컨텐츠 상품이나 정기 과금 상품 등에 한하여 '용역의 제공기간'을
        표기/적용하여야 하며 이와 무관한 실물 배송상품 등의 결제에는 해당되지 않습니다.
        0 : 일반결제
        good_expr의 나머지 적용 방식에 대해서는 KCP에서 제공하는 매뉴얼을 참고해 주세요.
    -->
                                <input type="hidden" name="good_expr" value="0">

                                <!-- 가맹점에서 관리하는 고객 아이디 설정을 해야 합니다.(필수 설정) -->
                                <input type="hidden" name="shop_user_id" value="" />
                                <!-- 복지포인트 결제시 가맹점에 할당되어진 코드 값을 입력해야합니다.(필수 설정) -->
                                <input type="hidden" name="pt_memcorp_cd" value="" />

                                <!-- 에스크로 항목 -->

                                <!-- 에스크로 사용 여부 : 반드시 Y 로 세팅 -->
                                <input type="hidden" name="escw_used" value="Y">

                                <!-- 에스크로 결제처리 모드 : 에스크로: Y, 일반: N, KCP 설정 조건: O -->
                                <input type="hidden" name="pay_mod" value="N">

                                <!-- 배송 소요일 : 예상 배송 소요일을 입력 -->
                                <input type="hidden" name="deli_term" value="03">

                                <!-- 장바구니 상품 개수 : 장바구니에 담겨있는 상품의 개수를 입력 -->
                                <input type="hidden" name="bask_cntx" value="1">

                                <!-- 장바구니 상품 상세 정보 (자바 스크립트 샘플(create_goodInfo()) 참고) -->
                                <input type="hidden" name="good_info" value=""> <input type="hidden" name="kcp_noint" value="N"> <input type="hidden" name="wish_vbank_list" value=""> <input type="hidden" name="disp_tax_yn" value="N"> <input type="hidden" name="site_logo" value=""> <input type="hidden" name="skin_indx" value="1">


                                <!-- 주문하시는 분 입력 시작 { -->
                                <section id="sod_frm_orderer">
                                    <div class="sod_list_tit">
                                        <h3>주문자 정보</h3>
                                    </div>

                                    <div class="tbl_frm01 tbl_wrap">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <th scope="row"><label for="od_name"><span class="f-color">*</span> 주문자</label></th>
                                                    <td><input type="text" name="od_name" value="${memberVo.member_name}" id="od_name" required class="inp-type01 required" maxlength="20" readonly></td>
                                                </tr>


                                                <tr>
                                                    <th scope="row"><label for="od_hp"><span class="f-color">*</span> 핸드폰번호</label></th>
                                                    <td><input type="text" name="od_hp" value="${memberVo.member_phone}" id="od_hp" required class="inp-type01 required" maxlength="20" readonly></td>
                                                </tr>
                                                <tr>
                                                    <th scope="row"><span class="f-color">*</span> 주소</th>
                                                    <td>
                                                        <div class="od_address_box">
                                                            <div class="od_address_numbox">
                                                                <label for="od_zip" class="sound_only">우편번호</label> <input type="text" name="od_zip" value="${memberVo.member_zip}" id="od_zip" required class="inp-type01 required" size="8" maxlength="6" placeholder="우편번호" readonly>
                                                                <button type="button" class="btn_address btnset btn-type03 btn-fill-brown" onclick="win_zip('forderform', 'od_zip', 'od_addr1', 'od_addr2', 'od_addr3', 'od_addr_jibeon');">우편번호
                                                                    검색</button>
                                                            </div>
                                                            <input type="text" name="od_addr1" value="${memberVo.member_road}" id="od_addr1" required class="inp-type01 frm_address required" size="60" placeholder="기본주소" readonly> <label for="od_addr1" class="sound_only">기본주소<strong class="sound_only"> 필수</strong></label> <input type="text" name="od_addr2" value="${memberVo.member_addr}" id="od_addr2" class="inp-type01 frm_address" size="60" placeholder="상세주소" readonly> <label for="od_addr2" class="sound_only">상세주소</label> <input type="hidden" name="od_addr3" value=""> <input type="hidden" name="od_addr_jibeon" value="">
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th scope="row"><label for="od_email"><span class="f-color">*</span>이메일</label></th>
                                                    <td><input type="text" name="od_email" value="${memberVo.member_email}@.com" id="od_email" required class="inp-type01 required" size="35" maxlength="100" readonly></td>
                                                </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </section>
                                <!-- } 주문하시는 분 입력 끝 -->

                                <!-- 받으시는 분 입력 시작 { -->
                                <section id="sod_frm_taker">
                                    <div class="sod_list_tit">
                                        <h3>배송지 정보</h3>
                                    </div>

                                    <div class="tbl_frm01 tbl_wrap">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <th scope="row"><span class="f-color">*</span> 배송지선택</th>
                                                    <td>
                                                        <div class="order_choice_place">
                                                            <ul class="chk-list-type01 type-radio">
                                                                <li><input type="radio" name="ad_sel_addr" value="same" id="ad_sel_addr_same"> <label for="ad_sel_addr_same">주문자와 동일</label></li>
<!--                                                                 <li><input type="radio" name="ad_sel_addr" value="recent" id="ad_sel_addr_1"> <label for="ad_sel_addr_1">최근배송지(집)</label> -->
                                                                </li>
                                                                <li><input type="radio" name="ad_sel_addr" value="new" id="od_sel_addr_new"> <label for="od_sel_addr_new">신규배송지</label> 
<!--                                                                 <a href="javascript:;" id="order_address" class="btn_frmline btnset btn-type03 btn-fill-brown btn-pop-open" data-popnum="01">배송지 목록</a></li> -->
                                                            </ul>
                                                        </div>
                                                        <!-----  
                                                배송지목록 입력팝업창 {
                                                (★팝업 없애고 원래대로 복원시 상단 $addr_list 주석 해제 후 하단의버튼 관련 스크립트도 주석 해제) 
                                            ----->
                                                        <div class="pop-wrap pop01" id="pop-addr">
                                                            <div class="pop-inner">
                                                                <div class="pop-tit-wrap">
                                                                    <h3 class="pop-tit">배송지목록</h3>
                                                                </div>
                                                                <div class="pop-con-wrap">
                                                                    <!----- 1단계 - 배송지 목록 보기 ----->
                                                                    <form name="" method="" action="">
                                                                        <div class="addr-box">
                                                                            <div class="addr-top">
                                                                                <strong>우리집</strong> <span>기본배송지</span>
                                                                            </div>
                                                                            <div class="addr-mid">
                                                                                <p></p>
                                                                                <span>김서로 | 010-000-0000 | 02-000-0000</span>
                                                                            </div>
                                                                            <div class="addr-btm">
                                                                                <div class="addr-btm-left">
                                                                                    <button type="button" class="btnset btn-normal">수정</button>
                                                                                    <button type="button" class="btnset btn-normal">삭제</button>
                                                                                </div>
                                                                                <div class="addr-btm-right">
                                                                                    <button type="button" class="btnset btn-normal btn-fill-brown">선택</button>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="addr-box">
                                                                            <div class="addr-top">
                                                                                <strong>어머니집</strong>
                                                                            </div>
                                                                            <div class="addr-mid">
                                                                                <p></p>
                                                                                <span>김서로 | 010-000-0000 | 02-000-0000</span>
                                                                            </div>
                                                                            <div class="addr-btm">
                                                                                <div class="addr-btm-left">
                                                                                    <button type="button" class="btnset btn-normal">수정</button>
                                                                                    <button type="button" class="btnset btn-normal">삭제</button>
                                                                                </div>
                                                                                <div class="addr-btm-right">
                                                                                    <button type="button" class="btnset btn-normal btn-fill-brown">선택</button>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="addr-box">
                                                                            <div class="addr-top">
                                                                                <strong>친구집</strong>
                                                                            </div>
                                                                            <div class="addr-mid">
                                                                                <p></p>
                                                                                <span>김서로 | 010-000-0000 | 02-000-0000</span>
                                                                            </div>
                                                                            <div class="addr-btm">
                                                                                <div class="addr-btm-left">
                                                                                    <button type="button" class="btnset btn-normal">수정</button>
                                                                                    <button type="button" class="btnset btn-normal">삭제</button>
                                                                                </div>
                                                                                <div class="addr-btm-right">
                                                                                    <button type="button" class="btnset btn-normal btn-fill-brown">선택</button>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </form>
                                                                    <!----- 2단계 - 배송지 목록(배송지 목록버튼 누르면 팝업으로 뜸) ----->
                                                                    <form name="" method="" action="">
                                                                        <div class="form-box">
                                                                            <div class="left-con">
                                                                                <label for="fm_addr_loc">배송지명</label>
                                                                            </div>
                                                                            <div class="right-con">
                                                                                <div class="addr-loc-box">
                                                                                    <input type="text" name="" id="fm_addr_loc" class="inp-type01">
                                                                                    <div class="chk-box">
                                                                                        <input type="checkbox" name="" id="fm_addr_basic" value=""> <label for="fm_addr_basic">기본배송지로
                                                                                            저장</label>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-box">
                                                                            <div class="left-con">
                                                                                <label for="fm_addr_name">받는사람</label>
                                                                            </div>
                                                                            <div class="right-con">
                                                                                <input type="text" name="" id="fm_addr_name" class="inp-type01">
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-box">
                                                                            <div class="left-con">
                                                                                <label for="fm_addr_hp">핸드폰번호</label>
                                                                            </div>
                                                                            <div class="right-con">
                                                                                <input type="text" name="" id="fm_addr_hp" class="inp-type01">
                                                                            </div>
                                                                        </div>
                                                                        <div class="form-box">
                                                                            <div class="left-con">주소</div>
                                                                            <div class="right-con">
                                                                                <div class="fm-addr-box-wrap">
                                                                                    <div class="fm-addr-numbox">
                                                                                        <label for="fm_addr_zip" class="sound_only">우편번호<strong class="sound_only"> 필수</strong></label> <input type="text" name="fm_addr_zip" id="fm_addr_zip" required class="inp-type01 required" size="8" maxlength="6" placeholder="우편번호">
                                                                                        <button type="button" class="btn_address btnset btn-type03 btn-fill-brown" onclick="win_zip('', 'fm_addr_zip', 'fm_addr_1', 'fm_addr_2', 'fm_addr_3', 'fm_addr_jibeon');">우편번호
                                                                                            검색</button>
                                                                                    </div>
                                                                                    <div class="fm-addr-box">
                                                                                        <input type="text" name="fm_addr_1" id="fm_addr_1" required class="inp-type01 frm_address required" size="60" placeholder="기본주소"> <label for="fm_addr_1" class="sound_only">기본주소<strong>
                                                                                                필수</strong></label> <input type="text" name="fm_addr_2" id="fm_addr_2" class="inp-type01 frm_address" size="60" placeholder="상세주소"> <label for="fm_addr_2" class="sound_only">상세주소</label> <input type="hidden" name="fm_addr_3" value="">
                                                                                        <input type="hidden" name="fm_addr_jibeon" value="">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="btn-confirm-wrap">
                                                                            <button type="submit" class="btnset btn-type04 btn-line-brown">저장</button>
                                                                        </div>
                                                                    </form>
                                                                </div>
                                                                <button type="button" class="btnset btn-pop-close">
                                                                    <span class="hide">팝업창닫기</span>
                                                                </button>
                                                            </div>
                                                        </div>
                                                        <!----- } 배송지목록 입력팝업창 ----->
                                                    </td>
                                                </tr>
<!--                                                 <tr> -->
<!--                                                     <th scope="row"><label for="ad_subject"><span class="f-color">*</span> 배송지명</label></th> -->
<!--                                                     <td> -->
<!--                                                         <div class="ad_default_box"> -->
<!--                                                             <input type="text" name="ad_subject" id="ad_subject" class="inp-type01" maxlength="20"> -->
<!--                                                             <div class="chk-box"> -->
<!--                                                                 <input type="checkbox" name="ad_default" id="ad_default" value="1"> <label for="ad_default">기본배송지로 -->
<!--                                                                     설정</label> -->
<!--                                                             </div> -->
<!--                                                         </div> -->
<!--                                                     </td> -->
<!--                                                 </tr> -->
                                                <tr>
                                                    <th scope="row"><label for="od_b_name"><span class="f-color">*</span> 받으시는분</label></th>
                                                    <td><input type="text" name="delivery_name" id="od_b_name" required class="inp-type01" maxlength="20"></td>
<!--                                                     <td><input type="text" name="od_b_name" id="od_b_name" required class="inp-type01" maxlength="20"></td> -->
                                                </tr>
                                                <tr>
                                                    <th scope="row"><label for="od_b_hp"><span class="f-color">*</span> 핸드폰번호</label></th>
                                                    <td><input type="text" name="delivery_phone" id="od_b_hp" required class="inp-type01" maxlength="20"></td>
<!--                                                     <td><input type="text" name="od_b_hp" id="od_b_hp" required class="inp-type01" maxlength="20"></td> -->
                                                </tr>
                                                <tr>
                                                    <th scope="row"><span class="f-color">*</span> 주소</th>
                                                    <td id="sod_frm_addr">
                                                        <div class="od_address_box">
                                                            <div class="od_address_numbox">
                                                                <label for="od_b_zip" class="sound_only">우편번호<strong class="sound_only"> 필수</strong></label> 
                                                                <input type="text" name="delivery_zip" id="od_b_zip" required class="inp-type01 required" size="8" maxlength="6" placeholder="우편번호">
<!--                                                                 <input type="text" name="od_b_zip" id="od_b_zip" required class="inp-type01 required" size="8" maxlength="6" placeholder="우편번호"> -->
                                                                <button type="button" class="btn_address btnset btn-type03 btn-fill-brown" onclick="win_zip('forderform', 'od_b_zip', 'od_b_addr1', 'od_b_addr2', 'od_b_addr3', 'od_b_addr_jibeon');">우편번호
                                                                    검색</button>
                                                            </div>
                                                            <input type="text" name="delivery_road" id="od_b_addr1" required class="inp-type01 frm_address required" size="60" placeholder="기본주소"> <label for="od_b_addr1" class="sound_only">기본주소<strong>
<!--                                                             <input type="text" name="od_b_addr1" id="od_b_addr1" required class="inp-type01 frm_address required" size="60" placeholder="기본주소"> <label for="od_b_addr1" class="sound_only">기본주소<strong> -->
                                                                    필수</strong></label> 
                                                                    <input type="text" name="delivery_address" id="od_b_addr2" class="inp-type01 frm_address" size="60" placeholder="상세주소"> <label for="od_b_addr2" class="sound_only">상세주소</label> <input type="hidden" name="od_b_addr3" value=""> <input type="hidden" name="od_b_addr_jibeon" value="">
<!--                                                                     <input type="text" name="od_b_addr2" id="od_b_addr2" class="inp-type01 frm_address" size="60" placeholder="상세주소"> <label for="od_b_addr2" class="sound_only">상세주소</label> <input type="hidden" name="od_b_addr3" value=""> <input type="hidden" name="od_b_addr_jibeon" value=""> -->
                                                        </div>
                                                    </td>
                                                </tr>
                                                <!-- 주문시 요청사항 항목 추가됨. -->
                                                <tr>
                                                    <th scope="row"><label for="od_b_request">배송
                                                            요청사항</label></th>
                                                    <td>
                                                        <div class="b_box">
                                                            <select name="delivery_request" id="od_b_request" class="deco-select">
<!--                                                             <select name="od_b_request" id="od_b_request" class="deco-select"> -->
                                                                <option value="선택 안함">배송시 요청사항을 선택해 주세요.</option>
                                                                <option value="직접 수령하겠습니다.">직접 수령하겠습니다.</option>
                                                                <option value="배송 전 연락바랍니다.">배송 전 연락바랍니다.</option>
                                                                <option value="부재 시 경비실에 맡겨주세요.">부재 시 경비실에
                                                                    맡겨주세요.</option>
                                                                <option value="부재 시 문 앞에 놓아주세요.">부재 시 문 앞에
                                                                    놓아주세요.</option>
                                                                <option value="부재 시 택배함에 넣어주세요.">부재 시 택배함에
                                                                    넣어주세요.</option>
                                                                <option value="1">직접입력</option>
                                                            </select>
                                                            <div id="od_b_request_txtbox" class="od_request_txtbox" style="display: none;">
                                                                <textarea name="od_memo" id="od_memo" cols="30" rows="10" class="textarea-type01" style="resize: none;"></textarea>
                                                            </div>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <!--
                                    <tr>
                                        <th scope="row"><label for="od_memo">전하실말씀</label></th>
                                        <td><textarea name="od_memo" id="od_memo"></textarea></td>
                                    </tr>
                                    -->
                                            </tbody>
                                        </table>
                                    </div>
                                </section>
                                <!-- } 받으시는 분 입력 끝 -->
                            </div>

                            <div class="sod_right">


                                <section id="sod_frm_pay">
                                    <div class="sod_right_box sod_right_box2">
                                        <h3 class="sod_right_box_tit">최종 결제 금액</h3>
                                        <div class="pay_tbl">
                                            <table>
                                                <tbody>
                                                    <tr>
                                                        <th scope="row">상품 합계</th>
                                                        <td><strong>${total_price}</strong> 원</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">배송비</th>
                                                        <td><strong>+</strong> <strong>2,000</strong> 원</td>
                                                    </tr>
                                                    <tr>
                                                        <th>추가배송비</th>
                                                        <td><strong>+</strong> <strong id="od_send_cost2">0</strong>
                                                            원
                                                            <p class="sod_sm_txt">(지역에 따라 추가되는 도선료 등의 배송비입니다.)</p>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">쿠폰적용</th>
                                                        <td><strong>-</strong> <strong id="od_cp_price2">0</strong>
                                                            원</td>
                                                    </tr>
                                                    <tr>
                                                        <th scope="row">적립예상 마일리지</th>
                                                        <td><strong>+</strong> <strong>3,000</strong> 점</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div id="od_tot_price">
                                            <span>최종 결제 금액</span>
                                            <div>
                                                <strong class="print_price">${total_price+2000}</strong>원
                                            </div>
                                        </div>
                                    </div>

                                    <div class="sod_right_box sod_right_box3">
                                        <div id="od_pay_sl">
                                            <div class="od_pay_buttons_el">
                                                <h3 class="sod_right_box_tit">결제수단</h3>
                                                <p id="sod_frm_pt_alert">
                                                    * <strong>무통장입금</strong> 이외의 결제 수단으로 결제하시는 경우 마일리지를 적립해드리지
                                                    않습니다.
                                                </p>
                                                <fieldset id="sod_frm_paysel">
                                                    <legend>결제방법 선택</legend>
                                                    <input type="radio" id="od_settle_bank" name="od_settle_case" value="무통장"> <label for="od_settle_bank" class="lb_icon bank_icon">무통장입금</label>

                                                    <div id="settle_bank" style="display: none">
                                                        <label for="od_bank_account" class="sound_only">입금할
                                                            계좌</label><input type="hidden" name="od_bank_account" value="OO은행 12345-67-89012 예금주명">OO은행
                                                        12345-67-89012 예금주명 <br>
                                                        <div class="od_bank_person">
                                                            <label for="od_deposit_name">입금자명</label> <input type="text" name="od_deposit_name" id="od_deposit_name" size="10" maxlength="20">
                                                        </div>
                                                    </div>
                                                </fieldset>
                                                <div class="sod_frm_point">
                                                    <div class="sod_use_point_box">
                                                        <label for="od_temp_point">사용 마일리지<span>(100점
                                                                단위)</span></label> <input type="hidden" name="max_temp_point" value="0">
                                                        <input type="text" name="od_temp_point" value="0" id="od_temp_point" size="7"> 점
                                                    </div>
                                                    <div class="sod_my_point_box" id="sod_frm_pt">
                                                        <div>
                                                            <span>보유 마일리지</span> <strong>0</strong> 점
                                                        </div>
                                                        <div class="max_point_box">
                                                            <span>최대 사용 가능 마일리지</span> <em id="use_max_point"><strong>0</strong>
                                                                점</em>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                                <!-- } 결제 정보 입력 끝 -->


                                <div id="display_pay_button" class="btn_confirm">
                                    <input type="button" value="주문하기" onclick="forderform_check(this.form);" class="btn_submit">
                                    <a href="javascript:history.go(-1);" class="btn01">취소하기</a>
                                </div>
                                <div id="display_pay_process" style="display: none">
                                    <img src="../home/shop/img/loading.gif" alt=""> <span>주문완료
                                        중입니다. 잠시만 기다려 주십시오.</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>

            <script>
                var zipcode = "";
                var form_action_url = "https://bxgs.co.kr/shop/orderformupdate.php";

                $(function() {
                    var $cp_btn_el;
                    var $cp_row_el;

                    $(".cp_btn")
                        .click(
                            function() {
                                $cp_btn_el = $(this);
                                $cp_row_el = $(this).closest("tr");
                                $("#cp_frm").parent('.od_coupon_wrap')
                                    .remove();
                                var it_id = $cp_btn_el.closest("tr")
                                    .find("input[name^=it_id]")
                                    .val();

                                $.post("./orderitemcoupon.php", {
                                    it_id: it_id,
                                    sw_direct: "1"
                                }, function(data) {
                                    $cp_btn_el.after(data);
                                });
                            });

                    $(document)
                        .on(
                            "click",
                            ".cp_apply",
                            function() {
                                var $el = $(this).closest("tr");
                                var cp_id = $el.find(
                                        "input[name='f_cp_id[]']")
                                    .val();
                                var price = $el.find(
                                        "input[name='f_cp_prc[]']")
                                    .val();
                                var subj = $el.find(
                                        "input[name='f_cp_subj[]']")
                                    .val();
                                var sell_price;

                                if (parseInt(price) == 0) {
                                    if (!confirm(subj + "쿠폰의 할인 금액은 " +
                                            price +
                                            "원입니다.\n쿠폰을 적용하시겠습니까?")) {
                                        return false;
                                    }
                                }

                                // 이미 사용한 쿠폰이 있는지
                                var cp_dup = false;
                                var cp_dup_idx;
                                var $cp_dup_el;
                                $("input[name^=cp_id]").each(
                                    function(index) {
                                        var id = $(this).val();

                                        if (id == cp_id) {
                                            cp_dup_idx = index;
                                            cp_dup = true;
                                            $cp_dup_el = $(this)
                                                .closest("tr");;

                                            return false;
                                        }
                                    });

                                if (cp_dup) {
                                    var it_name = $(
                                        "input[name='it_name[" +
                                        cp_dup_idx +
                                        "]']").val();
                                    if (!confirm(subj + "쿠폰은 " +
                                            it_name + "에 사용되었습니다.\n" +
                                            it_name +
                                            "의 쿠폰을 취소한 후 적용하시겠습니까?")) {
                                        return false;
                                    } else {
                                        coupon_cancel($cp_dup_el);
                                        $("#cp_frm").parent(
                                                '.od_coupon_wrap')
                                            .remove();
                                        $cp_dup_el.find(".cp_btn")
                                            .text("쿠폰적용").focus();
                                        $cp_dup_el.find(".cp_cancel")
                                            .remove();
                                    }
                                }

                                var $s_el = $cp_row_el
                                    .find(".total_price");;
                                sell_price = parseInt($cp_row_el.find(
                                    "input[name^=it_price]").val());
                                sell_price = sell_price -
                                    parseInt(price);
                                if (sell_price < 0) {
                                    alert("쿠폰할인금액이 상품 주문금액보다 크므로 쿠폰을 적용할 수 없습니다.");
                                    return false;
                                }
                                $s_el
                                    .text(number_format(String(sell_price)));
                                $cp_row_el.find("input[name^=cp_id]")
                                    .val(cp_id);
                                $cp_row_el
                                    .find("input[name^=cp_price]")
                                    .val(price);

                                calculate_total_price();
                                $("#cp_frm").parent('.od_coupon_wrap')
                                    .remove();
                                $cp_btn_el.text("변경").focus();
                                if (!$cp_row_el.find(".cp_cancel").length)
                                    $cp_btn_el
                                    .after("<button type=\"button\" class=\"cp_cancel\">취소</button>");
                            });

                    $(document).on("click", "#cp_close", function() {
                        $("#cp_frm").parent('.od_coupon_wrap').remove();
                        $cp_btn_el.focus();
                    });

                    $(document)
                        .on(
                            "click",
                            ".cp_cancel",
                            function() {
                                coupon_cancel($(this).closest("tr"));
                                calculate_total_price();
                                $("#cp_frm").parent('.od_coupon_wrap')
                                    .remove();
                                $(this).closest("tr").find(".cp_btn")
                                    .text("쿠폰적용").focus();
                                $(this).remove();
                            });

                    $("#od_coupon_btn").click(
                        function() {
                            if ($("#od_coupon_frm").parent(
                                    ".od_coupon_wrap").length) {
                                $("#od_coupon_frm").parent(
                                    ".od_coupon_wrap").remove();
                            }
                            $("#od_coupon_frm").remove();
                            var $this = $(this);
                            var price = parseInt($(
                                    "input[name=org_od_price]").val()) -
                                parseInt($("input[name=item_coupon]")
                                    .val());
                            if (price <= 0) {
                                alert('상품금액이 0원이므로 쿠폰을 사용할 수 없습니다.');
                                return false;
                            }
                            $.post("./ordercoupon.php", {
                                price: price
                            }, function(data) {
                                $this.after(data);
                            });
                        });

                    $(document)
                        .on(
                            "click",
                            ".od_cp_apply",
                            function() {
                                var $el = $(this).closest("tr");
                                var cp_id = $el.find(
                                        "input[name='o_cp_id[]']")
                                    .val();
                                var price = parseInt($el.find(
                                        "input[name='o_cp_prc[]']")
                                    .val());
                                var subj = $el.find(
                                        "input[name='o_cp_subj[]']")
                                    .val();
                                var send_cost = $(
                                        "input[name=od_send_cost]")
                                    .val();
                                var item_coupon = parseInt($(
                                        "input[name=item_coupon]")
                                    .val());
                                var od_price = parseInt($(
                                            "input[name=org_od_price]")
                                        .val()) -
                                    item_coupon;

                                if (price == 0) {
                                    if (!confirm(subj + "쿠폰의 할인 금액은 " +
                                            price +
                                            "원입니다.\n쿠폰을 적용하시겠습니까?")) {
                                        return false;
                                    }
                                }

                                if (od_price - price <= 0) {
                                    alert("쿠폰할인금액이 주문금액보다 크므로 쿠폰을 적용할 수 없습니다.");
                                    return false;
                                }

                                $("input[name=sc_cp_id]").val("");
                                $("#sc_coupon_btn").text("쿠폰적용");
                                $("#sc_coupon_cancel").remove();

                                $("input[name=od_price]").val(
                                    od_price - price);
                                $("input[name=od_cp_id]").val(cp_id);
                                $("input[name=od_coupon]").val(price);
                                $("input[name=od_send_coupon]").val(0);
                                $("#od_cp_price").text(
                                    number_format(String(price)));
                                $("#od_cp_price2").text(
                                    number_format(String(price)));
                                $("#sc_cp_price").text(0);
                                calculate_order_price();
                                if ($("#od_coupon_frm").parent(
                                        ".od_coupon_wrap").length) {
                                    $("#od_coupon_frm").parent(
                                        ".od_coupon_wrap").remove();
                                }
                                $("#od_coupon_frm").remove();
                                $("#od_coupon_btn").text("변경").focus();
                                if (!$("#od_coupon_cancel").length)
                                    $("#od_coupon_btn")
                                    .after(
                                        "<button type=\"button\" id=\"od_coupon_cancel\" class=\"cp_cancel\">취소</button>");
                            });

                    $(document).on(
                        "click",
                        "#od_coupon_close",
                        function() {
                            if ($("#od_coupon_frm").parent(
                                    ".od_coupon_wrap").length) {
                                $("#od_coupon_frm").parent(
                                    ".od_coupon_wrap").remove();
                            }
                            $("#od_coupon_frm").remove();
                            $("#od_coupon_btn").focus();
                        });

                    $(document).on(
                        "click",
                        "#od_coupon_cancel",
                        function() {
                            var org_price = $("input[name=org_od_price]")
                                .val();
                            var item_coupon = parseInt($(
                                "input[name=item_coupon]").val());
                            $("input[name=od_price]").val(
                                org_price - item_coupon);
                            $("input[name=sc_cp_id]").val("");
                            $("input[name=od_coupon]").val(0);
                            $("input[name=od_send_coupon]").val(0);
                            $("#od_cp_price").text(0);
                            $("#od_cp_price2").text(0);
                            $("#sc_cp_price").text(0);
                            calculate_order_price();
                            if ($("#od_coupon_frm").parent(
                                    ".od_coupon_wrap").length) {
                                $("#od_coupon_frm").parent(
                                    ".od_coupon_wrap").remove();
                            }
                            $("#od_coupon_frm").remove();
                            $("#od_coupon_btn").text("쿠폰적용").focus();
                            $(this).remove();
                            $("#sc_coupon_btn").text("쿠폰적용");
                            $("#sc_coupon_cancel").remove();
                        });

                    $("#sc_coupon_btn").click(
                        function() {
                            $("#sc_coupon_frm").remove();
                            var $this = $(this);
                            var price = parseInt($("input[name=od_price]")
                                .val());
                            var send_cost = parseInt($(
                                "input[name=od_send_cost]").val());
                            $.post("./ordersendcostcoupon.php", {
                                price: price,
                                send_cost: send_cost
                            }, function(data) {
                                $this.after(data);
                            });
                        });

                    $(document)
                        .on(
                            "click",
                            ".sc_cp_apply",
                            function() {
                                var $el = $(this).closest("tr");
                                var cp_id = $el.find(
                                        "input[name='s_cp_id[]']")
                                    .val();
                                var price = parseInt($el.find(
                                        "input[name='s_cp_prc[]']")
                                    .val());
                                var subj = $el.find(
                                        "input[name='s_cp_subj[]']")
                                    .val();
                                var send_cost = parseInt($(
                                        "input[name=od_send_cost]")
                                    .val());

                                if (parseInt(price) == 0) {
                                    if (!confirm(subj + "쿠폰의 할인 금액은 " +
                                            price +
                                            "원입니다.\n쿠폰을 적용하시겠습니까?")) {
                                        return false;
                                    }
                                }

                                $("input[name=sc_cp_id]").val(cp_id);
                                $("input[name=od_send_coupon]").val(
                                    price);
                                $("#sc_cp_price").text(
                                    number_format(String(price)));
                                calculate_order_price();
                                $("#sc_coupon_frm").remove();
                                $("#sc_coupon_btn").text("변경").focus();
                                if (!$("#sc_coupon_cancel").length)
                                    $("#sc_coupon_btn")
                                    .after(
                                        "<button type=\"button\" id=\"sc_coupon_cancel\" class=\"cp_cancel\">취소</button>");
                            });

                    $(document).on("click", "#sc_coupon_close", function() {
                        $("#sc_coupon_frm").remove();
                        $("#sc_coupon_btn").focus();
                    });

                    $(document).on("click", "#sc_coupon_cancel", function() {
                        $("input[name=od_send_coupon]").val(0);
                        $("#sc_cp_price").text(0);
                        calculate_order_price();
                        $("#sc_coupon_frm").remove();
                        $("#sc_coupon_btn").text("쿠폰적용").focus();
                        $(this).remove();
                    });

                    $("#od_b_addr2").focus(function() {
                        var zip = $("#od_b_zip").val().replace(/[^0-9]/g, "");
                        if (zip == "")
                            return false;

                        var code = String(zip);

                        if (zipcode == code)
                            return false;

                        zipcode = code;
                        calculate_sendcost(code);
                    });

                    $("#od_settle_bank").on(
                        "click",
                        function() {
                            $("[name=od_deposit_name]").val(
                                $("[name=od_name]").val());
                            $("#settle_bank").show();
                        });

                    $(
                            "#od_settle_iche,#od_settle_card,#od_settle_vbank,#od_settle_hp,#od_settle_easy_pay,#od_settle_kakaopay,#od_settle_nhnkcp_payco,#od_settle_nhnkcp_naverpay,#od_settle_nhnkcp_kakaopay,#od_settle_inicislpay,#od_settle_inicis_kakaopay")
                        .bind("click", function() {
                            $("#settle_bank").hide();
                        });

                    // 배송지선택
                    $("input[name=ad_sel_addr]").on(
                        "click",
                        function() {
                            var addr = $(this).val().split(
                                String.fromCharCode(30));

                            if (addr[0] == "same") {
                                gumae2baesong();
                            } else {
                                if (addr[0] == "new") {
                                    for (i = 0; i < 10; i++) {
                                        addr[i] = "";
                                    }
                                }

                                var f = document.forderform;
                                f.od_b_name.value = addr[0];
                                f.od_b_tel.value = addr[1];
                                f.od_b_hp.value = addr[2];
                                f.od_b_zip.value = addr[3] + addr[4];
                                f.od_b_addr1.value = addr[5];
                                f.od_b_addr2.value = addr[6];
                                f.od_b_addr3.value = addr[7];
                                f.od_b_addr_jibeon.value = addr[8];
                                f.ad_subject.value = addr[9];

                                var zip1 = addr[3].replace(/[^0-9]/g, "");
                                var zip2 = addr[4].replace(/[^0-9]/g, "");

                                var code = String(zip1) + String(zip2);

                                if (zipcode != code) {
                                    calculate_sendcost(code);
                                }
                            }
                        });

                    // 배송지목록
                    /*
                    $("#order_address").on("click", function() {
                        var url = this.href;
                        window.open(url, "win_address", "left=100,top=100,width=800,height=600,scrollbars=1");
                        return false;
                    });
                     */

                    // ----- 주문시 요청사항 선택 스크립트 추가
                    $('#od_request').change(function() {
                        $("#od_request option:selected").each(function() {
                            if ($(this).val() == '1') { //직접입력일 경우
                                $("#od_request_txtbox").show();
                            } else { //직접입력이 아닐경우
                                $("#od_request_txtbox").hide();
                            }
                        });
                    });

                    $('#od_b_request').change(function() {
                        $("#od_b_request option:selected").each(function() {
                            if (this.value == '') { //미선택
                                $("#od_b_request_txtbox").hide();
                                $('#od_memo').text('');
                            } else if (this.value == '1') { //직접입력일 경우
                                $("#od_b_request_txtbox").show();
                                $('#od_memo').text('');
                            } else { //직접입력이 아닐경우
                                $("#od_b_request_txtbox").hide();
                                $('#od_memo').text(this.value);
                            }
                        });
                    });
                });

                function coupon_cancel($el) {
                    var $dup_sell_el = $el.find(".total_price");
                    var $dup_price_el = $el.find("input[name^=cp_price]");
                    var org_sell_price = $el.find("input[name^=it_price]")
                        .val();

                    $dup_sell_el.text(number_format(String(org_sell_price)));
                    $dup_price_el.val(0);
                    $el.find("input[name^=cp_id]").val("");
                }

                function calculate_total_price() {
                    var $it_prc = $("input[name^=it_price]");
                    var $cp_prc = $("input[name^=cp_price]");
                    var tot_sell_price = sell_price = tot_cp_price = 0;
                    var it_price, cp_price, it_notax;
                    var tot_mny = comm_tax_mny = comm_vat_mny = comm_free_mny = tax_mny = vat_mny = 0;
                    var send_cost = parseInt($("input[name=od_send_cost]")
                        .val());

                    $it_prc.each(function(index) {
                        it_price = parseInt($(this).val());
                        cp_price = parseInt($cp_prc.eq(index).val());
                        sell_price += it_price;
                        tot_cp_price += cp_price;
                    });

                    tot_sell_price = sell_price - tot_cp_price + send_cost;

                    $("#ct_tot_coupon").text(
                        number_format(String(tot_cp_price)));
                    $("#ct_tot_price").text(
                        number_format(String(tot_sell_price)));

                    $("input[name=good_mny]").val(tot_sell_price);
                    $("input[name=od_price]").val(sell_price - tot_cp_price);
                    $("input[name=item_coupon]").val(tot_cp_price);
                    $("input[name=od_coupon]").val(0);
                    $("input[name=od_send_coupon]").val(0);
                    $("input[name=od_temp_point]").val(0);
                    calculate_order_price();
                }

                function calculate_order_price() {
                    var sell_price = parseInt($("input[name=od_price]").val());
                    var send_cost = parseInt($("input[name=od_send_cost]")
                        .val());
                    var send_cost2 = parseInt($("input[name=od_send_cost2]")
                        .val());
                    var send_coupon = parseInt($("input[name=od_send_coupon]")
                        .val());
                    var tot_price = sell_price + send_cost + send_cost2 -
                        send_coupon;

                    $("input[name=good_mny]").val(tot_price);
                    $("#od_tot_price .print_price").text(
                        number_format(String(tot_price)));
                }

                function calculate_temp_point() {
                    var sell_price = parseInt($("input[name=od_price]").val());
                    var mb_point = parseInt(0);
                    var max_point = parseInt(50000);
                    var point_unit = parseInt(100);
                    var temp_point = max_point;

                    if (temp_point > sell_price)
                        temp_point = sell_price;

                    if (temp_point > mb_point)
                        temp_point = mb_point;

                    temp_point = parseInt(temp_point / point_unit) * point_unit;

                    //$("#use_max_point").text("<strong>"+number_format(String(temp_point))+"</strong> 점");
                    $("#use_max_point").text(
                        number_format(String(temp_point)) + "점");
                    $("input[name=max_temp_point]").val(temp_point);
                }

                function calculate_sendcost(code) {
                    $.post("./ordersendcost.php", {
                        zipcode: code
                    }, function(data) {
                        $("input[name=od_send_cost2]").val(data);
                        $("#od_send_cost2").text(number_format(String(data)));

                        zipcode = code;

                        calculate_order_price();
                    });
                }

                function calculate_tax() {
                    var $it_prc = $("input[name^=it_price]");
                    var $cp_prc = $("input[name^=cp_price]");
                    var sell_price = tot_cp_price = 0;
                    var it_price, cp_price, it_notax;
                    var tot_mny = comm_free_mny = tax_mny = vat_mny = 0;
                    var send_cost = parseInt($("input[name=od_send_cost]")
                        .val());
                    var send_cost2 = parseInt($("input[name=od_send_cost2]")
                        .val());
                    var od_coupon = parseInt($("input[name=od_coupon]").val());
                    var send_coupon = parseInt($("input[name=od_send_coupon]")
                        .val());
                    var temp_point = 0;

                    $it_prc.each(function(index) {
                        it_price = parseInt($(this).val());
                        cp_price = parseInt($cp_prc.eq(index).val());
                        sell_price += it_price;
                        tot_cp_price += cp_price;
                        it_notax = $("input[name^=it_notax]").eq(index).val();
                        if (it_notax == "1") {
                            comm_free_mny += (it_price - cp_price);
                        } else {
                            tot_mny += (it_price - cp_price);
                        }
                    });

                    if ($("input[name=od_temp_point]").length)
                        temp_point = parseInt($("input[name=od_temp_point]")
                            .val());

                    tot_mny += (send_cost + send_cost2 - od_coupon -
                        send_coupon - temp_point);
                    if (tot_mny < 0) {
                        comm_free_mny = comm_free_mny + tot_mny;
                        tot_mny = 0;
                    }

                    tax_mny = Math.round(tot_mny / 1.1);
                    vat_mny = tot_mny - tax_mny;
                    $("input[name=comm_tax_mny]").val(tax_mny);
                    $("input[name=comm_vat_mny]").val(vat_mny);
                    $("input[name=comm_free_mny]").val(comm_free_mny);
                }

                function forderform_check(f) {
                    // 재고체크
                    var stock_msg = order_stock_check();
                    if (stock_msg != "") {
                        alert(stock_msg);
                        return false;
                    }

                    errmsg = "";
                    errfld = "";
                    var deffld = "";

                    check_field(f.od_name, "주문하시는 분 이름을 입력하십시오.");
                    if (typeof(f.od_pwd) != 'undefined') {
                        clear_field(f.od_pwd);
                        if ((f.od_pwd.value.length < 3) ||
                            (f.od_pwd.value.search(/([^A-Za-z0-9]+)/) != -1))
                            error_field(f.od_pwd,
                                "회원이 아니신 경우 주문서 조회시 필요한 비밀번호를 3자리 이상 입력해 주십시오.");
                    }
                    check_field(f.od_hp, "주문하시는 분 핸드폰번호를 입력하십시오.");
                    //check_field(f.od_tel, "주문하시는 분 전화번호를 입력하십시오.");
                    check_field(f.od_addr1, "주소검색을 이용하여 주문하시는 분 주소를 입력하십시오.");
                    //check_field(f.od_addr2, " 주문하시는 분의 상세주소를 입력하십시오.");
                    check_field(f.od_zip, "");

                    clear_field(f.od_email);
                    if (f.od_email.value == '' ||
                        f.od_email.value.search(/(\S+)@(\S+)\.(\S+)/) == -1)
                        error_field(f.od_email, "이메일을 바르게 입력해 주십시오.");

                    if (typeof(f.od_hope_date) != "undefined") {
                        clear_field(f.od_hope_date);
                        if (!f.od_hope_date.value)
                            error_field(f.od_hope_date, "희망배송일을 선택하여 주십시오.");
                    }

                    check_field(f.od_b_name, "받으시는 분 이름을 입력하십시오.");
                    check_field(f.od_b_hp, "받으시는 분 핸드폰번호를 입력하십시오.");
                    //check_field(f.od_b_tel, "받으시는 분 전화번호를 입력하십시오.");
                    check_field(f.od_b_addr1, "주소검색을 이용하여 받으시는 분 주소를 입력하십시오.");
                    //check_field(f.od_b_addr2, "받으시는 분의 상세주소를 입력하십시오.");
                    check_field(f.od_b_zip, "");

                    var od_settle_bank = document
                        .getElementById("od_settle_bank");
                    if (od_settle_bank) {
                        if (od_settle_bank.checked) {
                            check_field(f.od_bank_account, "계좌번호를 선택하세요.");
                            check_field(f.od_deposit_name, "입금자명을 입력하세요.");
                        }
                    }

                    // 배송비를 받지 않거나 더 받는 경우 아래식에 + 또는 - 로 대입
                    f.od_send_cost.value = parseInt(f.od_send_cost.value);

                    if (errmsg) {
                        alert(errmsg);
                        errfld.focus();
                        return false;
                    }

                    var settle_case = document
                        .getElementsByName("od_settle_case");
                    var settle_check = false;
                    var settle_method = "";

                    for (i = 0; i < settle_case.length; i++) {
                        if (settle_case[i].checked) {
                            settle_check = true;
                            settle_method = settle_case[i].value;
                            break;
                        }
                    }
                    if (!settle_check) {
                        alert("결제방식을 선택하십시오.");
                        return false;
                    }

                    var od_price = parseInt(f.od_price.value);
                    var send_cost = parseInt(f.od_send_cost.value);
                    var send_cost2 = parseInt(f.od_send_cost2.value);
                    var send_coupon = parseInt(f.od_send_coupon.value);

                    var max_point = 0;
                    if (typeof(f.max_temp_point) != "undefined")
                        max_point = parseInt(f.max_temp_point.value);

                    var temp_point = 0;
                    if (typeof(f.od_temp_point) != "undefined") {
                        var point_unit = parseInt(100);
                        temp_point = parseInt(f.od_temp_point.value) || 0;

                        if (f.od_temp_point.value) {
                            if (temp_point > od_price) {
                                alert("상품 주문금액(배송비 제외) 보다 많이 마일리지를 결제할 수 없습니다.");
                                f.od_temp_point.select();
                                return false;
                            }

                            if (temp_point > 0) {
                                alert("회원님의 마일리지보다 많이 결제할 수 없습니다.");
                                f.od_temp_point.select();
                                return false;
                            }

                            if (temp_point > max_point) {
                                alert(max_point + "점 이상 결제할 수 없습니다.");
                                f.od_temp_point.select();
                                return false;
                            }

                            if (parseInt(parseInt(temp_point / point_unit) *
                                    point_unit) != temp_point) {
                                alert("마일리지를 " + String(point_unit) +
                                    "점 단위로 입력하세요.");
                                f.od_temp_point.select();
                                return false;
                            }
                        }

                        // pg 결제 금액에서 포인트 금액 차감
                        if (settle_method != "무통장") {
                            f.good_mny.value = od_price + send_cost +
                                send_cost2 - send_coupon - temp_point;
                        }
                    }

                    var tot_price = od_price + send_cost + send_cost2 -
                        send_coupon - temp_point;

                    if (document.getElementById("od_settle_iche")) {
                        if (document.getElementById("od_settle_iche").checked) {
                            if (tot_price < 150) {
                                alert("계좌이체는 150원 이상 결제가 가능합니다.");
                                return false;
                            }
                        }
                    }

                    if (document.getElementById("od_settle_card")) {
                        if (document.getElementById("od_settle_card").checked) {
                            if (tot_price < 1000) {
                                alert("신용카드는 1000원 이상 결제가 가능합니다.");
                                return false;
                            }
                        }
                    }

                    if (document.getElementById("od_settle_hp")) {
                        if (document.getElementById("od_settle_hp").checked) {
                            if (tot_price < 350) {
                                alert("휴대폰은 350원 이상 결제가 가능합니다.");
                                return false;
                            }
                        }
                    }

                    // 카카오페이 지불
                    if (settle_method == "KAKAOPAY") {
                        getTxnId(f);
                        return false;
                    }

                    var form_order_method = '';

                    if (settle_method == "lpay" ||
                        settle_method == "inicis_kakaopay") { //이니시스 L.pay 또는 이니시스 카카오페이 이면 ( 이니시스의 삼성페이는 모바일에서만 단독실행 가능함 )
                        form_order_method = 'samsungpay';
                    } else if (settle_method == "간편결제") {
                        if (jQuery("input[name='od_settle_case']:checked")
                            .attr("data-pay") === "naverpay") {
                            form_order_method = 'nhnkcp_naverpay';
                        }
                    }

                    if (jQuery(f).triggerHandler(
                            "form_sumbit_order_" + form_order_method) !== false) {

                        // pay_method 설정
                        f.site_cd.value = f.def_site_cd.value;
                        if (typeof f.payco_direct !== "undefined")
                            f.payco_direct.value = "";
                        if (typeof f.naverpay_direct !== "undefined")
                            f.naverpay_direct.value = "A";
                        if (typeof f.kakaopay_direct !== "undefined")
                            f.kakaopay_direct.value = "A";
                        switch (settle_method) {
                            case "계좌이체":
                                f.pay_method.value = "010000000000";
                                break;
                            case "가상계좌":
                                f.pay_method.value = "001000000000";
                                break;
                            case "휴대폰":
                                f.pay_method.value = "000010000000";
                                break;
                            case "신용카드":
                                f.pay_method.value = "100000000000";
                                break;
                            case "간편결제":
                                f.pay_method.value = "100000000000";

                                var nhnkcp_easy_pay = jQuery(
                                        "input[name='od_settle_case']:checked")
                                    .attr("data-pay");

                                if (nhnkcp_easy_pay === "naverpay") {
                                    if (typeof f.naverpay_direct !== "undefined")
                                        f.naverpay_direct.value = "Y";
                                } else if (nhnkcp_easy_pay === "kakaopay") {
                                    if (typeof f.kakaopay_direct !== "undefined")
                                        f.kakaopay_direct.value = "Y";
                                } else {
                                    if (typeof f.payco_direct !== "undefined")
                                        f.payco_direct.value = "Y";
                                    f.site_cd.value = "S6729";
                                }

                                break;
                            default:
                                f.pay_method.value = "무통장";
                                break;
                        }

                        // 결제정보설정
                        f.buyr_name.value = f.od_name.value;
                        f.buyr_mail.value = f.od_email.value;
//                         f.buyr_tel1.value = f.od_tel.value;
                        f.buyr_tel2.value = f.od_hp.value;
                        f.rcvr_name.value = f.od_b_name.value;
//                         f.rcvr_tel1.value = f.od_b_tel.value;
                        f.rcvr_tel2.value = f.od_b_hp.value;
                        f.rcvr_mail.value = f.od_email.value;
                        f.rcvr_zipx.value = f.od_b_zip.value;
                        f.rcvr_add1.value = f.od_b_addr1.value;
                        f.rcvr_add2.value = f.od_b_addr2.value;

                        if (f.pay_method.value != "무통장") {
                            jsf__pay(f);
                        } else {
                            f.submit();
                        }
                    }

                }//forderform_check()

                // 구매자 정보와 동일합니다.
                function gumae2baesong() {
                    var f = document.forderform;

                    f.od_b_name.value = f.od_name.value;
                    f.od_b_hp.value = f.od_hp.value;
                    f.od_b_zip.value = f.od_zip.value;
                    f.od_b_addr1.value = f.od_addr1.value;
                    f.od_b_addr2.value = f.od_addr2.value;
                    f.od_b_addr3.value = f.od_addr3.value;
                    f.od_b_addr_jibeon.value = f.od_addr_jibeon.value;

                    calculate_sendcost(String(f.od_b_zip.value));
                }//gumae2baesong()
            </script>
        </main>

        <!-- header 부분 시작 -->
        <%@ include file="../top/footer.jsp"%>
        <!-- header 부분 끝 -->

        <div id="gotop">
            <a href="javascript:;"><span class="hide">맨위로가기</span></a>
        </div>
    </div>


    <script src="../home/js/sns.js"></script>
    <script src="../home/theme/buzinga/js/css3-animate-it.js"></script>
    <link rel="stylesheet" href="../home/theme/buzinga/css/animate.css">
    <script src="../home/theme/buzinga/js/base.js"></script>
    <script src="../home/theme/buzinga/js/sub.js"></script>

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