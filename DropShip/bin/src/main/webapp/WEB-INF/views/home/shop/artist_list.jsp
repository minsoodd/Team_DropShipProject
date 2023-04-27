<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="ko">

<!-- Mirrored from bxgs.co.kr/shop/artist_list.php by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:03:12 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="shortcut icon" href="../img/favicon.ico" />
<title>작가별 페이지</title>
<%@ include file ="../ai/chatbot.jsp" %>	<!-- ai챗봇 -->
<link rel="stylesheet" href="../home/theme/buzinga/css/mobile_shop3816.css?ver=210618">
<link rel="stylesheet" href="../home/js/font-awesome/css/font-awesome.min3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/swiper.min3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/aos3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/nice-select3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/js/owl.carousel3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/common3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/sub3816.css?ver=210618">
<script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "../index.html";
var g5_bbs_url   = "https://bxgs.co.kr:443/bbs/";
var g5_is_member = "";
var g5_is_admin  = "";
var g5_is_mobile = "1";
var g5_bo_table  = "";
var g5_sca       = "";
var g5_editor    = "";
var g5_cookie_domain = "";
var g5_theme_shop_url = "https://bxgs.co.kr:443/theme/buzinga/shop/";
var g5_shop_url = "https://bxgs.co.kr:443/shop/";
</script>
<link rel="stylesheet" href="../../use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<!-- <script src="../home/js/jquery-1.12.4.min3816.js?ver=210618"></script> -->
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
	        
	<section class="sub-tit-wrap" data-aos="fade-up">
	    <div class="maxinner">
	                    <span class="sub-txt">DropShip 갤러리에서 다양한 작가의 작품을 만나보세요.</span>
	                <h2 class="sub-tit">ARTIST</h2>
	    </div>
	</section>
	
	<section class="artist-list">
		<div class="combine-list">
			<!-----  SEARCH LIST ----->
<!-- 			<div class="combine-sort-wrap"> -->
<!-- 				<h3>Artist List</h3> -->
<!-- 				<ul class="combine-sort-list"> -->
<!-- 					<li class="all  on "><a href="artist_list.html"><span>All</span></a></li> -->
<!-- 					<li class=""> -->
<!-- 						<a href="#"><span>ㄱ ~ ㄹ</span></a> -->
<!-- 						<ul class="sort-depth"> -->
<!-- 							<li class=""><a href="artist_list4e11.html?ca_id=101010"><span>ㄱ, ㄲ</span></a></li> -->
<!-- 							<li class=""><a href="artist_list6974.html?ca_id=101020"><span>ㄴ</span></a></li> -->
<!-- 							<li class=""><a href="artist_listb3c8.html?ca_id=101030"><span>ㄷ, ㄸ</span></a></li> -->
<!-- 							<li class=""><a href="artist_list9f23.html?ca_id=101040"><span>ㄹ</span></a></li> -->
<!-- 						</ul> -->
<!-- 					</li> -->
<!-- 					<li class=""> -->
<!-- 						<a href="#"><span>ㅁ ~ ㅇ</span></a> -->
<!-- 						<ul class="sort-depth"> -->
<!-- 							<li class=""><a href="artist_listc7f5.html?ca_id=102010"><span>ㅁ</span></a></li> -->
<!-- 							<li class=""><a href="artist_list646f.html?ca_id=102020"><span>ㅂ, ㅃ</span></a></li> -->
<!-- 							<li class=""><a href="artist_list2f4c.html?ca_id=102030"><span>ㅅ, ㅆ</span></a></li> -->
<!-- 							<li class=""><a href="artist_list1ac9.html?ca_id=102040"><span>ㅇ</span></a></li> -->
<!-- 						</ul> -->
<!-- 					</li> -->
<!-- 					<li class=""> -->
<!-- 						<a href="#"><span>ㅈ ~ ㅌ</span></a> -->
<!-- 						<ul class="sort-depth"> -->
<!-- 							<li class=""><a href="artist_liste19f.html?ca_id=103010"><span>ㅈ, ㅉ</span></a></li> -->
<!-- 							<li class=""><a href="artist_list8259.html?ca_id=103020"><span>ㅊ</span></a></li> -->
<!-- 							<li class=""><a href="artist_listdef3.html?ca_id=103030"><span>ㅋ</span></a></li> -->
<!-- 							<li class=""><a href="artist_listc4d5.html?ca_id=103040"><span>ㅌ</span></a></li> -->
<!-- 						</ul> -->
<!-- 					</li> -->
<!-- 					<li class=""> -->
<!-- 						<a href="#"><span>ㅍ ~ ㅎ</span></a> -->
<!-- 						<ul class="sort-depth"> -->
<!-- 							<li class=""><a href="artist_lista4a8.html?ca_id=104010"><span>ㅍ</span></a></li> -->
<!-- 							<li class=""><a href="artist_list5abc.html?ca_id=104020"><span>ㅎ</span></a></li> -->
<!-- 						</ul> -->
<!-- 					</li> -->
<!-- 				</ul> -->
<!-- 			</div> -->
			<!-----  ARTIST LIST ----->
			<div id="item-list-wrap" style="margin: 0 auto;">
				<div class="grid-list-opt">
					<div class="grid-opt-left">총 <strong class="f-color">${map.listCount}</strong>명의 작가가 있습니다.</div>
					<div class="grid-opt-right">
					<!--
						<div class="grid-sort-list">
							<a href="javascript:;" class="grid-sort-current btn-sort-open">12개씩 보기</a>
							<ul>
								<li><a href="">9개씩 보기</a></li>
								<li><a href="">12개씩 보기</a></li>
							</ul>
						</div>
					-->
					</div>
				</div>    
				<div class="grid-list">
					<div class="sct_wrap">
					
						<!-- 작가별 부분 시작 -->
						<ul class="sct sct_20">
						  <c:forEach items="${map.list}" var="artistVo">
							<li class="sct_li">
								<div class="li_wr">
									<div class="sct_img_wrap">
										<div class="sct_img" style="background-image:url(/admin/img/artist/${artistVo.artist_img_url});">
											<span class="hide">작가이름</span>
										</div>
										<div class="sct_opt_wrap">
											<div class="sct_btn list-10-btn">
												<a href="artist_view?artist_id=${artistVo.id}" class="btnset btn-type01">
													<svg height="45" width="160"><rect height="45" width="160"></rect></svg>
													<span>Read More</span>
												</a>
											</div>
										</div>
									</div>
									<div class="sct_txt">
										<a href="artist_view?artist_id=${artistVo.id}" class="sct_a">${artistVo.artist_korean_name}</a>
									</div>
									<div class="sct_desc">
										<span>${artistVo.artist_english_name}</span>
									</div>
								</div>
						  </c:forEach>
							</li>
							
						  </ul>
						<!-- 페이징 -->
						<nav class="pg_wrap">
							<ul class="page-numul" style="list-style:none;">
								<!-- 첫 페이지로 이동 (<<모양만있고 기능은 없음) -->
								<c:if test="${map.page == 1}">
									<li><span class="pg_page pg_start"></span></li>
								</c:if>
								<!-- 첫 페이지로 이동 (<<모양도있고 기능까지 있는것) -->
								<c:if test="${map.page != 1}">
									<a href="artist_list?page=1">
										<li><span class="pg_page pg_start"></span></li>
									</a>
								</c:if>
								
								<!-- 이전 페이지로 이동 -->
								<c:if test="${map.page == 1}">
									<li><span class="pg_page pg_prev"></span></li>
								</c:if>
								<c:if test="${map.page != 1}">
									<a href="artist_list?page=${map.page - 1}">
                                    	<li><span class="pg_page pg_prev"></span></li>
                                    </a>	
								</c:if>
								
								<!-- 하단 넘버링 반복문 -->
								<c:forEach begin="${map.startPage}" end="${map.endPage}" step="1" var="number"> <!-- var=number 뜻을 모르겠네 -->
									<c:if test="${map.page == number}">
										<li>
                                            <div class="pg_current">${number}</div>
                                        </li>
									</c:if>
									<c:if test="${map.page != number}">
										<li>
                                            <a href="artist_list?page=${number}">
                                                <div class="pg_page">${number}</div>
                                            </a>
                                        </li>	
									</c:if>
								</c:forEach>
								
								<!-- 다음 페이지로 이동 -->
								<c:if test="${map.page == map.maxPage}">
									<li><span class="pg_page pg_next"></span></li>
								</c:if>
								<c:if test="${map.page != map.maxPage}">
									<a href="artist_list?page=${map.page + 1}">
                                        <li><span class="pg_page pg_next"></span></li>
                                    </a>
								</c:if>
								
								<!-- 끝 페이지로 이동 -->
                                <c:if test="${map.page == map.maxPage}">
                                    <li><span class="pg_page pg_end">keyboard_double_arrow_right</span></li>
                                </c:if>
                                <c:if test="${map.page != map.maxPage}">
                                    <a href="artist_list?page=${map.maxPage}">
                                        <li><span class="pg_page pg_end">keyboard_double_arrow_right</span></li>
                                    </a>
                                </c:if>
							</ul>
						</nav>				
					</div>
				</div>
			</div>
		</div>
	</section>
	    </main>
	        
	        <!-- header 부분 시작 -->
			<%@ include file ="../top/footer.jsp" %>
			<!-- header 부분 끝 -->
	
	<div id="gotop">
	    <a href="javascript:;"><span class="hide">맨위로가기</span></a>
	</div>
	</div>
	
	
	<script src="../home/js/sns.js"></script>
	<script src="../home/theme/buzinga/js/css3-animate-it.js"></script>
	<link rel="stylesheet" href="../home/theme/buzinga/css/animate.css">
	<script src="../home/theme/buzinga/js/base.js"></script><script src="../home/theme/buzinga/js/sub.js"></script>
	
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

<!-- Mirrored from bxgs.co.kr/shop/artist_list.php by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:03:21 GMT -->
</html>
