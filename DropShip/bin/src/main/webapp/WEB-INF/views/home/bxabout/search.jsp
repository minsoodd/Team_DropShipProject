<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport"
		content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
	<meta name="HandheldFriendly" content="true">
	<meta name="format-detection" content="telephone=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<link rel="shortcut icon" href="../home/img/favicon.ico" />
	<title>상품 검색 결과 | 백상 갤러리</title>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link rel="stylesheet"
		href="../home/theme/buzinga/css/mobile_shop3816.css">
	<link rel="stylesheet"
		href="../home/js/font-awesome/css/font-awesome.min3816.css">
	<link rel="stylesheet"
		href="../home/theme/buzinga/css/swiper.min3816.css">
	<link rel="stylesheet" href="../home/theme/buzinga/css/aos3816.css">
	<link rel="stylesheet"
		href="../home/theme/buzinga/css/nice-select3816.css">
	<link rel="stylesheet"
		href="../home/theme/buzinga/js/owl.carousel3816.css">
	<link rel="stylesheet"
		href="../home/theme/buzinga/mobile/skin/faq/basic/style3816.css">
	<link rel="stylesheet"
		href="../home/theme/buzinga/mobile/skin/shop/basic/style3816.css">
	<link rel="stylesheet" href="../home/theme/buzinga/css/common3816.css">
	<link rel="stylesheet" href="../home/theme/buzinga/css/sub3816.css">
	<!--[if lte IE 8]>
	<script src="https://bxgs.co.kr/js/html5.js"></script>
	<![endif]-->
	<script>
		// 자바스크립트에서 사용하는 전역변수 선언
		var g5_url = "https://bxgs.co.kr";
		var g5_bbs_url = "https://bxgs.co.kr/bbs";
		var g5_is_member = "";
		var g5_is_admin = "";
		var g5_is_mobile = "1";
		var g5_bo_table = "";
		var g5_sca = "";
		var g5_editor = "";
		var g5_cookie_domain = "";
		var g5_theme_shop_url = "https://bxgs.co.kr/theme/buzinga/shop";
		var g5_shop_url = "https://bxgs.co.kr/shop";
		
	</script>

	<link rel="stylesheet" href="../home/theme/buzinga/css/all.css">
	<script src="../home/js/jquery-1.12.4.min3816.js"></script>
	<script src="../home/js/jquery-migrate-1.4.1.min3816.js"></script>
	<script src="../home/js/common3816.js"></script>
	<script src="../home/js/wrest3816.js"></script>
	<script src="../home/js/placeholders.min3816.js"></script>
	<script src="../home/theme/buzinga/js/swiper.min3816.js"></script>
	<script src="../home/theme/buzinga/js/gsap-3.6.0.min3816.js"></script>
	<script src="../home/theme/buzinga/js/aos3816.js"></script>
	<script src="../home/theme/buzinga/js/jquery.nice-select3816.js"></script>
	<script src="../home/theme/buzinga/js/jquery.sidr.min3816.js"></script>
	<script src="../home/js/modernizr.custom.701113816.js"></script>
	<script src="../home/theme/buzinga/js/owl.carousel3816.min.js"></script>
	<script src="../home/theme/buzinga/js/unslider.min3816.js"></script>
	<script src="../home/js/shop.list.action3816.js"></script>
	</head>
	<body>


	<div class="cursor-ball">
		<div class="ball"></div>
	</div>


	<div id="skip_to_container">
		<a href="#contents">본문 바로가기<fmt:formatNumber type="number" value="2222222" pattern="#,###" />원</a>
	</div>




	<div id="wrap" class="sub">

		<!-- header 부분 시작 -->
		<%@ include file="../top/header.jsp"%>
		<!-- header 부분 끝 -->

		<main id="contents">




			<!-- 
    ★ 원본 ./search.skin.php.bak 참고 ★
-->

			<section id="search-result">
					<div class="sub-tit-wrap aos-init aos-animate" data-aos="fade-up">
						<div class="maxinner">
							<h2 class="sub-tit">SEARCH</h2>
						</div>
					</div>

				<div class="search-word-wrap">
				
					<form action="../bxabout/search" name="search" id="search" method="post">
<!-- 						<input type="hidden" name="qsort" id="qsort" value="" autocomplete="off">  -->
<!-- 						<input type="hidden" name="qorder" id="qorder" value="" autocomplete="off">  -->
<!-- 						<input type="hidden" name="qcaid" id="qcaid" value="" autocomplete="off"> -->
						<div class="word-box">
							<label for="searchWord" class="sound_only">검색어</label> 
							<input
								type="text" name="searchWord" value="" id="searchWord" class="ssch_input"
								size="40" maxlength="30" placeholder="검색어" autocomplete="off">
							<button type="button" id="searchBtn" class="btn_submit">검색</button>
						</div>
						
						<div class="word-chk">
							<input type="checkbox" id="ft-research" value=""autocomplete="off"> 
							<label for="ft-research">결과 내 재검색</label>
						</div>
					</form>
					
				</div>

				<div class="combine-list">

					<!-- COMBINE SORTING -->
<!-- 					<div class="combine-sort-wrap"> -->
<!-- 						<h3>Filter</h3> -->
<!-- 						<ul class="combine-sort-list"> -->
<!-- 							<li class="on"><a href="javascript:;"><span>장르별</span></a> -->
<!-- 								<ul class="sort-depth chk-list-type01" style="display: block"> -->
<!-- 									<li>정비 중 입니다</li> -->
<!-- 								    <li><input type="checkbox" id="ft-genre-all" -->
<!-- 										name="delete_list" value="" autocomplete="off"> <label -->
<!-- 										for="ft-genre-all">전체</label></li> -->
<!-- 									<li><input type="checkbox" id="ft-genre01" -->
<!-- 										name="delete_list" value="" autocomplete="off"> <label -->
<!-- 										for="ft-genre01">초상화</label></li> -->
<!-- 									<li><input type="checkbox" id="ft-genre02" -->
<!-- 										name="delete_list" value="" autocomplete="off"> <label -->
<!-- 										for="ft-genre02">추상화</label></li> -->
<!-- 									<li><input type="checkbox" id="ft-genre03" -->
<!-- 										name="delete_list" value="" autocomplete="off"> <label -->
<!-- 										for="ft-genre03">풍경</label></li> -->
<!-- 									<li><input type="checkbox" id="ft-genre04" -->
<!-- 										name="delete_list" value="" autocomplete="off"> <label -->
<!-- 										for="ft-genre04">정물</label></li> -->
<!-- 									<li><input type="checkbox" id="ft-genre05" -->
<!-- 										name="delete_list" value="" autocomplete="off"> <label -->
<!-- 										for="ft-genre05">타이포그래피</label></li> -->
<!-- 									<li><input type="checkbox" id="ft-genre06" -->
<!-- 										name="delete_list" value="" autocomplete="off"> <label -->
<!-- 										for="ft-genre06">일러스트</label></li> -->
<!-- 									<li><input type="checkbox" id="ft-genre07" -->
<!-- 										name="delete_list" value="" autocomplete="off"> <label -->
<!-- 										for="ft-genre07">포스터</label></li> -->
<!-- 									<li><input type="checkbox" id="ft-genre08" -->
<!-- 										name="delete_list" value="" autocomplete="off"> <label -->
<!-- 										for="ft-genre08">팝아트</label></li> -->
<!-- 									<li><input type="checkbox" id="ft-genre09" -->
<!-- 										name="delete_list" value="" autocomplete="off"> <label -->
<!-- 										for="ft-genre09">초현실</label></li> -->
<!-- 									<li><input type="checkbox" id="ft-genre10" -->
<!-- 										name="delete_list" value="" autocomplete="off"> <label -->
<!-- 										for="ft-genre10">카툰</label></li> -->
<!-- 								</ul></li> -->
<!-- 							<li><a href="javascript:;"><span>주제별</span></a> -->
<!-- 								<ul class="sort-depth chk-list-type01"> -->
<!-- 									<li>정비 중 입니다</li> -->
<!-- 									<li><input type="checkbox" id="ft-subject-all" name="" -->
<!-- 										value="" autocomplete="off"> <label -->
<!-- 										for="ft-subject-all">전체</label></li> -->
<!-- 									<li><input type="checkbox" id="ft-subject01" name="" -->
<!-- 										value="" autocomplete="off"> <label for="ft-subject01">초상화</label> -->
<!-- 									</li> -->
<!-- 									<li><input type="checkbox" id="ft-subject02" name="" -->
<!-- 										value="" autocomplete="off"> <label for="ft-subject02">추상화</label> -->
<!-- 									</li> -->
<!-- 									<li><input type="checkbox" id="ft-subject03" name="" -->
<!-- 										value="" autocomplete="off"> <label for="ft-subject03">풍경</label> -->
<!-- 									</li> -->
<!-- 									<li><input type="checkbox" id="ft-subject04" name="" -->
<!-- 										value="" autocomplete="off"> <label for="ft-subject04">정물</label> -->
<!-- 									</li> -->
<!-- 									<li><input type="checkbox" id="ft-subject05" name="" -->
<!-- 										value="" autocomplete="off"> <label for="ft-subject05">타이포그래피</label> -->
<!-- 									</li> -->
<!-- 									<li><input type="checkbox" id="ft-subject06" name="" -->
<!-- 										value="" autocomplete="off"> <label for="ft-subject06">일러스트</label> -->
<!-- 									</li> -->
<!-- 									<li><input type="checkbox" id="ft-subject07" name="" -->
<!-- 										value="" autocomplete="off"> <label for="ft-subject07">포스터</label> -->
<!-- 									</li> -->
<!-- 									<li><input type="checkbox" id="ft-subject08" name="" -->
<!-- 										value="" autocomplete="off"> <label for="ft-subject08">팝아트</label> -->
<!-- 									</li> -->
<!-- 									<li><input type="checkbox" id="ft-subject09" name="" -->
<!-- 										value="" autocomplete="off"> <label for="ft-subject09">초현실</label> -->
<!-- 									</li> -->
<!-- 									<li><input type="checkbox" id="ft-subject10" name="" -->
<!-- 										value="" autocomplete="off"> <label for="ft-subject10">카툰</label> -->
<!-- 									</li> -->
<!-- 								</ul></li> -->
<!-- 							<li><a href="javascript:;"><span>Size</span></a> -->
<!-- 								<ul class="sort-depth chk-list-type01"> -->
<!-- 									<li>정비 중 입니다</li> -->
<!-- 									<li><input type="checkbox" id="ft-size-all" name="" -->
<!-- 										value="" autocomplete="off"> <label for="ft-size-all">전체</label> -->
<!-- 									</li> -->
<!-- 									<li><input type="checkbox" id="ft-size01" name="" value="" -->
<!-- 										autocomplete="off"> <label for="ft-size01">30x30cm</label> -->
<!-- 									</li> -->
<!-- 									<li><input type="checkbox" id="ft-size02" name="" value="" -->
<!-- 										autocomplete="off"> <label for="ft-size02">30x30cm</label> -->
<!-- 									</li> -->
<!-- 									<li><input type="checkbox" id="ft-size03" name="" value="" -->
<!-- 										autocomplete="off"> <label for="ft-size03">30x30cm</label> -->
<!-- 									</li> -->
<!-- 								</ul></li> -->
<!-- 							<li><a href="javascript:;"><span>그림 방향</span></a> -->
<!-- 								<ul class="sort-depth chk-list-type01"> -->
<!-- 									<li>정비 중 입니다</li> -->
<!-- 									<li><input type="checkbox" id="ft-direction-all" name="" -->
<!-- 										value="" autocomplete="off"> <label -->
<!-- 										for="ft-direction-all">전체</label></li> -->
<!-- 									<li><input type="checkbox" id="ft-direction01" name="" -->
<!-- 										value="" autocomplete="off"> <label -->
<!-- 										for="ft-direction01">30x30cm</label></li> -->
<!-- 									<li><input type="checkbox" id="ft-direction02" name="" -->
<!-- 										value="" autocomplete="off"> <label -->
<!-- 										for="ft-direction02">30x30cm</label></li> -->
<!-- 									<li><input type="checkbox" id="ft-direction03" name="" -->
<!-- 										value="" autocomplete="off"> <label -->
<!-- 										for="ft-direction03">30x30cm</label></li> -->
<!-- 								</ul></li> -->
<!-- 						</ul> -->
<!-- 						<button type="button" class="btn-filter-reset"> -->
<!-- 							<span class="hide">RESET</span> -->
<!-- 						</button> -->
<!-- 					</div> -->

					<!-- COMBINE LIST -->
					<div style="width:100%;">
					<div id="item-list-wrap" style="margin:0 auto;">
						<div class="grid-list-opt">
							<div class="grid-opt-left">
								검색된 작품은 총 <strong class="f-color">${searchResultList.size()}</strong>개 입니다.
							</div>
							<div class="grid-opt-right">
								<div class="grid-sort-list">
									<a href="javascript:;" class="grid-sort-current btn-sort-open">인기순</a>
									<ul>
										<li><a href="">인기순</a></li>
										<li><a href="">후기순</a></li>
										<li><a href="">평점순</a></li>
										<li><a href="">등록순</a></li>
										<li><a href="">높은가격순</a></li>
										<li><a href="">낮은가격순</a></li>
									</ul>
								</div>
								<div class="grid-sort-list">
									<a href="javascript:;" class="grid-sort-current btn-sort-open">9개씩
										보기</a>
									<ul>
										<li><a href="">9개씩 보기</a></li>
										<li><a href="">12개씩 보기</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="grid-list">
							<div class="sct_wrap">
								<script src="../home/js/jquery.fancylist.js"></script>
								<!-- 메인상품진열 20 시작 { -->
								<ul class="sct sct_20" id="thisSearch">
								
								
									<c:forEach items="${searchResultList}" var="searchResult" >
										<li class="sct_li" >
											<div class="li_wr">
												<div class="sct_img_wrap">
													<div class="sct_img" style="background-image:url(/admin/img/work/${searchResult.work_img_url}">
	                                                    <span class="hide">작품이름</span>
	                                                </div>
													<div class="sct_opt_wrap">
														<div class="sct_btn list-10-btn">
															<a
																href="http://localhost:8080/shop/painting_item?work_id=${searchResult.id}&artist_id=${searchResult.artist_id}"
																class="btnset btn-type01" data-it_id="1654133092"> <svg
																	height="45" width="160">
																	<rect height="45" width="160"></rect></svg> <span>VIEW
																	MORE</span>
															</a>
														</div>
														<div class="cart-layer"></div>
														<div class="sct_op_btn">
	                                                        <a href="http://localhost:8080/shop/painting_item?work_id=${searchResult.id}&artist_id=${searchResult.artist_id}" class="btnset btn-sight"><span class="hide">자세히보기</span></a>
	                                                        <button type="button" class="btnset btn-like btn_wish" data-it_id="1654135291"><span class="hide">찜하기</span></button>
	                                                    </div>
													</div>
												</div>
												<div class="sct_txt"><a href="http://localhost:8080/shop/painting_item?work_id=${searchResult.id}&artist_id=${searchResult.artist_id}" class="sct_a">${searchResult.work_name}</a></div>
	                                            <div class="sct_desc"><span>${searchResult.artist_korean_name}</span>
	                                                <p>20.0cm x 35.7cm</p>
	                                            </div>
												<div class="sct_cost"><span class="price_cost">
	                                                    <strong>
	                                                        <fmt:formatNumber type="number" value="${searchResult.work_price}" pattern="#,###" />원
	                                                    </strong></span>
	                                            </div>
											</div>
										</li>
									</c:forEach>
								
								
								
								
								</ul>
								<!-- } 상품진열 20 끝 -->
							</div>
						</div>
					</div>
				</div>
				<!-- } 검색결과 끝 -->

			</section>
			<!-- } 검색 끝 -->


			<script>
// function set_sort(qsort, qorder)
// {
//     var f = document.frmdetailsearch;
//     f.qsort.value = qsort;
//     f.qorder.value = qorder;
//     f.submit();
// }

// function set_ca_id(qcaid)
// {
//     var f = document.frmdetailsearch;
//     f.qcaid.value = qcaid;
//     f.submit();
// }
</script>
		</main>

		<!-- footer 부분 시작 -->
		<%@ include file="../top/footer.jsp"%>
		<!-- footer 부분 끝 -->


		<div id="gotop">
			<a href="javascript:;"><span class="hide">맨위로가기</span></a>
		</div>
	</div>


	<script src="../home/js/sns.js"></script>
	<script src="../home/theme/buzinga/js/css3-animate-it.js"></script>
	<link rel="stylesheet" href="home/theme/buzinga/css/animate.css">
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
