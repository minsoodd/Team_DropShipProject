<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="ko">


<!-- Mirrored from prod.danawa.com/list/popup/compareProduct.php?productCodes=14989751%7C17649782 by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 04 Apr 2023 08:13:32 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="apple-mobile-web-app-title" content="DANAWA" />
<meta name="viewport" content="width=1262" />
<meta name="keywords" content="[다나와 상품비교]  삼성전자 갤럭시 워치4 44mm 알루미늄(일반구매)" />
<meta name="description" content="비교하고 잘 사는, 다나와" />

<meta property="og:title" content="[다나와 상품비교]  삼성전자 갤럭시 워치4 44mm 알루미늄(일반구매)" />
<meta property="og:image" content="../home/forcompare/img.danawa.com/prod_img/500000/751/989/img/14989751_10dfb.jpg?shrink=130:130" />
<meta property="og:description" content="비교하고 잘 사는, 다나와" />

<title>작품비교</title>

<link rel="stylesheet" type="text/css"
	href="../home/forcompare/static.danawa.com/css/prod.compare.v11b20.css?v=2210111620">
<link rel="stylesheet" type="text/css"
	href="../home/forcompare/static.danawa.com/new/recss/wish_pop1b20.css?v=2210111620">
</head>

<body class="popup_window_body" cz-shortcut-listen="true">
	<div id="skip_navigation">
		<a href="#danawa_pop_content"><span>본문으로 바로가기</span></a>
	</div>
	<div class="popup_window popup_compare_prod" id="danawa_pop_content">
		<div class="popup_header">
			<h1 class="popup_headline">DropShip - 작품비교</h1>
		</div>
		<p style="font-size:15px; padding-top:5px;">&nbsp;&nbsp;&nbsp;#이미지 클릭시 드랍쉴 갤러리의 <strong><span style="color:blue;">해당 작품 페이지로 이동</span></strong>합니다#<p>
		
		<div class="popup_body">
			<div id="productCompareArea" class="compare_wrap fixed_table"
				data-productcodes="14989751|17649782">
				<div class="fix_area fix_area_top" style="height: 267px;">
					<div class="fix_head fix_head_top">
						<div class="fix_scroll scroll_head_top" id="scroll_head_top">
							<table class="comp_table pop_fix_table fix_table_title">
								<caption>상품 기본 정보 항목</caption>
								<tbody>
									<tr>
										<th>
											<div class="th_name">이미지</div>
										</th>
									</tr>
									<tr>
										<th>
											<div class="th_name">작품명</div>
										</th>
									</tr>
									<tr>
										<th>
											<div class="th_name">판매 가격</div>
										</th>
									</tr>
								</tbody>
							</table>
						</div>
					</div>

					<div class="fix_data fix_data_top">
						<div class="fix_scroll scroll_data_top scroll_hide"
							id="scroll_data_top">
							<table class="comp_table pop_fix_table fix_table_data">
								<caption>상품 기본 정보</caption>
								<tbody>
									<tr>
										<th scope="row">
											<div class="th_name">이미지</div>
										</th>
										<c:forEach items="${compareWorkVoList}" var="compareWorkVo">
										<td class="compareProductItem_14989751">
											<div class="item_wrap">
												<div class="thumb_info">
													<a href="painting_item?work_id=${compareWorkVo.id}&artist_id=${compareWorkVo.artist_id}">
													<img
														src="/admin/img/work/${compareWorkVo.work_img_url}"
														 class="thumb_img" />
													</a>
													<!-- <button type="button" class="prod_delete_btn btn_del"
														data-prod-code="14989751">
														<span class="blind">상품 삭제</span>
													</button>
													<button class="btn_interest " data-prod-code="14989751">
														<span class="blind">관심상품 저장</span>
													</button> -->
												</div>
											</div>
										</td>
										</c:forEach>
									</tr>
									<tr>
										<th scope="row">
											<div class="th_name">작품명</div>
										</th>
										<c:forEach items="${compareWorkVoList}" var="compareWorkVo">
										<td class="compareProductItem_14989751">
											<div class="item_wrap">
												<div class="prod_name">${compareWorkVo.work_name}</div>
											</div>
										</td>
										</c:forEach>
									</tr>
									<tr>
										<th scope="row">
											<div class="th_name">판매 가격</div>
										</th>
										<c:forEach items="${compareWorkVoList}" var="compareWorkVo">
										<td class="compareProductItem_14989751">
											<div class="item_wrap">
												<div class="prod_price">
													<span class="num"><fmt:formatNumber value="${compareWorkVo.work_price}" pattern="#,###" /></span>원
												</div>
											</div>
										</td>
										</c:forEach>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>

				<div class="fix_area fix_area_bottom" style="height: 800px;">
					<div class="fix_head fix_head_bottom">
						<div class="fix_scroll scroll_head_bottom scroll_hide"
							id="scroll_head_bottom">
							<table class="comp_table pop_fix_table fix_table_title">
								<caption>상품 상세 정보 항목</caption>
								<tbody>
									
									<tr style="height: 37px;">
										<th>
											<div class="th_name">작품 이름</div>
										</th>
									</tr>
									
									<tr class="optionName" id="optionName_18749">
										<th>
											<div class="th_name">작가 이름 </div>
										</th>
									</tr>
									<tr class="optionName" id="optionName_323350">
										<th>
											<div class="th_name">장르</div>
										</th>
									</tr>
									<tr class="optionName" id="optionName_323359">
										<th>
											<div class="th_name">주제</div>
										</th>
									</tr>
									<tr class="optionName" id="optionName_323356">
										<th>
											<div class="th_name">작품 설명</div>
										</th>
									</tr>
<!-- 									<tr class="optionName" id="optionName_323332"> -->
<!-- 										<th> -->
<!-- 											<div class="th_name">작품 등록일</div> -->
<!-- 										</th> -->
<!-- 									</tr> -->
									<tr class="optionName" id="optionName_323368">
										<th>
											<div class="th_name">전시 위치</div>
										</th>
									</tr>
									<tr class="optionName" id="optionName_323368">
										<th>
											<div class="th_name">상품 보기</div>
										</th>
									</tr>
									
								</tbody>
							</table>
						</div>
					</div>

					<div class="fix_data fix_data_bottom">
						<div class="fix_scroll scroll_data_bottom" id="scroll_data_bottom">
							<table class="comp_table pop_fix_table fix_table_data">
								<caption>상품 상세 정보</caption>
								<tbody>
									
									<tr>
										<th scope="row">
											<div class="th_name">작품 이름</div>
										</th>
										<c:forEach items="${compareWorkVoList}" var="compareWorkVo">
										<td class="compareProductItem_14989751">
											<div class="item_wrap">${compareWorkVo.work_name}</div>
										</td>
										</c:forEach>
									</tr>
									
									<tr class="optionValue optionValue_18749">
										<th scope="row">
											<div class="th_name">작가 이름</div>
										</th>
										<c:forEach items="${compareWorkVoList}" var="compareWorkVo">
										<td class="compareProductItem_14989751">
											<div class="item_wrap"><a href="artist_view?artist_id=${compareWorkVo.artist_id}">${compareWorkVo.artist_korean_name}(링크)</a></div>
										</td>
										</c:forEach>
									</tr>
									<tr class="optionValue optionValue_323350">
										<th scope="row">
											<div class="th_name">장르</div>
										</th>
										<c:forEach items="${compareWorkVoList}" var="compareWorkVo">
										<td class="compareProductItem_14989751">
											<div class="item_wrap">${compareWorkVo.work_genre}</div>
										</td>
										</c:forEach>
									</tr>
									<tr class="optionValue optionValue_323359">
										<th scope="row">
											<div class="th_name">주제</div>
										</th>
										<c:forEach items="${compareWorkVoList}" var="compareWorkVo">
										<td class="compareProductItem_14989751">
											<div class="item_wrap">${compareWorkVo.work_subject}</div>
										</td>
										</c:forEach>
									</tr>
									<tr class="optionValue optionValue_323356">
										<th scope="row">
											<div class="th_name">작품 설명</div>
										</th>
										<c:forEach items="${compareWorkVoList}" var="compareWorkVo">
										<td class="compareProductItem_14989751">
											<div class="item_wrap">${compareWorkVo.work_content}</div>
										</td>
										</c:forEach>
									</tr>
<!-- 									<tr class="optionValue optionValue_323332"> -->
<!-- 										<th scope="row"> -->
<!-- 											<div class="th_name">작품 등록일</div> -->
<!-- 										</th> -->
<%-- 										<c:forEach items="${compareWorkVoList}" var="compareWorkVo"> --%>
<!-- 										<td class="compareProductItem_14989751"> -->
<%-- 											<div class="item_wrap">${compareWorkVo.work_reg_date}</div> --%>
<!-- 										</td> -->
<%-- 										</c:forEach> --%>
<!-- 									</tr> -->
									<tr class="optionValue optionValue_323368">
										<th scope="row">
											<div class="th_name">전시 위치</div>
										</th>
										<c:forEach items="${compareWorkVoList}" var="compareWorkVo">
										<td class="compareProductItem_14989751">
											<div class="item_wrap"><a href="${compareWorkVo.work_display_position}">실제 작품 위치확인(링크)</a></div>
										</td>
										</c:forEach>
									</tr>
									<tr class="optionValue optionValue_323368">
										<th scope="row">
											<div class="th_name">상품보기</div>
										</th>
										<c:forEach items="${compareWorkVoList}" var="compareWorkVo">
										<td class="compareProductItem_14989751">
											<div class="item_wrap"><a href="painting_item?work_id=${compareWorkVo.id}&artist_id=${compareWorkVo.artist_id}">구매하기</a></div>
										</td>
										</c:forEach>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<input type="hidden" id="memberSeq" value="0">

	<script
		src="../home/forcompare/static.danawa.com/globaljs/external/jquery/core/last/jquery-last.min.js"></script>
	<script
		src="../home/forcompare/static.danawa.com/globaljs/external/jquery/plugin/jquery.mousewheel/3.1.12/jquery.mousewheel.min.js"></script>
	<script
		src="../home/forcompare/static.danawa.com/globaljs/static/clipboardjs/clipboard.min.js"></script>
	<script src="../home/forcompare/static.danawa.com/globaljs/static/prod_view.js"></script>
	<script
		src="../home/forcompare/prod.danawa.com/static.danawa.com/globaljs/com/danawa/common/jquery.addProductToWishList1b20.js?v=2210111620"
		charset="EUC-KR"></script>
	<script src="../home/forcompare/prod.danawa.com/list/js/kakao-1.20.1.min.js"></script>
	<script src="../home/forcompare/prod.danawa.com/list/js/interestProduct1b20.js?v=2210111620"></script>
	<script src="../home/forcompare/prod.danawa.com/list/js/compareProduct1b20.js?v=2210111620"></script>
	<script>
		_TRK_PNC = "14989751;17649782";
		_TRK_G2 = "1";
	</script>
	<script
		src="../home/forcompare/static.danawa.com/globaljs/static/logger_trackEvent.js"></script>
	<script
		src="../home/forcompare/static.danawa.com/globaljs/static/logger_Insight_WebAnalytics.js"></script>
	<script
		src="../home/forcompare/static.danawa.com/globaljs/static/wcslog4517.js?v=1607061545"></script>
	<script>
		if (!wcs_add) var wcs_add = {};
		wcs_add["wa"] = "s_3b3fb74948b1";
		if (!_nasa) var _nasa = {};
		wcs.inflow("danawa.com");
		wcs_do(_nasa);
	</script>
	<script>
		var _AdwebCounterValue = _AdwebCounterValue || [];
		_AdwebCounterValue['Account'] = _AdwebCounterValue['Account'] || 'danawacom';
		_AdwebCounterValue['Category'] = _AdwebCounterValue['Category'] || 'page';
		_AdwebCounterValue['Namming'] = _AdwebCounterValue['Namming'] || '';
		_AdwebCounterValue['Price'] = _AdwebCounterValue['Price'] || '';
		_AdwebCounterValue['GoodsNo'] = _AdwebCounterValue['GoodsNo'] || '';
		_AdwebCounterValue['Version'] = _AdwebCounterValue['Version'] || '2.0';
	</script>
	<script
		src="../home/forcompare/static.danawa.com/globaljs/static/adweb_counter_danawa.min35e8.js?version=20201117"></script>
	<script
		src="../home/forcompare/static.danawa.com/globaljs/static/bdl/dsas_client.mine209.js?v=1.0.0"></script>
	<script
		src="./home/forcompare/static.danawa.com/globaljs/static/loggingApplication/danawaLoggingApplicationClient-1.0.0-min844f.js?ver=1.0.1.25"></script>
	<script>
				if (typeof DSAC === 'object' && DSAC !== null) {
			DSAC.execute('{"uxid":"P11006"}');
		}
		if (typeof DANAWA_LOGGING_APPLICATION_CLIENT === 'object' && DANAWA_LOGGING_APPLICATION_CLIENT !== null) {
			DANAWA_LOGGING_APPLICATION_CLIENT.execute('{"uxid":"P11006"}');
		}
	</script>
</body>


<!-- Mirrored from prod.danawa.com/list/popup/compareProduct.php?productCodes=14989751%7C17649782 by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 04 Apr 2023 08:13:49 GMT -->
</html>

