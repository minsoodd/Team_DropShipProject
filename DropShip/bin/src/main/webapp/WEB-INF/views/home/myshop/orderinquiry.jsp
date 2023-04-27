<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
    <title>주문목록/배송조회</title>
    <link type="text/css" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/themes/base/jquery-ui.css" rel="stylesheet" />
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

            <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
            <script>
                jQuery(function($) {
                    $.datepicker.regional["ko"] = {
                        closeText: "닫기",
                        prevText: "이전달",
                        nextText: "다음달",
                        currentText: "오늘",
                        monthNames: ["1월(JAN)", "2월(FEB)", "3월(MAR)", "4월(APR)", "5월(MAY)", "6월(JUN)", "7월(JUL)", "8월(AUG)", "9월(SEP)", "10월(OCT)", "11월(NOV)", "12월(DEC)"],
                        monthNamesShort: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
                        dayNames: ["일", "월", "화", "수", "목", "금", "토"],
                        dayNamesShort: ["일", "월", "화", "수", "목", "금", "토"],
                        dayNamesMin: ["일", "월", "화", "수", "목", "금", "토"],
                        weekHeader: "Wk",
                        dateFormat: "yymmdd",
                        firstDay: 0,
                        isRTL: false,
                        showMonthAfterYear: true,
                        yearSuffix: ""
                    };
                    $.datepicker.setDefaults($.datepicker.regional["ko"]);
                });
            </script>
            <script>
                // 자바스크립로 가져온 날짜를 '2023-04-05' 형식으로 바꿔주는 함수
                function formatDate(date) {
                    var year = date.getFullYear();
                    var month = ("0" + (date.getMonth() + 1)).slice(-2);
                    var day = ("0" + date.getDate()).slice(-2);
                    return year + "-" + month + "-" + day;
                }

                var todayDate = new Date();
                var formattedTodayDate = formatDate(todayDate);

                function set_date(today) {
                    if (today == "오늘") {
                        document.getElementById("sdate").value = formattedTodayDate;
                        document.getElementById("edate").value = formattedTodayDate;
                    } else if (today == "1개월") {
                        var monthAgo = new Date();
                        monthAgo.setMonth(monthAgo.getMonth() - 1);
                        var formattedMonthAgo = formatDate(monthAgo);
                        document.getElementById("sdate").value = formattedMonthAgo;
                        document.getElementById("edate").value = formattedTodayDate;
                    } else if (today == "3개월") {
                        var threeMonthsAgo = new Date();
                        threeMonthsAgo.setMonth(threeMonthsAgo.getMonth() - 3);
                        var formattedThreeMonthsAgo = formatDate(threeMonthsAgo);
                        document.getElementById("sdate").value = formattedThreeMonthsAgo;
                        document.getElementById("edate").value = formattedTodayDate;
                    } else if (today == "6개월") {
                        var sixMonthsAgo = new Date();
                        sixMonthsAgo.setMonth(sixMonthsAgo.getMonth() - 6);
                        var formattedSixMonthsAgo = formatDate(sixMonthsAgo);
                        document.getElementById("sdate").value = formattedSixMonthsAgo;
                        document.getElementById("edate").value = formattedTodayDate;
                    } else if (today == "9개월") {
                        var nineMonthsAgo = new Date();
                        nineMonthsAgo.setMonth(nineMonthsAgo.getMonth() - 9);
                        var formattedNineMonthsAgo = formatDate(nineMonthsAgo);
                        document.getElementById("sdate").value = formattedNineMonthsAgo;
                        document.getElementById("edate").value = formattedTodayDate;
                    } else if (today == "1년") {
                        var oneYearAgo = new Date();
                        oneYearAgo.setFullYear(oneYearAgo.getFullYear() - 1);
                        var formattedOneYearAgo = formatDate(oneYearAgo);
                        document.getElementById("sdate").value = formattedOneYearAgo;
                        document.getElementById("edate").value = formattedTodayDate;
                    } else if (today == "전체") {
                        document.getElementById("sdate").value = "";
                        document.getElementById("edate").value = "";
                    }
                }
            </script>
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
                        <div id="sod_v">
                            <div class="mypage-tit">
                                <h3>주문목록/배송조회</h3>
                            </div>
                            <div class="order-search-wrap">
                                <form name="fm" action="/myshop/orderinquiry" method="get">
                                    <div class="order-search">
                                        <div class="order-duration">
                                            <h4>조회기간</h4>
                                            <ul>
                                                <li><button type="button" onclick="javascript:set_date('오늘');">오늘</button></li>
                                                <li><button type="button" onclick="javascript:set_date('1개월');">1개월</button></li>
                                                <li><button type="button" onclick="javascript:set_date('3개월');">3개월</button></li>
                                                <li><button type="button" onclick="javascript:set_date('6개월');">6개월</button></li>
                                                <li><button type="button" onclick="javascript:set_date('1년');">1년</button></li>
                                            </ul>
                                        </div>
                                        <div class="order-date">
                                            <div class="order-date-box">
                                                <div class="datebox date-first">
                                                    <label for="sdate" class="hide">시작일</label>
                                                    <input type="text" name="fr_date" id="sdate" value="${param.fr_date}" class="inp-date" size="10" maxlength="10">
                                                </div>
                                                <div class="bar">∼</div>
                                                <div class="datebox date-end">
                                                    <label for="edate" class="hide">종료일</label>
                                                    <input type="text" name="to_date" id="edate" value="${param.to_date}" class="inp-date" size="10" maxlength="10">
                                                </div>
                                            </div>
                                            <input type="button" class="btnset btn-submit" value="조회" onclick="dateCheck()">
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="grid-list-opt">
                                <div class="grid-opt-left">총 <strong class="f-color">${order_member_count}</strong>건</div>
                            </div>


                            <div class="tbstyle01">
                                <table>
                                    <caption class="hide">주문목록</caption>
                                    <colgroup>
                                        <col class="col1" width="160px">
                                        <col class="col2" width="*">
                                        <col class="col3" width="80px">
                                        <col class="col4" width="140px">
                                        <col class="col5" width="150px">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th scope="col">주문일/주문번호</th>
                                            <th scope="col">상품정보</th>
                                            <th scope="col">상품수</th>
                                            <th scope="col">주문금액</th>                            
                                            <th scope="col">주문상태</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:if test="${fn:length(order_detail_list) == 0}">
                                            <tr>
                                                <td colspan="5">주문 목록이 없습니다.</td>
                                            </tr>
                                        </c:if>
                                        <c:if test="${fn:length(order_detail_list) != 0}">
                                            <c:forEach items="${order_detail_list}" var="order_detail_inquireVo" varStatus="loop">
                                                <tr>
                                                    <c:if test="${loop.first || order_detail_inquireVo.order_member_id ne prevOrderMemberId}">
                                                        <td data-title="주문번호" class="td-num" rowspan="${orderMemberIdCountMap[order_detail_inquireVo.order_member_id]}">
                                                            <div>
                                                                <fmt:formatDate value="${order_detail_inquireVo.order_date}" pattern="yyyy-MM-dd (E)  HH시 mm분" />
                                                            </div>
                                                            <a href="orderinquiry_view?order_member_id=${order_detail_inquireVo.order_member_id}">${order_detail_inquireVo.order_member_id}</a>
                                                        </td>
                                                    </c:if>
                                                    <td data-title="상품정보" class="td-product">
                                                        <div class="product-box">
                                                            <div class="product-img">
                                                                <div style="background-image:url(/admin/img/work/${order_detail_inquireVo.work_img_url})"></div>
                                                            </div>
                                                            <div class="product-name">
                                                                <strong>${order_detail_inquireVo.work_name}<span>${order_detail_inquireVo.artist_korean_name}</span></strong>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td data-title="상품수량" class="td-numbig">${order_detail_inquireVo.option_quantity}</td>
                                                    <td data-title="주문금액" class="td-numbig td-total">${order_detail_inquireVo.option_selected_price * order_detail_inquireVo.option_quantity+2000} 원</td>
                                                    <c:if test="${loop.first || order_detail_inquireVo.order_member_id ne prevOrderMemberId}">
	                                                    <td data-title="주문상태" class="td-state" rowspan="${orderMemberIdCountMap[order_detail_inquireVo.order_member_id]}">
	                                                        <c:choose>
	                                                            <c:when test="${order_detail_inquireVo.order_status == 0}">입금확인중</c:when>
	                                                            <c:when test="${order_detail_inquireVo.order_status == 1}">입금완료</c:when>
	                                                            <c:when test="${order_detail_inquireVo.order_status == 2}">상품준비중</c:when>
	                                                            <c:when test="${order_detail_inquireVo.order_status == 3}">배송중</c:when>
	                                                            <c:when test="${order_detail_inquireVo.order_status == 4}">배송완료</c:when>
	                                                            <c:when test="${order_detail_inquireVo.order_status == 5}">주문취소</c:when>
	                                                        </c:choose>
	                                                        <c:if test="${order_detail_inquireVo.order_status == 3}">
	                                                            <div><br>
	                                                                <button type="button" class="btnset btn-type01 btn_cart sct_cart" data-it_id="1654133549">
	                                                                    <a href="../myshop/mypage_drone?id=${order_detail_inquireVo.order_member_id}" class="btnset btn-sight">
	                                                                        <svg height="45" width="140">
	                                                                            <rect height="45" width="140"></rect>
	                                                                        </svg>
	                                                                    </a>
	                                                                    <span style="margin-left:-15px;">드론배송 현황</span>
	                                                                </button>
	                                                            </div>
	                                                        </c:if>
	                                                    </td>
                                                    </c:if>
                                                </tr>
                                                <c:set var="prevOrderMemberId" value="${order_detail_inquireVo.order_member_id}" />
                                            </c:forEach>
                                        </c:if>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- } 주문 내역 끝 -->
                    </div>
                </div>
            </section>
            <script>
                // 날짜 정상적으로 입력했는지 여부 체크
                var today = new Date();

                function dateCheck() {
                    if (new Date($("#sdate").val()) > new Date(today.setDate(today.getDate() + 1))) {
                        alert("검색 시작 날짜를 현재 날짜 이후로 선택하실 수 없습니다.");
                        return false;
                    }
                    if (new Date($("#edate").val()) < new Date($("#sdate").val())) {
                        alert("검색 종료 날짜가 시작 날짜보다 작을 수 없습니다.");
                        return false;
                    }
                    fm.submit();
                }

                // 기간조회 버튼 클릭시 on 클래스 추가
                $(".order-duration button").on('click', function() {
                    $(".order-duration li").removeClass("on");
                    $(this).parent().addClass("on");
                });

                $("#sdate, #edate").datepicker({
                    showOn: "both", // 버튼과 텍스트 필드 모두 캘린더를 보여준다.
                    buttonImage: "/home/img/ico/ico-date.png", // 버튼 이미지
                    //buttonImageOnly: true, // 버튼에 있는 이미지만 표시한다.
                    changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다.
                    changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다.
                    minDate: '-100y', // 현재날짜로부터 100년이전까지 년을 표시한다.
                    nextText: '다음 달', // next 아이콘의 툴팁.
                    prevText: '이전 달', // prev 아이콘의 툴팁.
                    numberOfMonths: [1, 1], // 한번에 얼마나 많은 월을 표시할것인가. [2,3] 일 경우, 2(행) x 3(열) = 6개의 월을 표시한다.
                    //stepMonths: 3, // next, prev 버튼을 클릭했을때 얼마나 많은 월을 이동하여 표시하는가.
                    yearRange: 'c-99:c+100', // 년도 선택 셀렉트박스를 현재 년도에서 이전, 이후로 얼마의 범위를 표시할것인가.
                    showButtonPanel: true, // 캘린더 하단에 버튼 패널을 표시한다.
                    currentText: '오늘 날짜', // 오늘 날짜로 이동하는 버튼 패널
                    closeText: '닫기', // 닫기 버튼 패널
                    dateFormat: "yy-mm-dd", // 텍스트 필드에 입력되는 날짜 형식.
                    showAnim: "slide", //애니메이션을 적용한다.
                    showMonthAfterYear: true, // 월, 년순의 셀렉트 박스를 년,월 순으로 바꿔준다.
                    dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], // 요일의 한글 형식.
                    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'] // 월의 한글 형식.
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
    <script src="https://bxgs.co.kr/theme/buzinga/js/base.js"></script>
    <script src="https://bxgs.co.kr/theme/buzinga/js/sub.js"></script>

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