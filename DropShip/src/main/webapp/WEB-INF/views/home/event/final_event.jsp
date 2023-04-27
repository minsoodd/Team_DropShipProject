<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html lang="ko">

<!-- Mirrored from bxgs.co.kr/bbs/board.php?bo_table=event&sca=%EC%A2%85%EB%A3%8C%EB%90%9C+%EC%9D%B4%EB%B2%A4%ED%8A%B8 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:05:17 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="shortcut icon" href="../home/img/favicon.ico" />
<title>종료된 event</title>
<link href="../admin/css/styles_page.css" rel="stylesheet" />
<link href="../admin/css/styles.css" rel="stylesheet" />
<link rel="stylesheet" href="../home/theme/buzinga/css/mobile_shop3816.css?ver=210618">
<link rel="stylesheet" href="../home/js/font-awesome/css/font-awesome.min3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/swiper.min3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/aos3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/nice-select3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/js/owl.carousel3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/mobile/skin/board/event/style3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/common3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/sub3816.css?ver=210618">
<!--[if lte IE 8]>
<script src="https://bxgs.co.kr/js/html5.js"></script>
<![endif]-->
<script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "../index.html";
var g5_bbs_url   = "https://bxgs.co.kr:443/bbs/";
var g5_is_member = "";
var g5_is_admin  = "";
var g5_is_mobile = "1";
var g5_bo_table  = "event";
var g5_sca       = "종료된 이벤트";
var g5_editor    = "smarteditor2";
var g5_cookie_domain = "";
var g5_theme_shop_url = "https://bxgs.co.kr:443/theme/buzinga/shop/";
var g5_shop_url = "https://bxgs.co.kr:443/shop/";


</script>
<link rel="stylesheet" href="../../use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
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
                    <span class="sub-txt">다양한 이벤트를 확인해보세요.</span>
                <h2 class="sub-tit">EVENT</h2>
    </div>
</section>

<script src="../home/js/jquery.fancylist.js"></script>


<section id="board-list" class="board event">
    <div class="maxinner">

		<form name="fboardlist"  id="fboardlist" action="https://bxgs.co.kr/bbs/board_list_update.php" onsubmit="return fboardlist_submit(this);" method="post">
			<input type="hidden" name="bo_table" value="event">
			<input type="hidden" name="sfl" value="">
			<input type="hidden" name="stx" value="">
			<input type="hidden" name="spt" value="-4">
			<input type="hidden" name="sst" value="wr_datetime desc">
			<input type="hidden" name="sod" value="">
			<input type="hidden" name="page" value="1">
			<input type="hidden" name="sw" value="">

			<nav class="grid-event-menu" id="bo_cate">
              <h2 class="hide">카테고리</h2>
              <ul id="bo_cate_ul">
                <li><a href="all_event">전체보기</a></li>
                <li><a href="pro_event">진행중 이벤트</a></li>
                <li><a href="final_event" id="bo_cate_on">종료된 이벤트</a></li>                
              </ul>
            </nav>
            
			<!-- 전체보기 이벤트 리스트 4개 -->
            <div class="grid-event-list">
              <ul id="gall_ul">
				<c:forEach items="${map.list}" var="eb">		              
				   <c:if test="${eb.eventboard_status == '0'}">
					  <li>
					    <a href="event_view?id=${eb.id}&page=${map.page}" class="event-end">
					      <div class="event-thumb">
						    <c:if test="${eb.eventboard_file_name != null}">
						     	<div class="imgbox" style="background-image:url(../admin/upload/${eb.eventboard_file_name})"><span class="hide">썸네일</span></div>
						     </c:if>
	                   		 <c:if test="${eb.eventboard_file_name == null}">
						     	<div class="imgbox" style="background-image:url(../admin/upload/Event_deafaultLogo.png)"><span class="hide">썸네일</span></div>
						     </c:if>
							<div class="event-end-box">종료된 이벤트입니다.</div>                                  
						  </div>
						  <div class="event-info"><h3>${eb.eventboard_title}</h3><p>${eb.eventboard_content}</p>
						    <span class="date"><fmt:formatDate value="${eb.eventboard_start}" pattern="yyyy-MM-dd(E) HH:mm"/> ~ 
		                     <fmt:formatDate value="${eb.eventboard_end}" pattern="yyyy-MM-dd(E) HH:mm"/></span>
						  </div>
					    </a>
					  </li>
				  </c:if>
	           </c:forEach>
		     </ul>
           </div>
		</form>
		<div class="pg_wrap" style="margin-top: 30px;">
			<ul class="page-numul" style="list-style:none;">
				<c:if test="${map.page == 1}"><li><span class="pg_page pg_start"></span></li></c:if>
				<c:if test="${map.page != 1}">
				<a href="final_event?page=1"><li><span  class="pg_page pg_start"></span></li></a>
				</c:if>
				
				<c:if test="${map.page == 1}"><li><span class="pg_page pg_prev"></span></li></c:if>
				<c:if test="${map.page != 1}">
				<a href="final_event?page=${map.page - 1}"><li><span class="pg_page pg_prev"></span></li></a>
				</c:if>
				
				<c:forEach begin="${map.startPage}" end="${map.endPage}" step="1" var="number">
					<c:if test="${map.page == number}">
					<li>
						<div class="pg_current">${number}</div>
					</li>
					</c:if>
					<c:if test="${map.page != number}">
					<li>
						<a href="final_event?page=${number}"><div class="pg_page">${number}</div></a>
					</li>
					</c:if>
				</c:forEach>
				
				<c:if test="${map.page == map.maxPage}"><li><span class="pg_page pg_next"></span></li></c:if>
				<c:if test="${map.page != map.maxPage}">
				<a href="final_event?page=${map.page + 1}"><li><span class="pg_page pg_next"></span></li></a>
				</c:if>
				
				<c:if test="${map.page == map.maxPage}"><li><span class="pg_page pg_end"></span></li></c:if>
				<c:if test="${map.page != map.maxPage}">
				<a href="final_event?page=${map.maxPage}"><li><span class="pg_page pg_end"></span></li></a>
				</c:if>
			</ul>
		</div>
		<!-- 페이지 -->
			</div>
</section>

<!-- 게시판 목록 끝 -->
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

<!-- Mirrored from bxgs.co.kr/bbs/board.php?bo_table=event&sca=%EC%A2%85%EB%A3%8C%EB%90%9C+%EC%9D%B4%EB%B2%A4%ED%8A%B8 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:05:17 GMT -->
</html>

<!-- 사용스킨 : theme/event -->
