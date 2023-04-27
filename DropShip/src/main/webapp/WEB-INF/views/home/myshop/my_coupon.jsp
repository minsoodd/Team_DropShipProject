<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="shortcut icon" href="../home/img/favicon.ico" />
<title>마이페이지 | 백상 갤러리</title>
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
			
				<div class="mypage-coupon">
				<div class="mypage-tit">
					<h3>쿠폰</h3>
				</div>
				<ul class="mypage-sm-nav">
					<li class="on"><a href="">사용가능쿠폰</a></li>
					<li><a href="">사용완료쿠폰</a></li>
				</ul>
				<div class="tbstyle01">
					<table>
						<caption class="hide">쿠폰리스트</caption>
						<colgroup>
                            <col class="col1" width="*">
							<col class="col2 td-mb-hide" width="35%">
							<col class="col3 td-mb-hide" width="80px">
							<col class="col4" width="25%">
						</colgroup>
						<thead>
							<tr>
								<th>쿠폰번호</th>
								<th class="td-mb-hide">쿠폰명</th>
								<th class="td-mb-hide">혜택</th>
								<th>사용기간</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td colspan="4" class="empty-content">
									<img src="/home/img/ico/ico-information-big.png" alt="">
									<p>사용가능한 쿠폰이 없습니다.</p>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
<!--
				<nav class="pg_wrap">
					<span class="pg">
						<span class="sound_only">열린</span>
						<strong class="pg_current">1</strong><span class="sound_only">페이지</span>
						<a href="" class="pg_page">2<span class="sound_only">페이지</span></a>
						<a href="" class="pg_page pg_end">맨끝</a>
					</span>
				</nav>
-->
			</div>
		</div>
	</div>
</section>

<script>
    var allThNum = $('.empty-content').parents('.tbstyle01').find('th').length;
    var hideThNum = $('.empty-content').parents('.tbstyle01').find('th.td-mb-hide').length;
    var mobileThNum = allThNum - hideThNum;

    if($(window).innerWidth() > 767){
        $('.empty-content').attr('colspan',allThNum);
    }else{
        $('.empty-content').attr('colspan',mobileThNum);
    }
    $(window).on('resize',function(){
        if($(window).innerWidth() > 767){
            $('.empty-content').attr('colspan',allThNum);
        }else{
            $('.empty-content').attr('colspan',mobileThNum);
        }
    }); 
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
