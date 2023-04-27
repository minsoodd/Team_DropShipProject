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
<link rel="shortcut icon" href="/home/img/favicon.ico" />
<title>마일리지</title>
<link rel="stylesheet" href="../home/theme/buzinga/css/mobile_shop3816.css?ver=210618">
<link rel="stylesheet" href="../home/js/font-awesome/css/font-awesome.min3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/swiper.min3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/aos3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/nice-select3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/js/owl.carousel3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/common3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/sub3816.css?ver=210618">
<link type="text/css" href="..//ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/themes/base/jquery-ui.css" rel="stylesheet" />
<link type="text/css" href="../plugin/jquery-ui/style.css?ver=210618">
<script src="../home/js/sns.js"></script>
<script src="../home/js/css3-animate-it.js"></script>
<link href="../home/theme/buzinga/css/animate.css" rel="stylesheet" >
<script src="../home/js/base.js"></script>
<script src="../home/js/sub.js"></script>

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
<link rel="stylesheet" href="../use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
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
<div id="hd_login_msg">로그인 중 <a href="https://bxgs.co.kr/bbs/logout.php">로그아웃</a></div>

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
        


<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
<script>
jQuery(function($){
    $.datepicker.regional["ko"] = {
        closeText: "닫기",
        prevText: "이전달",
        nextText: "다음달",
        currentText: "오늘",
        monthNames: ["1월(JAN)","2월(FEB)","3월(MAR)","4월(APR)","5월(MAY)","6월(JUN)", "7월(JUL)","8월(AUG)","9월(SEP)","10월(OCT)","11월(NOV)","12월(DEC)"],
        monthNamesShort: ["1월","2월","3월","4월","5월","6월", "7월","8월","9월","10월","11월","12월"],
        dayNames: ["일","월","화","수","목","금","토"],
        dayNamesShort: ["일","월","화","수","목","금","토"],
        dayNamesMin: ["일","월","화","수","목","금","토"],
        weekHeader: "Wk",
        dateFormat: "yymmdd",
        firstDay: 0,
        isRTL: false,
        showMonthAfterYear: true,
        yearSuffix: ""
    };
	$.datepicker.setDefaults($.datepicker.regional["ko"]);
});
</script><section class="mypage">
	<div class="maxinner">
	
		<!-- mypage_side_bar 시작 부분 -->
		<%@ include file = "../top/mypage_side_bar.jsp" %>			
		<!-- mypage_side_bar 끝 부분 -->	
	
			<div class="mypage-con">
			
			<!-- mypage_coupon_header 시작 부분 -->
			<%@ include file = "../top/mypage_coupon_header.jsp" %>
			<!-- mypage_coupon_header 끝 부분 -->
			
				<div class="mypage-mileage">
				<div class="mypage-tit">
					<h3>마일리지</h3>
				</div>
				<div class="order-search-wrap">
					<form name="" action="" method="">
						<div class="order-search">
							<div class="mileage-price">
								<h4>사용 가능 마일리지</h4>
								<span><strong>0P</strong></span>
							</div>
							<div class="order-date">
								<div class="order-date-box">
									<div class="datebox date-first">
										<label for="sdate" class="hide">시작일</label>
										<input type="text" name="fr_date" id="sdate" value="" class="inp-date" size="10" maxlength="10">
									</div>
									<div class="bar">∼</div>
									<div class="datebox date-end">
										<label for="edate" class="hide">종료일</label>
										<input type="text" name="to_date" id="edate" value="" class="inp-date" size="10" maxlength="10">
									</div>
								</div>
								<input type="submit" class="btnset btn-submit" value="조회">
							</div> 
						</div>
					</form>
				</div>
				<div class="tbstyle01">
					<h4 class="mypage-sm-tit">마일리지 적립 및 사용내역</h4>
					<table>
						<caption class="hide">마일리지 내역</caption>
						<colgroup>
							<col class="col1 td-mb-hide" width="160px">
							<col class="col2 td-mb-hide" width="120px">
							<col class="col3" width="*">
							<col class="col4" width="120px">
							<col class="col5" width="160px">
						</colgroup>
						<thead>
							<tr>
								<th class="td-mb-hide">날짜</th>
								<th class="td-mb-hide">만료일</th>
								<th>적립명</th>
								<th>적립금</th>
								<th>잔여 적립금</th>
							</tr>
						</thead>
						<tbody>
<!-- 							<tr> -->
<!-- 								<td class="td-mb-hide">2023-03-15 14:53:53</td> -->
<!-- 								<td class="td-mb-hide"> -->
<!-- 																		만료230315																	</td> -->
<!-- 								<td class="ta-l">주문번호 2023031514521495 결제</td> -->
<!-- 								<td>-1,000</td> -->
<!-- 								<td class="f-color">0</td> -->
<!-- 							</tr> -->
<!-- 							<tr> -->
<!-- 								<td class="td-mb-hide">2023-03-07 14:46:51</td> -->
<!-- 								<td class="td-mb-hide"> -->
<!-- 									&nbsp;								</td> -->
<!-- 								<td class="ta-l">회원가입 축하</td> -->
<!-- 								<td>+1,000</td> -->
<!-- 								<td class="f-color">1,000</td> -->
<!-- 							</tr> -->

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
    $("#sdate, #edate").datepicker({
        showOn: "both", // 버튼과 텍스트 필드 모두 캘린더를 보여준다.
        buttonImage: "../home/img/ico/ico-date.png", // 버튼 이미지
        //buttonImageOnly: true, // 버튼에 있는 이미지만 표시한다.
        changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다.
        changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다.
        minDate: '-100y', // 현재날짜로부터 100년이전까지 년을 표시한다.
        nextText: '다음 달', // next 아이콘의 툴팁.
        prevText: '이전 달', // prev 아이콘의 툴팁.
        numberOfMonths: [1,1], // 한번에 얼마나 많은 월을 표시할것인가. [2,3] 일 경우, 2(행) x 3(열) = 6개의 월을 표시한다.
        //stepMonths: 3, // next, prev 버튼을 클릭했을때 얼마나 많은 월을 이동하여 표시하는가.
        yearRange: 'c-99:c+100', // 년도 선택 셀렉트박스를 현재 년도에서 이전, 이후로 얼마의 범위를 표시할것인가.
        showButtonPanel: true, // 캘린더 하단에 버튼 패널을 표시한다.
        currentText: '오늘 날짜' , // 오늘 날짜로 이동하는 버튼 패널
        closeText: '닫기',  // 닫기 버튼 패널
        dateFormat: "yy-mm-dd", // 텍스트 필드에 입력되는 날짜 형식.
        showAnim: "slide", //애니메이션을 적용한다.
        showMonthAfterYear: true , // 월, 년순의 셀렉트 박스를 년,월 순으로 바꿔준다.
        dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], // 요일의 한글 형식.
        monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] // 월의 한글 형식.
    });        

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