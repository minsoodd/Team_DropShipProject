<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="ko">

<!-- Mirrored from bxgs.co.kr/shop/artist_view.php?aidx=16 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:05:03 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="shortcut icon" href="../img/favicon.ico" />
<title>작가별 view 페이지</title>
<link rel="stylesheet"
	href="../home/theme/buzinga/css/mobile_shop3816.css?ver=210618">
<link rel="stylesheet"
	href="../home/js/font-awesome/css/font-awesome.min3816.css?ver=210618">
<link rel="stylesheet"
	href="../home/theme/buzinga/css/swiper.min3816.css?ver=210618">
<link rel="stylesheet"
	href="../home/theme/buzinga/css/aos3816.css?ver=210618">
<link rel="stylesheet"
	href="../home/theme/buzinga/css/nice-select3816.css?ver=210618">
<link rel="stylesheet"
	href="../home/theme/buzinga/js/owl.carousel3816.css?ver=210618">
<link rel="stylesheet"
	href="../home/theme/buzinga/css/common3816.css?ver=210618">
<link rel="stylesheet"
	href="../home/theme/buzinga/css/sub3816.css?ver=210618">
<%@ include file ="../ai/chatbot.jsp" %>	<!-- ai챗봇 -->
<script>
	// 자바스크립트에서 사용하는 전역변수 선언
	var g5_url = "../index.html";
	var g5_bbs_url = "https://bxgs.co.kr:443/bbs/";
	var g5_is_member = "";
	var g5_is_admin = "";
	var g5_is_mobile = "1";
	var g5_bo_table = "";
	var g5_sca = "";
	var g5_editor = "";
	var g5_cookie_domain = "";
	var g5_theme_shop_url = "https://bxgs.co.kr:443/theme/buzinga/shop/";
	var g5_shop_url = "https://bxgs.co.kr:443/shop/";
</script>
<link rel="stylesheet"
	href="../../use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<!-- <script src="../home/js/jquery-1.12.4.min3816.js?ver=210618"></script> -->
<script src="../home/js/jquery-migrate-1.4.1.min3816.js?ver=210618"></script>
<script src="../home/js/common3816.js?ver=210618"></script>
<script src="../home/js/wrest3816.js?ver=210618"></script>
<script src="../home/js/placeholders.min3816.js?ver=210618"></script>
<script src="../home/theme/buzinga/js/swiper.min3816.js?ver=210618"></script>
<script src="../home/theme/buzinga/js/gsap-3.6.0.min3816.js?ver=210618"></script>
<script src="../home/theme/buzinga/js/aos3816.js?ver=210618"></script>
<script
	src="../home/theme/buzinga/js/jquery.nice-select3816.js?ver=210618"></script>
<script src="../home/theme/buzinga/js/jquery.sidr.min3816.js?ver=210618"></script>
<script src="../home/js/modernizr.custom.701113816.js?ver=210618"></script>
<script
	src="../home/theme/buzinga/js/owl.carousel.min3816.js?ver=210618"></script>
<script src="../home/theme/buzinga/js/unslider.min3816.js?ver=210618"></script>
<script src="../home/js/shop.list.action3816.js?ver=210618"></script>
</head>

<body>


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

			<section class="artist-view">
				<!-- 작가 정보 -->
				<div class="artist-title-wrap">
					<div class="maxinner">
						<h2 class="split-txt">${artistVo.artist_english_name}</h2>
					</div>
					<div class="bg"
						style="background-image: url('../home/img/sub/artist-view-bg.jpg');"></div>
				</div>
				<div class="artist-info-wrap" data-aos="fade-up">
					<div class="maxinner">
						<div class="imgwrap">
							<div class="imgbox"
								style="background-image:url('/admin/img/artist/${artistVo.artist_img_url}');">
								<span class="hide">작가이미지</span>
							</div>
						</div>
						<div class="txtwrap">
							<h3 class="name">${artistVo.artist_korean_name}<span
									class="eng_name">${artistVo.artist_english_name}</span>
							</h3>
							<dl class="sum">
								<dt>국적</dt>
								<dd>${artistVo.artist_country}</dd>
							</dl>
							<dl class="sum">
								<dt>출생·사망</dt>
								<dd>${artistVo.artist_birth_death}</dd>
							</dl>
							<dl class="sum">
								<dt>주요작품</dt>
								<dd>${artistVo.artist_main}</dd>
							</dl>
							<div class="desc">
								<p>
									<span style="color: rgb(102, 102, 102);">${artistVo.artist_content}</span>
								</p>
							</div>
						</div>
					</div>
				</div>
				<!-- 작가의 작품들 -->
				<div id="item-list-wrap">
					<div class="maxinner">
						<div class="sub-con-tit-wrap">
							<h3 class="sub-con-tit" data-aos="fade-right"
								data-aos-delay="100">Work</h3>
						</div>
						<div class="grid-list-opt">
							<div class="grid-opt-left">
								총 <strong class="f-color">${list.size()}</strong>개의 상품이 있습니다.
							</div>
							<!--
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
							<a href="javascript:;" class="grid-sort-current btn-sort-open">9개씩 보기</a>
							<ul>
								<li><a href="">9개씩 보기</a></li>
								<li><a href="">12개씩 보기</a></li>
							</ul>
						</div>
					</div>
	-->
						</div>
						<div class="grid-list">
							<div class="sct_wrap">
								<ul class="sct sct_20">
									<c:forEach items="${list}" var="artistList">
										<li class="sct_li">
											<div class="li_wr">
												<div class="sct_img_wrap">
													<div class="sct_img"
														style="background-image:url('/admin/img/work/${artistList.work_img_url}')">
														<span class="hide">작품이름</span>
													</div>
													<div class="sct_opt_wrap">
														<div class="sct_btn list-10-btn">
															<button type="button"
																class="btnset btn-type01 btn_cart sct_cart"
																data-it_id="1654129940">
																<svg height="45" width="160">
	                                                                <rect
																		height="45" width="160"></rect>
	                                                            </svg>
																<span>상세페이지 이동</span>
															</button>
														</div>
														<div class="cart-layer"></div>
														<div class="sct_op_btn">
															<a
																href="painting_item?work_id=${artistList.id}&artist_id=${artistList.artist_id}"
																class="btnset btn-sight"> <span class="hide">자세히보기</span>
															</a>
															<button type="button" class="btnset btn-like btn_wish"
																data-it_id="1654129940">
																<span class="hide">찜하기</span>
															</button>
														</div>
													</div>
												</div>
												<div class="sct_txt">
													<a
														href="painting_item?work_id=${artistList.id}&artist_id=${artistList.artist_id}"
														class="sct_a">${artistList.work_name}</a>
												</div>
												<div class="sct_desc">
													<span>${artistList.artist_name}</span>
													<p>30.0cm x 30.0cm</p>
												</div>
												<div class="sct_cost">
													<span class="price_cost"> <strong> <fmt:formatNumber
																type="number" value="${artistList.work_price}"
																pattern="#,###" />원
													</strong>
													</span>
												</div>
											</div>
										</li>
									</c:forEach>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</section>
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

<!-- Mirrored from bxgs.co.kr/shop/artist_view.php?aidx=16 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:05:03 GMT -->

</html>