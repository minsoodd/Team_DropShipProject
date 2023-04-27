<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="ko">

<!-- Mirrored from bxgs.co.kr/shop/item.php?it_id=1654133092 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:03:56 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
    <meta name="HandheldFriendly" content="true">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="shortcut icon" href="../home/img/favicon.ico" />
    <title>그림작품 view페이지</title>
	<!-- ai채팅창에 필요 -->
	<%@ include file ="../ai/chatbot.jsp" %>
	<!-- ai채팅창에 필요 -->
    <link rel="stylesheet" href="../home/theme/buzinga/css/mobile_shop3816.css?ver=210618">
    <link rel="stylesheet" href="../home/js/font-awesome/css/font-awesome.min3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/swiper.min3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/aos3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/nice-select3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/js/owl.carousel3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/mobile/skin/shop/basic/style3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/common3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/sub3816.css?ver=210618">
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
    <link rel="stylesheet" href="../../use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<!--         <script src="../home/js/jquery-1.12.4.min3816.js?ver=210618"></script> 이거 겹침 있음 안됨 -->
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
<!--     <script src="../home/js/jquery.bxslider3816.js?ver=210618"></script> -->
<!--     <script src="../home/js/shop.list.action3816.js?ver=210618"></script> -->
    <script src="../home/js/viewimageresize3816.js?ver=210618"></script>
    
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

            <div id="sit_hhtml"></div>
            <script src="../home/js/shop.js"></script>
            <div id="sit">
                <form name="fitem" action="https://bxgs.co.kr/shop/cartupdate.php" method="post" onsubmit="return fitem_submit(this);" style="position: relative; z-index: 1;">
                    <input type="hidden" name="it_id[]" value="1654133092"> <input type="hidden" name="sw_direct"> <input type="hidden" name="url">

                    <input type="hidden" name="work_id" value="${param.work_id}">
                    <!-- work_id 를 order_form.jsp로 보내기  -->


                    <div id="sit_ov_wrap">
                        <!----- 배경 변경 ----->
                        <div id="sit_bg_preview">
                            <div class="bg-preview" style="background-image: url('../home/img/sub/item-detail-frame-bg01.jpg')">
                                <div class="hide">배경이미지</div>
                            </div>
                            <div class="bg-thumb-list">
                                <div class="bg-thumb on">
                                    <img src="../home/img/sub/item-detail-frame-bg01.jpg" alt="">
                                </div>
                                <div class="bg-thumb">
                                    <img src="../home/img/sub/item-detail-frame-bg02.jpg" alt="">
                                </div>
                                <div class="bg-thumb">
                                    <img src="../home/img/sub/item-detail-frame-bg03.jpg" alt="">
                                </div>
                                <div class="bg-thumb">
                                    <img src="../home/img/sub/item-detail-frame-bg04.jpg" alt="">
                                </div>
                                <div class="bg-thumb">
                                    <img src="../home/img/sub/item-detail-frame-bg05.jpg" alt="">
                                </div>
                            </div>
                        </div>

                        <!----- 상품 구매옵션 선택부분 ----->
                        <div id="sit_frame_opt_wrap">
                            <input type="hidden" id="it_price" value="${workVo.work_price}">

                            <!----- 액자 미리보기 ----->
                            <div id="sit_frame_img">
                                <!-- 이미지 사이즈 3종류 있습니다.-->
                                <div class="frame-img" style="background-image:url(/admin/img/work/${workVo.work_img_url}); width: 540px; height: 390px;">
                                    <span class="hide">주문액자 미리보기</span>
                                </div>
                            </div>

                            <!----- 상품 주문옵션 ----->
                            <div id="sit_ov" class="2017_renewal_itemform">
                                <div id="sit_frame_tit">
                                    <h2 class="hide">상품간략정보 및 구매기능</h2>
                                    <strong id="sit_title">${workVo.work_name}</strong>
                                    <p>${workVo.artist_name}</p>
                                </div>
                                <div id="sit_frame_opt">
                                    <div class="swiper frame-opt-slider">
                                        <div class="swiper-wrapper">
                                            <div class="swiper-slide">

                                                <script>
                                                    function chg_opt() {

                                                        if ($("input[name=opt1]:checked").val() == "1") {
                                                            var html = '';
                                                            html += '<li><label><input type="radio" name="opt2" value="1" onclick="chg_opt2(), price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-canvas-pannel.jpg" alt=""></div><p>캔버스판넬</p></label></li>';
                                                            html += '<li><label><input type="radio" name="opt2" value="2" onclick="chg_opt2(), price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-wrapping-canvas.jpg" alt=""></div><p>래핑캔버스</p></label></li>';
                                                            html += '<li><label><input type="radio" name="opt2" value="3" onclick="chg_opt2(), price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-float.jpg" alt=""></div><p>띄움</p></label></li>';
                                                            html += '<li><label><input type="radio" name="opt2" value="4" onclick="chg_opt2(), price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-wood-float.jpg" alt=""></div><p>원목 띄움</p></label></li>';
                                                            html += '<li><label><input type="radio" name="opt2" value="5" onclick="chg_opt2(), price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-up-wood.jpg" alt=""></div><p>올림우드</p></label></li>';
                                                            html += '<li><label><input type="radio" name="opt2" value="6" onclick="chg_opt2(), price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-antique-d-sliver.jpg" alt=""></div><p>앤틱D실버</p></label></li>';
                                                            html += '<li><label><input type="radio" name="opt2" value="7" onclick="chg_opt2(), price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-wood-beige.jpg" alt=""></div><p>원목베이지</p></label></li>';
                                                            html += '<li><label><input type="radio" name="opt2" value="8" onclick="chg_opt2(), price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-box-white.jpg" alt=""></div><p>관화이트</p></label></li>';
                                                            html += '<li><label><input type="radio" name="opt2" value="9" onclick="chg_opt2(), price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-box-wood.jpg" alt=""></div><p>관우드</p></label></li>';
                                                            html += '<li><label><input type="radio" name="opt2" value="10" onclick="chg_opt2(), price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-box-black.jpg" alt=""></div><p>관블랙</p></label></li>';
                                                            $("#opt2").html(html);

                                                            if ($("input[name=opt2]:checked").val() == "1") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "2") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "3") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "4") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "5") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "6") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="2" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-3cm.jpg" alt=""></div><p>3cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="3" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-6cm.jpg" alt=""></div><p>3cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="4" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-11cm.jpg" alt=""></div><p>6cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="5" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-15cm.jpg" alt=""></div><p>11cm</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "7") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="2" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-3cm.jpg" alt=""></div><p>3cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="3" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-6cm.jpg" alt=""></div><p>3cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="4" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-11cm.jpg" alt=""></div><p>6cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="5" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-15cm.jpg" alt=""></div><p>11cm</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "8") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "9") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "10") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                        } else {
                                                            var html = '';
                                                            html += '<li><label><input type="radio" name="opt2" value="1" onclick="chg_opt2(), price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-float.jpg" alt=""></div><p>띄움</p></label></li>';
                                                            html += '<li><label><input type="radio" name="opt2" value="2" onclick="chg_opt2(), price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-wood-float.jpg" alt=""></div><p>원목 띄움</p></label></li>';
                                                            html += '<li><label><input type="radio" name="opt2" value="3" onclick="chg_opt2(), price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-antique-d-sliver.jpg" alt=""></div><p>앤틱D실버</p></label></li>';
                                                            html += '<li><label><input type="radio" name="opt2" value="4" onclick="chg_opt2(), price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-wood-beige.jpg" alt=""></div><p>원목베이지</p></label></li>';
                                                            html += '<li><label><input type="radio" name="opt2" value="5" onclick="chg_opt2(), price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-box-white.jpg" alt=""></div><p>관화이트</p></label></li>';
                                                            html += '<li><label><input type="radio" name="opt2" value="6" onclick="chg_opt2(), price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-box-wood.jpg" alt=""></div><p>관우드</p></label></li>';
                                                            html += '<li><label><input type="radio" name="opt2" value="7" onclick="chg_opt2(), price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-box-black.jpg" alt=""></div><p>관블랙</p></label></li>';
                                                            $("#opt2").html(html);

                                                            if ($("input[name=opt2]:checked").val() == "1") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "2") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "3") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="2" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-3cm.jpg" alt=""></div><p>3cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="3" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-6cm.jpg" alt=""></div><p>3cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="4" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-11cm.jpg" alt=""></div><p>6cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="5" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-15cm.jpg" alt=""></div><p>11cm</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "4") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="2" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-3cm.jpg" alt=""></div><p>3cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="3" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-6cm.jpg" alt=""></div><p>3cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="4" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-11cm.jpg" alt=""></div><p>6cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="5" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-15cm.jpg" alt=""></div><p>11cm</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "5") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "6") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "7") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                        }

                                                        if ($("input[name=opt1]:checked").val() == "2") {
                                                            if ($("input[name=opt5]:checked").val() == "2") {
                                                                alert("캔버스인 경우에만 선택가능합니다");
                                                                $("input:radio[name='opt5']:radio[value='1']").prop('checked', true);
                                                            }
                                                        }
                                                    }

                                                    function chg_opt2() {
                                                        if ($("input[name=opt1]:checked").val() == "1") {
                                                            if ($("input[name=opt2]:checked").val() == "1") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "2") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "3") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "4") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "5") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "6") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="2" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-3cm.jpg" alt=""></div><p>3cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="3" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-6cm.jpg" alt=""></div><p>3cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="4" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-11cm.jpg" alt=""></div><p>6cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="5" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-15cm.jpg" alt=""></div><p>11cm</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "7") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="2" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-3cm.jpg" alt=""></div><p>3cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="3" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-6cm.jpg" alt=""></div><p>3cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="4" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-11cm.jpg" alt=""></div><p>6cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="5" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-15cm.jpg" alt=""></div><p>11cm</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "8") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "9") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "10") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }

                                                        } else {
                                                            if ($("input[name=opt2]:checked").val() == "1") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "2") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "3") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="2" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-3cm.jpg" alt=""></div><p>3cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="3" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-6cm.jpg" alt=""></div><p>3cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="4" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-11cm.jpg" alt=""></div><p>6cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="5" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-15cm.jpg" alt=""></div><p>11cm</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "4") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="2" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-3cm.jpg" alt=""></div><p>3cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="3" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-6cm.jpg" alt=""></div><p>3cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="4" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-11cm.jpg" alt=""></div><p>6cm</p></label></li>';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="5" onclick="javascript:price_calculate()" ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-15cm.jpg" alt=""></div><p>11cm</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "5") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "6") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                            if ($("input[name=opt2]:checked").val() == "7") {
                                                                var html2 = '';
                                                                html2 += '<li><label><input type="radio" name="opt3" value="1" onclick="javascript:price_calculate()" checked ><div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div><p>없음</p></label></li>';
                                                                $("#opt3").html(html2);
                                                            }
                                                        }
                                                    }
                                                </script>
                                                <div class="opt-step05-wrap">
                                                    <div class="opt-sm-tit">
                                                        그림사이즈 선택
                                                        <p>
                                                            <span class="f-color">*</span>캔버스/래핑캔버스는 짧은변 최대 140cm
                                                        </p>
                                                    </div>
                                                    <div class="opt-select1">
                                                        <label for="opt4"></label> <select name="opt4" id="opt4" class="deco-select" onchange="price_calculate()">
                                                            <option value="">사이즈를 선택하세요.</option>
                                                            <option selected value="0">20.0cm x 35.7cm</option>
                                                            <option value="1">25.0cm x 44.6cm</option>
                                                        </select>
                                                    </div>
                                                </div>

                                                <div class="opt-step01-wrap">
                                                    <div class="opt-sm-tit">미디어 선택</div>
                                                    <ul class="opt-gall">
                                                        <li><label> <input type="radio" name="opt1" value="1" checked onclick="chg_opt(), price_calculate()">
                                                                <div class="opt-thumb">
                                                                    <img src="../home/img/sub/item-detail-step01-fineart.jpg">
                                                                </div>
                                                                <p>캔버스</p>
                                                            </label></li>
                                                        <li><label> <input type="radio" name="opt1" value="2" onclick="chg_opt(), price_calculate()">
                                                                <div class="opt-thumb">
                                                                    <img src="../home/img/sub/item-detail-step01-canvas.jpg">
                                                                </div>
                                                                <p>파인아트</p>
                                                            </label></li>
                                                    </ul>
                                                </div>

                                                <div class="opt-step03-wrap">
                                                    <div class="opt-sm-tit">
                                                        마띠에르 리터치 선택
                                                        <p>
                                                            <span class="f-color">*</span>그림면 질감 리터칭. 캔버스 전용
                                                        </p>
                                                    </div>
                                                    <ul class="opt-normal">
                                                        <li><input type="radio" id="opt-step03-1" name="opt5" value="1" checked onclick="chg_opt()"> <label for="opt-step03-1">없음</label></li>
                                                        <li><input type="radio" id="opt-step03-2" name="opt5" value="2" onclick="chg_opt()"> <label for="opt-step03-2">선택</label></li>

                                                    </ul>
                                                </div>

                                                <div class="opt-step02-wrap">
                                                    <div class="opt-sm-tit">
                                                        프레임 선택
                                                        <p>
                                                            <span class="f-color">*</span>스크롤 사용시 다양한 프레임을 확인하실 수 있습니다.
                                                        </p>
                                                    </div>
                                                    <ul class="opt-gall" id="opt2">

                                                    </ul>
                                                </div>

                                                <div class="opt-step04-wrap">
                                                    <div class="opt-sm-tit">
                                                        매트(여백) 선택
                                                        <p>
                                                            <span class="f-color">*</span>선택 가능한 경우에만 표시됩니다.
                                                        </p>
                                                    </div>
                                                    <ul class="opt-gall" id="opt3">

                                                    </ul>
                                                </div>

                                            </div>






                                            <!-- 원래 주석부분 -->
                                            <!--  
						<div class="swiper-slide">
							<div class="opt-step02-wrap">
								<h3>STEP <span class="f-color">02</span></h3>
								<div class="opt-sm-tit">
									프레임 선택
									<p><span class="f-color">*</span>스크롤 사용시 다양한 프레임을 확인하실 수 있습니다.</p>
								</div>
								<ul class="opt-gall">
									<li>
										<label>
											<input type="radio" name="opt-step02" value="캔버스판넬">
											<div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-canvas-pannel.jpg" alt=""></div>
											<p>캔버스판넬</p>
										</label>
									</li>
									<li>
										<label>
											<input type="radio" name="opt-step02" value="래핑캔버스">
											<div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-wrapping-canvas.jpg" alt=""></div>
											<p>래핑캔버스</p>
										</label>
									</li>	
									<li>
										<label>
											<input type="radio" name="opt-step02" value="띄움">
											<div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-float.jpg" alt=""></div>
											<p>띄움</p>
										</label>
									</li>
									<li>
										<label>
											<input type="radio" name="opt-step02" value="원목띄움">
											<div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-wood-float.jpg" alt=""></div>
											<p>원목 띄움</p>
										</label>
									</li>
									<li>
										<label>
											<input type="radio" name="opt-step02" value="올림우드">
											<div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-up-wood.jpg" alt=""></div>
											<p>올림우드</p>
										</label>
									</li>		
									<li>
										<label>
											<input type="radio" name="opt-step02" value="앤틱D실버">
											<div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-antique-d-sliver.jpg" alt=""></div>
											<p>앤틱D실버</p>
										</label>
									</li>
									<li>
										<label>
											<input type="radio" name="opt-step02" value="원목베이지">
											<div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-wood-beige.jpg" alt=""></div>
											<p>원목베이지</p>
										</label>
									</li>	
									<li>
										<label>
											<input type="radio" name="opt-step02" value="관화이트">
											<div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-box-white.jpg" alt=""></div>
											<p>관화이트</p>
										</label>
									</li>
									<li>
										<label>
											<input type="radio" name="opt-step02" value="관우드">
											<div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-box-wood.jpg" alt=""></div>
											<p>관우드</p>
										</label>
									</li>
									<li>
										<label>
											<input type="radio" name="opt-step02" value="관블랙">
											<div class="opt-thumb"><img src="/home/img/sub/item-detail-step02-box-black.jpg" alt=""></div>
											<p>관블랙</p>
										</label>
									</li>		
								</ul>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="opt-step03-wrap">
								<h3>STEP <span class="f-color">03</span></h3>
								<div class="opt-sm-tit">
									마띠에르 리터치 선택
									<p><span class="f-color">*</span>그림면 질감 리터칭. 캔버스 전용</p>
								</div>
								<ul class="opt-normal">
									<li>
										<input type="radio" id="opt-step03-1" name="opt-step03" value="없음">
										<label for="opt-step03-1">없음</label>  
									</li>	
									<li>
										<input type="radio" id="opt-step03-2" name="opt-step03" value="선택">
										<label for="opt-step03-2">선택</label>  
									</li>		
								</ul>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="opt-step04-wrap">
								<h3>STEP <span class="f-color">04</span></h3>
								<div class="opt-sm-tit">
									매트(여백) 선택
									<p><span class="f-color">*</span>선택 가능한 경우에만 표시됩니다.</p>
								</div>
								<ul class="opt-gall">
									<li>
										<label>
											<input type="radio" name="opt-step04" value="없음">
											<div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-none.jpg" alt=""></div>
											<p>없음</p>
										</label>
									</li>
									<li>
										<label>
											<input type="radio" name="opt-step04" value="3cm">
											<div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-3cm.jpg" alt=""></div>
											<p>3cm</p>
										</label>
									</li>	
									<li>
										<label>
											<input type="radio" name="opt-step04" value="6cm">
											<div class="opt-thumb"><img src="/home/img/sub/item-detail-step04-6cm.jpg" alt=""></div>
											<p>6cm</p>
										</label>
									</li>		
								</ul>
							</div>
						</div>
						<div class="swiper-slide">
							<div class="opt-step05-wrap">
								<h3>STEP <span class="f-color">05</span></h3>
								<div class="opt-sm-tit">
									그림사이즈 선택
									<p><span class="f-color">*</span>캔버스/래핑캔버스는 짧은변 최대 140cm</p>
								</div>
								<div class="opt-select">
									<label for="opt-step05"></label>
									<select name="opt-step05" id="opt-step05" class="deco-select">
										<option value="">사이즈를 선택하세요.</option>
										<option value="">30.0cm x 30.0cm</option>
										<option value="">35.0cm x 35.0cm</option>
										<option value="">40.0cm x 40.0cm</option>
										<option value="">45.0cm x 45.0cm</option>
										<option value="">50.0cm x 50.0cm</option>
										<option value="">60.0cm x 60.0cm</option>
										<option value="">70.0cm x 70.0cm</option>
										<option value="">80.0cm x 80.0cm</option>
										<option value="">90.0cm x 90.0cm</option>
									</select>
								</div>
							</div>
						</div>
							-->
                                            <!-- 원래 주석부분 끝 -->

                                        </div>
                                        <!-- 원래 주석부분 -->
                                        <!--
					<div class="swiper-button-next"></div>
					<div class="swiper-button-prev"></div>
					<div class="swiper-pagination"></div>
					-->
                                        <!-- 원래 주석부분 끝 -->

                                    </div>
                                </div>

                                <script>
                                    function clip() {
                                        var url = '';
                                        var textarea = document.createElement("textarea");
                                        document.body.appendChild(textarea);
                                        url = window.document.location.href;
                                        textarea.value = url;
                                        textarea.select();
                                        document.execCommand("copy");
                                        document.body.removeChild(textarea);
                                        alert("URL이 복사되었습니다.");
                                    }

                                    $(function() {
                                        $('.bg-thumb').on('click', function() {
                                            var frameNum = $(this).index();
                                            var frameBgSrc = $(this).find('img').attr('src');
                                            $('.bg-thumb').removeClass('on');
                                            $(this).addClass('on');
                                            $('.bg-preview').css('background-image', 'url("' + frameBgSrc + '")');
                                        });

                                        var swiper = new Swiper(".frame-opt-slider", {
                                            autoHeight: true,
                                            effect: 'fade',
                                            noSwiping: true,
                                            noSwipingClass: 'swiper-slide',
                                            fadeEffect: {
                                                crossFade: true
                                            },
                                            speed: 100,
                                            pagination: {
                                                el: ".frame-opt-slider .swiper-pagination",
                                                type: 'fraction',
                                                formatFractionCurrent: function(number) {
                                                    return ('0' + number).slice(-2);
                                                },
                                                formatFractionTotal: function(number) {
                                                    return ('0' + number).slice(-2);
                                                },
                                                renderFraction: function(currentClass, totalClass) {
                                                    return '<span class="' + currentClass + '"></span>' +
                                                        ' / ' +
                                                        '<span class="' + totalClass + '"></span>';
                                                }
                                            },
                                            navigation: {
                                                nextEl: ".frame-opt-slider .swiper-button-next",
                                                prevEl: ".frame-opt-slider .swiper-button-prev",
                                            },
                                        });
                                    });
                                </script>



                                <div id="sit_sel_option">
                                    <ul id="sit_opt_added">
                                        <li class="sit_opt_list"><input type="hidden" name="io_type[1654133092][]" value="0"> <input type="hidden" name="io_id[1654133092][]" value=""> <input type="hidden" name="io_value[1654133092][]" value="수확하는 사람">
                                            <input type="hidden" class="io_price" value="0"> <input type="hidden" class="io_stock" value="99999">
                                            <div class="opt_name">
                                                <span class="sit_opt_subj">${workVo.work_name}</span>
                                            </div>
                                            <div class="opt_count">
                                                <label for="ct_qty_7" class="sound_only">수량</label>
                                                <button type="button" class="sit_qty_minus">
                                                    <span class="sound_only">감소</span>
                                                </button>
                                                <input type="text" name="ct_qty[1654133092][]" value="1" id="ct_qty_7" class="num_input" size="5">
                                                <button type="button" class="sit_qty_plus">
                                                    <span class="sound_only">증가</span>
                                                </button>
                                                <span class="sit_opt_prc" style="display: none;"></span>
                                            </div>
                                        </li>
                                    </ul>
                                    <script>
                                        $(function() {
                                            chg_opt();
                                            price_calculate();
                                        });
                                    </script>
                                </div>

                                <div id="sit_tot_price"></div>


								 <c:if test="${sessionMember_login_id == null }">
								 <span>구입은 <strong><a href="/member/login">로그인</a></strong> 후 진행해 주세요!</span>
								 </c:if>
								 <c:if test="${sessionMember_login_id != null }">
                                <div id="sit_ov_btn">
                                    <div class="sit_ov_order_btn">
                                        <button type="submit" onclick="document.pressed=this.value;" value="장바구니" class="btnset btn-type01 gray">
                                            <svg height="60" width="250">
                                                <rect height="60" width="250"></rect>
                                            </svg>
                                            <span>장바구니</span>
                                        </button>
                                        <button type="submit" onclick="document.pressed=this.value;" value="바로구매" class="btnset btn-type01">
                                            <svg height="60" width="250">
                                                <rect height="60" width="250"></rect>
                                            </svg>
                                            <span>구매하기</span>
                                        </button>
                                    </div>
                                  </c:if>
                                </div>

                                <div class="sns_share">
                                    <button type="button" class="btn_sns_share">
                                        <span class="sound_only">공유</span>
                                    </button>
                                    <a href="javascript:item_wish(document.fitem, '1654133092');" id="sit_btn_wish">위시리스트</a>
                                    <div class="sns_area">
                                        <div class="bg btn_snscl"></div>
                                        <div class="sns_wr">
                                            <h3>SNS 공유하기</h3>
                                            <div class="sns_link_list">
                                                <span class="sns_link sns_naver">
                                                    <script type="text/javascript" src="../../ssl.pstatic.net/share/js/naver_sharebutton.js"></script>
                                                    <script type="text/javascript">
                                                        new ShareNaver.makeButton({
                                                            "type": "f"
                                                        });
                                                    </script>
                                                </span> <a href="https://story.kakao.com/share?url=http://bxgs.co.kr/shop/item.php?it_id=1654133092" class="sns_link sns_kakao target=" _blank"> <img src="../home/img/ico/ico-social-login-kakao-on.png" alt="카카오">
                                                </a>

                                            </div>
                                            <div class="sns_link_copy">
                                                <input type="text" name="" id="" readonly value="http://bxgs.co.kr/shop/item.php?it_id=1654133092">
                                                <button type="button" id="sns-link-copy" onclick="javascript:clip();">URL 복사</button>
                                            </div>
                                            <button type="button" class="btn_snscl btn_close"></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                </form>

                <!----- 아티스트 다른 그림 ----->
                <div id="sit_rel">
                    <h2>아티스트 다른 그림</h2>
                    <div class="grid-list">
                        <div class="sct-slider-wrap">
                            <!-- 상단 아티스트의 다른 그림작품 시작(상단 1개그림 제외) { -->
                            <div class="sct-slider">
                                <ul class="swiper-wrapper sct">
                                    <c:forEach items="${list}" var="artistWorkVo">
                                        <li class="swiper-slide sct_li">
                                            <div class="li_wr">
                                                <div class="sct_img_wrap">
                                                    <div class="sct_img" style="background-image:url(/admin/img/work/${artistWorkVo.work_img_url})">
                                                        <span class="hide">작품이름</span>
                                                    </div>
                                                    <div class="sct_opt_wrap">
                                                        <div class="sct_btn">
                                                            <button type="button" onclick="AddToCartBtn(${artistWorkVo.id},${artistWorkVo.artist_id})" class="btnset btn-type01 btn_cart sct_cart">
                                                                <svg height="45" width="160">
                                                                    <rect height="45" width="160"></rect>
                                                                </svg>
                                                                <span>상세페이지 이동</span>
                                                            </button>
                                                        </div>
                                                        <div class="cart-layer"></div>
                                                        <div class="sct_op_btn">
                                                            <a href="painting_item?work_id=${artistWorkVo.id}&artist_id=${artistWorkVo.artist_id}" class="btnset btn-sight"><span class="hide">자세히보기</span></a>

                                                            <c:if test="${sessionMember_login_id == null }">
                                                                <button type="button" onclick="NoheartBtn()" class="btnset btn-like btn_wish">
                                                                    <span class="hide">찜하기</span>
                                                                </button>
                                                            </c:if>
                                                            <c:if test="${sessionMember_login_id != null }">
                                                                <button type="button" onclick="heartBtn('${sessionMember_id}',${workVo.id})" class="btnset btn-like btn_wish">
                                                                    <span class="hide">찜하기</span>
                                                                </button>
                                                            </c:if>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="sct_txt">
                                                    <a href="painting_item?work_id=${artistWorkVo.id}&artist_id=${artistWorkVo.artist_id}" class="sct_a">${artistWorkVo.work_name}</a>
                                                </div>
                                                <div class="sct_desc">
                                                    <span>${artistWorkVo.artist_name}</span>
                                                    <p>20.0cm x 35.7cm</p>
                                                </div>
                                                <div class="sct_cost">
                                                    <span class="price_cost"> <strong>
                                                            <fmt:formatNumber type="number" value="${artistWorkVo.work_price}" pattern="#,###" />원
                                                        </strong></span>
                                                </div>
                                            </div>
                                        </li>
                                    </c:forEach>
                                </ul>
                            </div>
                            <div class="swiper-button-prev cursor-able"></div>
                            <div class="swiper-button-next cursor-able"></div>
                            <div class="swiper-pagination"></div>
                            <!-- } 상품진열 끝 -->

                        </div>
                    </div>
                </div>


                <!----- 상품하단정보 ----->
                <div id="sit_ov_bottom">
                    <div class="sanchor-wrap" id="sanchor_pos">
                        <ul class="sanchor">
                            <li><a href="javascript:;" class="sanchor_on">상품정보</a></li>
                            <li><a href="javascript:;">구매정보</a></li>
                            <li><a href="javascript:;">상품후기<span class="item_use_count">(0)</span></a></li>
                            <li><a href="javascript:;">상품문의<span class="item_qa_count">(0)</span></a></li>
                        </ul>
                    </div>

                    <!----- 상품정보 ----->
                    <div id="sit_inf" class="sit_con open">
                        <h2 class="hide">상품 정보</h2>
                        <div class="sit_inf_explan_wrap">
                            <h3 class="hide">상품 상세설명</h3>
                            <div id="sit_inf_explan">

                                <!----- 작품설명 ----->
                                <div class="sit_inf_explan_item">
                                    <div class="item_tit_wrap">
                                        <span class="item_txt">${workVo.artist_name}</span>
                                        <h4 class="item_tit">${workVo.work_name}</h4>
                                    </div>
                                    <div class="item_frame_wrap">
                                        <div class="item_img" style="background-image:url(/admin/img/work/${workVo.work_img_url})">
                                            <span class="hide">제품이미지</span>
                                        </div>
                                    </div>
                                    <div class="item_desc_wrap">
                                        <div class="item_desc_tit">
                                            <strong class="item_name">${workVo.work_name}</strong> <span class="item_sm_name"> <span class="item_eng_name">${artistVo.artist_english_name}</span>
                                                <span class="item_artist_name">${workVo.artist_name}</span>
                                            </span>
                                        </div>
                                        <div class="item_desc_con">
                                            <p>${workVo.work_content}</p>
                                        </div>
                                    </div>
                                </div>



                                <!----- 작가설명 ----->
                                <div class="sit_inf_explan_artist">
                                    <div class="artist_img_wrap">
                                        <div class="artist_img" style="background-image:url(/admin/img/artist/${artistVo.artist_img_url})">
                                            <span class="hide">작가이미지</span>
                                        </div>
                                    </div>
                                    <div class="artist_info_wrap">
                                        <h4 class="artist_name">${artistVo.artist_korean_name}<span class="artist_eng_name">${artistVo.artist_english_name}</span>
                                        </h4>
                                        <dl class="artist_sum">
                                            <dt>국적</dt>
                                            <dd>${artistVo.artist_country}</dd>
                                        </dl>
                                        <dl class="artist_sum">
                                            <dt>출생&middot;사망</dt>
                                            <dd>${artistVo.artist_birth_death}</dd>
                                        </dl>
                                        <dl class="artist_sum">
                                            <dt>주요작품</dt>
                                            <dd>${artistVo.artist_main}</dd>
                                        </dl>
                                        <div class="artist_desc">
                                            <p>
                                                <span style="color: rgb(102, 102, 102);">${artistVo.artist_content}</span>
                                            </p>
                                        </div>
                                        <div class="artist_btnwrap">
                                            <a href="artist_view?artist_id=${artistVo.id}" class="btnset btn-type02">Read More</a>
                                        </div>
                                    </div>
                                </div>

                                <!----- DropShip프린트방법 ----->
                                <div class="sit_inf_explan_print">
                                    <h3 class="hide">DropShip 프린팅 방법 특징</h3>
                                    <img src="../home/img/sub/item-detail-contents.jpg" alt="">
                                </div>
                            </div>
                        </div>
                    </div>


                    <!----- 구매정보 ----->
                    <div id="sit_buy" class="sit_con">
                        <h2 class="hide">구매정보</h2>
                        <div id="itembuy">
                            <div class="itembuy-sec">
                                <div class="maxinner">
                                    <div class="item_tit_wrap">
                                        <span class="item_txt">Purchase Notes</span>
                                        <h4 class="item_tit">구매시 주의 사항</h4>
                                    </div>
                                    <div class="itembuy-con">
                                        <dl>
                                            <dt>
                                                <span>1</span>사이즈 오차
                                            </dt>
                                            <dd>DropShip갤러리 그림액자는 수제작 상품 특성상 제조 과정에서 크기에 따라 1~3cm 사이즈 오차가
                                                발생할 수 있으며 이는 상품 고유의 하자가 아닙니다. 동일 사이즈의 상품을 나란히 거치하시려는 경우 등 정밀 사이즈
                                                제작이 필요하신 경우는 구매시 배송메세지, 1:1 상담게시판에 요청사항을 남겨주시거나 고객센터로 연락주세요.</dd>
                                        </dl>
                                        <dl>
                                            <dt>
                                                <span>2</span>색감차이
                                            </dt>
                                            <dd>화면에서 보는 상품기술서 상의 색감과 실제 상품의 색감은 모니터와 미디어라는 매체의 특성, 사용자 기기의
                                                고유 특성에 따라 차이가 날 수 있으며 이는 상품의 하자가 아닙니다. 동일한 색상이라도 사람에 따라서 느끼는 색의
                                                차이가 존재하며 계절, 관람공간의 색상 및 조명 등 수많은 요소에 따라 다르게 보일 수 있기 때문에 색감, 느낌 등의
                                                사유로 인한 A/S 및 교환/반품이 불가한 점 양해 부탁드립니다.</dd>
                                        </dl>
                                        <dl>
                                            <dt>
                                                <span>3</span>배송정책
                                            </dt>
                                            <dd>
                                                DropShip갤러리 명화액자는 각 그림별 비율을 지키기 위한 개별 주문 수제작 상품으로 공장 상황에 따라 주문일로
                                                부터 출고까지 영업일 기준 5일내외 (마띠에르 리터치 상품은 영업일 20일이내 소요)의 제작기간이 소요됩니다. 넉넉하게
                                                여유를 가지고 주문해 주시기 바랍니다.<br>
                                                <br> * 주말 및 휴무일, 천재지변에 의한 기간은 배송기한에 포함되지 않습니다.
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>
                                                <span>4</span>배송비
                                            </dt>
                                            <dd>DropShip갤러리의 배송비는 기본 4,000원이며 10만원 이상 구매시 무료로 배송됩니다. 액자류는
                                                특성 및 크기에 따라 합포장이 어려우며, 배송비가 높은 점 양해 부탁드립니다.</dd>
                                        </dl>
                                        <dl>
                                            <dt>
                                                <span>5</span>보증 및 A/S
                                            </dt>
                                            <dd>DropShip갤러리 액자류 상품 AS기한은 구매일로부터 1년 입니다. 배송파손이나 초기 불량의 경우
                                                무상 수리 또는 재제작 배송 처리되며, AS기간 이후는 소정의 비용으로 A/S 해드립니다. A/S신청 시 문제 부위의
                                                사진을 잘 보이도록 촬영하여 카카오채널, 1:1상담, 휴대폰(010-0000-0000) 또는
                                                이메일(DropShipang@DropShipang.co.kr)으로 보내주세요.</dd>
                                        </dl>
                                    </div>
                                </div>
                            </div>
                            <div class="itembuy-sec bg-gray">
                                <div class="maxinner">
                                    <div class="item_tit_wrap">
                                        <span class="item_txt">Exchange / Refund</span>
                                        <h4 class="item_tit">교환 / 환불</h4>
                                    </div>
                                    <div class="itembuy-con">
                                        <dl>
                                            <dt>
                                                <span>1</span>교환 환불 정책
                                            </dt>
                                            <dd>DropShip갤러리의 그림액자는 그림, 미디어, 크기, 프레임 등을 고객이 지정하여 제작하는 주문제작
                                                상품으로 제품 특성상 소비자의 변심에 의한 상품교환 또는 환불이 불가합니다. 신중하게 구매해 주시기 바랍니다. 아크릴
                                                압착 상품이 오배송 된 경우 보호필름을 제거하시면 상품성 상실로 반송 처리가 불가합니다. 오배송을 확인하시면 절대로
                                                보호필름을 제거하지 마시고, 배송된 포장재에 그대로 재 포장하여 고객센터로 수거를 요청 해 주세요.</dd>
                                        </dl>
                                        <dl>
                                            <dt>
                                                <span>2</span>상품하자 / 오배송
                                            </dt>
                                            <dd>상품하자, 오배송의 경우 상품을 받으신 날로부터 7일 이내(신청일 기준) 교환 환불이 가능합니다. 배송중
                                                파손 또는 상품 초기 불량의 경우 수거 후 AS처리 되거나, 액자류 특성상 수거 없이 재제작 배송 될 수 있습니다.
                                                상품하자, 오배송에 따른 임의 반송 시 액자류 특성상 상품이 파손되기 쉬으므로 반드시 받으신 포장을 활용하여 재포장 해
                                                주시고 고객센터로 수거를 요청 해 주세요.</dd>
                                        </dl>
                                        <dl>
                                            <dt>
                                                <span>3</span>주문취소 / 환불
                                            </dt>
                                            <dd>주문제작상품 특성상 주문이 접수 이후 제작이 시작되면 배송 이전이라도 주문취소에 따른 전액 환불이
                                                불가합니다. 반드시 주문을 취소하셔야 하는 경우, 인쇄공정 진행시 상품금액의 30%, 프레임 공정 진행시 상품금액의
                                                70%를 차감한 나머지 금액을 환불 받으실 수 있습니다.</dd>
                                        </dl>
                                        <dl>
                                            <dt>
                                                <span>4</span>배송비
                                            </dt>
                                            <dd>
                                                상품의 하자로 인한 반품, A/S등을 위해 반송이 필요한 경우 반드시 고객센터에 문의/요청 해주세요. 임의 반송시
                                                상품이 파손/훼손되기 쉬우며, 이경우 고객과실로 반품, A/S등의 조치를 받기 어려울 수 있습니다.<br>
                                                <bR> * 반송주소 : 서울 강남구 강남대로 1234 (DropShip갤러리)
                                            </dd>
                                        </dl>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!----- 사용후기 ----->
                    <div id="sit_use" class="sit_con">
                        <div class="maxinner">
                            <h2 class="hide">사용후기</h2>

                            <!----- 전체평점 ----->
                            <div id="itemgrade">
                                <div class="left">
                                    <strong class="grade-total">4.8</strong>
                                    <p>
                                        <strong>100%</strong>의 구매자들이 이 상품을 좋아합니다.
                                    </p>
                                </div>
                                <div class="right">
                                    <ul>
                                        <li class="on">
                                            <div class="grade-star">
                                                <img src="/home/img/s_star5_big.png" alt="5점">
                                            </div>
                                            <div class="grade-txt">아주 좋아요</div>
                                            <div class="grade-graph">
                                                <div class="grade-bar" style="width: 98%;"></div>
                                            </div>
                                            <div class="grade-score">98%</div>
                                        </li>
                                        <li class="on">
                                            <div class="grade-star">
                                                <img src="/home/img/s_star4_big.png" alt="4점">
                                            </div>
                                            <div class="grade-txt">맘에 들어요</div>
                                            <div class="grade-graph">
                                                <div class="grade-bar" style="width: 100%;"></div>
                                            </div>
                                            <div class="grade-score">100%</div>
                                        </li>
                                        <li>
                                            <div class="grade-star">
                                                <img src="/home/img/s_star3_big.png" alt="3점">
                                            </div>
                                            <div class="grade-txt">보통이예요</div>
                                            <div class="grade-graph">
                                                <div class="grade-bar" style="width: 0%;"></div>
                                            </div>
                                            <div class="grade-score">0%</div>
                                        </li>
                                        <li>
                                            <div class="grade-star">
                                                <img src="/home/img/s_star2_big.png" alt="2점">
                                            </div>
                                            <div class="grade-txt">그냥 그래요</div>
                                            <div class="grade-graph">
                                                <div class="grade-bar" style="width: 0%;"></div>
                                            </div>
                                            <div class="grade-score">0%</div>
                                        </li>
                                        <li>
                                            <div class="grade-star">
                                                <img src="/home/img/s_star1_big.png" alt="1점">
                                            </div>
                                            <div class="grade-txt">별로예요</div>
                                            <div class="grade-graph">
                                                <div class="grade-bar" style="width: 0%;"></div>
                                            </div>
                                            <div class="grade-score">0%</div>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <!----- 사용후기 게시판 ----->
                            <div id="itemuse">


                                <div id="sit_use_tit">
                                    <h2>Review</h2>
                                    <div class="sit_use_order">
                                        <ul>
                                            <li class="on"><a href="#">최신순</a></li>
                                            <li><a href="#">평점높은순</a></li>
                                            <li><a href="#">평점낮은순</a></li>
                                        </ul>
                                    </div>
                                </div>

                                <div id="sit_use_list">
                                    <div class="empty-content">
                                        <img src="../home/img/ico/ico-information-big.png" alt="알림">
                                        <p>사용후기가 없습니다.</p>
                                    </div>
                                </div>

                                <div id="sit_use_wbtn">
                                    <a href="itemuseform0fd2.html?it_id=1654133092" class="btnset btn-type01 itemuse_form" onclick="return false;">
                                        <svg height="50" width="180">
                                            <rect height="50" width="180"></rect>
                                        </svg> <span>사용후기 쓰기</span>
                                    </a>
                                </div>



                                <script>
                                    $(function() {
                                        $(".itemuse_form").click(function() {
                                            window.open(this.href, "itemuse_form", "width=810,height=680,scrollbars=1");
                                            return false;
                                        });

                                        $(".itemuse_delete").click(function() {
                                            if (confirm("정말 삭제 하시겠습니까?\n\n삭제후에는 되돌릴수 없습니다.")) {
                                                return true;
                                            } else {
                                                return false;
                                            }
                                        });

                                        $(".sit_use_li_title").click(function() {
                                            var $con = $(this).siblings(".sit_use_con");
                                            if ($con.is(":visible")) {
                                                $con.slideUp();
                                                $(this).parent().removeClass('on');
                                            } else {
                                                $(".sit_use_con:visible").hide();
                                                $con.slideDown(
                                                    function() {
                                                        // 이미지 리사이즈
                                                        $con.viewimageresize2();
                                                    }
                                                );
                                                $('.sit_use_li').removeClass('on');
                                                $(this).parent().addClass('on');
                                            }
                                        });

                                        $(".pg_page").click(function() {
                                            $("#itemuse").load($(this).attr("href"));
                                            return false;
                                        });

                                        $("a#itemuse_list").on("click", function() {
                                            window.opener.location.href = this.href;
                                            self.close();
                                            return false;
                                        });
                                    });
                                </script>
                                <!-- } 상품 사용후기 끝 -->
                            </div>
                        </div>
                    </div>


                    <!----- 상품문의 ----->
                    <div id="sit_qa" class="sit_con">
                        <div class="maxinner">
                            <h2 class="hide">상품문의</h2>
                            <div id="itemqa">
                                <div id="sit_qa_tit">
                                    <div class="left">
                                        <h2>Q&amp;A</h2>
                                        <p>
                                            상품문의를 제외한 반품, 교환, 취소 등에 관한 문의는 <a href="#">고객센터 1:1 문의 게시판</a> 을
                                            이용해주시기 바랍니다.
                                        </p>
                                    </div>
                                    <div class="right">
                                        <div id="sit_qa_wbtn">
                                            <a href="itemqaform0fd2.html?it_id=1654133092" class="btnset btn-type01 itemqa_form"> <svg height="50" width="180">
                                                    <rect height="50" width="180"></rect>
                                                </svg> <span>상품 문의하기</span>
                                            </a>
                                            <!--
            <a href="https://bxgs.co.kr/shop/itemqaform.php?it_id=1654133092" class="itemqa_form qa_wr">상품문의 쓰기<span class="sound_only"> 새 창</span></a>
            <a href="https://bxgs.co.kr/shop/itemqalist.php" id="itemqa_list" class="btn01">더보기</a>
            -->
                                        </div>
                                    </div>
                                </div>

                                <div id="sit_qa_list">

                                    <div class="empty-content">
                                        <img src="../home/img/ico/ico-information-big.png" alt="알림">
                                        <p>상품문의가 없습니다.</p>
                                    </div>
                                </div>


                                <script>
                                    $(function() {
                                        $(".itemqa_form").click(function() {
                                            window.open(this.href, "itemqa_form", "width=810,height=680,scrollbars=1");
                                            return false;
                                        });

                                        $(".itemqa_delete").click(function() {
                                            return confirm("정말 삭제 하시겠습니까?\n\n삭제후에는 되돌릴수 없습니다.");
                                        });

                                        $(".sit_qa_li_title").click(function() {
                                            var $con = $(this).siblings(".sit_qa_con");
                                            if ($con.is(":visible")) {
                                                $con.slideUp();
                                                $(this).parent().removeClass('on');
                                            } else {
                                                $(".sit_qa_con:visible").hide();
                                                $con.slideDown(
                                                    function() {
                                                        // 이미지 리사이즈
                                                        $con.viewimageresize2();
                                                    }
                                                );
                                                $('.sit_qa_li').removeClass('on');
                                                $(this).parent().addClass('on');
                                            }
                                        });

                                        $(".qa_page").click(function() {
                                            $("#itemqa").load($(this).attr("href"));
                                            return false;
                                        });

                                        $("a#itemqa_list").on("click", function() {
                                            window.opener.location.href = this.href;
                                            self.close();
                                            return false;
                                        });
                                    });
                                </script>
                                } 상품문의 목록 끝
                            </div>
                        </div>
                    </div>
                </div>


                <script>
                    $(window).bind("pageshow", function(event) {
                        if (event.originalEvent.persisted) {
                            document.location.reload();
                        }
                    });

                    $(function() {
                        // 상품이미지 크게보기
                        $(".popup_item_image").click(function() {
                            var url = $(this).attr("href");
                            var top = 10;
                            var left = 10;
                            var opt = 'scrollbars=yes,top=' + top + ',left=' + left;
                            popup_window(url, "largeimage", opt);

                            return false;
                        });
                    });

                    // 상품보관
                    function item_wish(f, it_id) {
                        f.url.value = "wishupdate9f11.html?it_id=" + it_id;
                        f.action = "wishupdate.html";
                        f.submit();
                    }

                    // 추천메일
                    function popup_item_recommend(it_id) {
                        if (!g5_is_member) {
                            if (confirm("회원만 추천하실 수 있습니다."))
                                document.location.href = "../bbs/login3f72.html?url=https%3A%2F%2Fbxgs.co.kr%2Fshop%2Fitem.php%3Fit_id%3D1654133092";
                        } else {
                            url = "itemrecommend9f11.html?it_id=" + it_id;
                            opt = "scrollbars=yes,width=616,height=420,top=10,left=10";
                            popup_window(url, "itemrecommend", opt);
                        }
                    }

                    // 재입고SMS 알림
                    function popup_stocksms(it_id) {
                        url = "itemstocksms9f11.html?it_id=" + it_id;
                        opt = "scrollbars=yes,width=616,height=420,top=10,left=10";
                        popup_window(url, "itemstocksms", opt);
                    }

                    function fsubmit_check(f) {
                        // 판매가격이 0 보다 작다면
                        if (document.getElementById("it_price").value < 0) {
                            alert("전화로 문의해 주시면 감사하겠습니다.");
                            return false;
                        }

                        if ($(".sit_opt_list").size() < 1) {
                            alert("상품의 선택옵션을 선택해 주십시오.");
                            return false;
                        }

                        var val, io_type, result = true;
                        var sum_qty = 0;
                        var min_qty = parseInt(1);
                        var max_qty = parseInt(0);
                        var $el_type = $("input[name^=io_type]");

                        $("input[name^=ct_qty]").each(function(index) {
                            val = $(this).val();

                            if (val.length < 1) {
                                alert("수량을 입력해 주십시오.");
                                result = false;
                                return false;
                            }

                            if (val.replace(/[0-9]/g, "").length > 0) {
                                alert("수량은 숫자로 입력해 주십시오.");
                                result = false;
                                return false;
                            }

                            if (parseInt(val.replace(/[^0-9]/g, "")) < 1) {
                                alert("수량은 1이상 입력해 주십시오.");
                                result = false;
                                return false;
                            }

                            io_type = $el_type.eq(index).val();
                            if (io_type == "0")
                                sum_qty += parseInt(val);
                        });

                        if (!result) {
                            return false;
                        }

                        if (min_qty > 0 && sum_qty < min_qty) {
                            alert("선택옵션 개수 총합 " + number_format(String(min_qty)) + "개 이상 주문해 주십시오.");
                            return false;
                        }

                        if (max_qty > 0 && sum_qty > max_qty) {
                            alert("선택옵션 개수 총합 " + number_format(String(max_qty)) + "개 이하로 주문해 주십시오.");
                            return false;
                        }

                        return true;
                    }

                    // 바로구매, 장바구니 폼 전송
                    function fitem_submit(f) {
                        if ($("select[name=opt4]").val() == "") {
                            alert("사이즈를 선택해주세요.");
                            return false;
                        }

                        f.target = "";

                        if (document.pressed == "장바구니") {
                            f.sw_direct.value = 0;
                            f.action = "../myshop/cart"; // 장바구니 페이지 이동
                        } else { // 바로구매
                            f.sw_direct.value = 1;
                            f.action = "../myshop/order_form"; // 구매페이지 이동
                        }

                        // 판매가격이 0 보다 작다면
                        if (document.getElementById("it_price").value < 0) {
                            alert("전화로 문의해 주시면 감사하겠습니다.");
                            return false;
                        }

                        if ($(".sit_opt_list").size() < 1) {
                            alert("상품의 선택옵션을 선택해 주십시오.");
                            return false;
                        }

                        var val, io_type, result = true;
                        var sum_qty = 0;
                        var min_qty = parseInt(1);
                        var max_qty = parseInt(0);
                        var $el_type = $("input[name^=io_type]");

                        $("input[name^=ct_qty]").each(function(index) {
                            val = $(this).val();

                            if (val.length < 1) {
                                alert("수량을 입력해 주십시오.");
                                result = false;
                                return false;
                            }

                            if (val.replace(/[0-9]/g, "").length > 0) {
                                alert("수량은 숫자로 입력해 주십시오.");
                                result = false;
                                return false;
                            }

                            if (parseInt(val.replace(/[^0-9]/g, "")) < 1) {
                                alert("수량은 1이상 입력해 주십시오.");
                                result = false;
                                return false;
                            }

                            io_type = $el_type.eq(index).val();
                            if (io_type == "0")
                                sum_qty += parseInt(val);
                        });

                        if (!result) {
                            return false;
                        }

                        if (min_qty > 0 && sum_qty < min_qty) {
                            alert("선택옵션 개수 총합 " + number_format(String(min_qty)) + "개 이상 주문해 주십시오.");
                            return false;
                        }

                        if (max_qty > 0 && sum_qty > max_qty) {
                            alert("선택옵션 개수 총합 " + number_format(String(max_qty)) + "개 이하로 주문해 주십시오.");
                            return false;
                        }

                        return true;
                    }

                    //class 추가
                    $("#container_title").addClass("con_tit_view");
                    $("#container").addClass("con_item_veiw");

                    // 공유
                    $(".btn_sns_share").click(function() {
                        $(this).addClass('on');
                        $(".sns_area").show();
                    });
                    $(".btn_snscl").click(function() {
                        $('.btn_sns_share').removeClass('on');
                        $(".sns_area").hide();
                    });

                    $(window).on("load", function() {
                        $("#sit_inf_explan").viewimageresize2();
                    });
                </script>

                <script>
                    jQuery(function($) {
                        $(".2017_renewal_itemform select.it_supply").on("shop_sel_supply_process", function(e, param) {

                            var add_exec = param.add_exec;
                            var $el = $(this);
                            var val = $el.val();

                            //블랙캣77님이 해당 코드에 도움을 주셨습니다.
                            var eq = $("select.it_supply").index($(this));
                            var item = $el.closest(".sit_option").find("label").eq(eq).text();

                            if (!val) {
                                alert(item + "을(를) 선택해 주십시오.");
                                return false;
                            }

                            var info = val.split(",");

                            // 재고체크
                            if (parseInt(info[2]) < 1) {
                                alert(info[0] + "은(는) 재고가 부족하여 구매할 수 없습니다.");
                                return false;
                            }

                            var id = item + chr(30) + info[0];
                            var option = item + ":" + info[0];
                            var price = info[1];
                            var stock = info[2];

                            // 금액 음수 체크
                            if (parseInt(price) < 0) {
                                alert("구매금액이 음수인 상품은 구매할 수 없습니다.");
                                return false;
                            }

                            if (add_exec) {
                                if (same_option_check(option))
                                    return false;

                                add_sel_option(1, id, option, price, stock);
                            }

                            return false;
                        });

                        if (typeof add_sel_option === "function") {

                            add_sel_option = (function() {
                                var cached_function = add_sel_option;

                                return function() {

                                    if ($(".2017_renewal_itemform").length) {
                                        var a = arguments;
                                        var type = a[0],
                                            id = a[1],
                                            option = a[2],
                                            price = a[3],
                                            stock = a[4];

                                        var item_code = $("input[name='it_id[]']").val();
                                        var opt = "";
                                        var li_class = "sit_opt_list";
                                        if (type)
                                            li_class = "sit_spl_list";

                                        var opt_prc;
                                        if (parseInt(price) >= 0)
                                            opt_prc = "<strong>" + number_format(String(price)) + "</strong> 원";
                                        else
                                            opt_prc = "<strong>" + number_format(String(price)) + "</strong> 원";

                                        opt += "<li class=\"" + li_class + "\">";
                                        opt += "<input type=\"hidden\" name=\"io_type[" + item_code + "][]\" value=\"" + type + "\">";
                                        opt += "<input type=\"hidden\" name=\"io_id[" + item_code + "][]\" value=\"" + id + "\">";
                                        opt += "<input type=\"hidden\" name=\"io_value[" + item_code + "][]\" value=\"" + option + "\">";
                                        opt += "<input type=\"hidden\" class=\"io_price\" value=\"" + price + "\">";
                                        opt += "<input type=\"hidden\" class=\"io_stock\" value=\"" + stock + "\">";
                                        opt += "<div class=\"opt_name\">";
                                        opt += "<span class=\"sit_opt_subj\">" + option + "</span>";
                                        opt += "</div>";
                                        opt += "<div class=\"opt_count\">";
                                        opt += "<button type=\"button\" class=\"sit_qty_minus\"><span class=\"sound_only\">감소</span></button>";
                                        opt += "<input type=\"text\" name=\"ct_qty[" + item_code + "][]\" value=\"1\" class=\"num_input\" size=\"5\">";
                                        opt += "<button type=\"button\" class=\"sit_qty_plus\"><span class=\"sound_only\">증가</span></button>";
                                        opt += "<span class=\"sit_opt_prc\">" + opt_prc + "</span>";
                                        opt += "<button type=\"button\" class=\"sit_opt_del\"><span class=\"sound_only\">삭제</span></button></div>";
                                        opt += "</li>";

                                        if ($("#sit_sel_option > ul").length < 1) {
                                            $("#sit_sel_option").html("<ul id=\"sit_opt_added\"></ul>");
                                            $("#sit_sel_option > ul").html(opt);
                                        } else {
                                            if (type) {
                                                if ($("#sit_sel_option .sit_spl_list").length > 0) {
                                                    $("#sit_sel_option .sit_spl_list:last").after(opt);
                                                } else {
                                                    if ($("#sit_sel_option .sit_opt_list").length > 0) {
                                                        $("#sit_sel_option .sit_opt_list:last").after(opt);
                                                    } else {
                                                        $("#sit_sel_option > ul").html(opt);
                                                    }
                                                }
                                            } else {
                                                if ($("#sit_sel_option .sit_opt_list").length > 0) {
                                                    $("#sit_sel_option .sit_opt_list:last").after(opt);
                                                } else {
                                                    if ($("#sit_sel_option .sit_spl_list").length > 0) {
                                                        $("#sit_sel_option .sit_spl_list:first").before(opt);
                                                    } else {
                                                        $("#sit_sel_option > ul").html(opt);
                                                    }
                                                }
                                            }
                                        }

                                        price_calculate();

                                        $("#sit_sel_option").trigger("add_sit_sel_option", [opt]);

                                    } else {

                                        cached_function.apply(this, arguments); // use .apply() to call it

                                    } //end if

                                };
                            }());
                        } //end if check function

                        if (typeof price_calculate === "function") {
                            price_calculate = (function() {
                                var cached_function = price_calculate;

                                return function() {

                                    if ($(".2017_renewal_itemform").length) {

                                        var arr_opt2_1_price = {
                                            1: 0,
                                            2: 0,
                                            3: 4200,
                                            4: 16900,
                                            5: 25400,
                                            6: 0,
                                            7: 29600,
                                            8: 27500,
                                            9: 27500,
                                            10: 27500
                                        }
                                        var arr_opt2_2_price = {
                                            1: 4200,
                                            2: 16900,
                                            3: 0,
                                            4: 29600,
                                            5: 25400,
                                            6: 25400,
                                            7: 25400
                                        }

                                        var arr_opt3_1_1_price = {
                                            1: 0
                                        }
                                        var arr_opt3_1_2_price = {
                                            1: 0
                                        }
                                        var arr_opt3_1_3_price = {
                                            1: 0
                                        }
                                        var arr_opt3_1_4_price = {
                                            1: 0
                                        }
                                        var arr_opt3_1_5_price = {
                                            1: 0
                                        }
                                        var arr_opt3_1_6_price = {
                                            1: 0,
                                            2: 8400,
                                            3: 16900,
                                            4: 31000,
                                            5: 42400
                                        }
                                        var arr_opt3_1_7_price = {
                                            1: 0,
                                            2: 14400,
                                            3: 28800,
                                            4: 52800,
                                            5: 72000
                                        }
                                        var arr_opt3_1_8_price = {
                                            1: 0
                                        }
                                        var arr_opt3_1_9_price = {
                                            1: 0
                                        }
                                        var arr_opt3_1_10_price = {
                                            1: 0
                                        }

                                        var arr_opt3_2_1_price = {
                                            1: 0
                                        }
                                        var arr_opt3_2_2_price = {
                                            1: 0
                                        }
                                        var arr_opt3_2_3_price = {
                                            1: 0,
                                            2: 8400,
                                            3: 16900,
                                            4: 31000,
                                            5: 42400
                                        }
                                        var arr_opt3_2_4_price = {
                                            1: 0,
                                            2: 14400,
                                            3: 28800,
                                            4: 52800,
                                            5: 72000
                                        }
                                        var arr_opt3_2_5_price = {
                                            1: 0
                                        }
                                        var arr_opt3_2_6_price = {
                                            1: 0
                                        }
                                        var arr_opt3_2_7_price = {
                                            1: 0
                                        }
                                        const arr_opt4_price = new Array();
                                        arr_opt4_price.push("36500");
                                        arr_opt4_price.push("50300");
                                        //var arr_opt4_price = {1:1000, 2:2000, 3:3000, 4:4000, 5:5000, 6:6000, 7:7000, 8:8000}

                                        var it_price = parseInt($("input#it_price").val());
                                        var val_opt1 = $("input[name=opt1]:checked").val();
                                        var val_opt2 = $("input[name=opt2]:checked").val();
                                        var val_opt3 = $("input[name=opt3]:checked").val();
                                        var val_opt4 = $("select[name=opt4]").val();

                                        if (val_opt4 == "") {
                                            var add_opt2 = parseInt(0);
                                            var add_opt3 = parseInt(0);
                                            var add_opt4 = parseInt(0);
                                        } else {
                                            if (val_opt1 == 1) {
                                                var add_opt2 = parseInt(arr_opt2_1_price[val_opt2]);
                                                if (val_opt2 == 1) {
                                                    var add_opt3 = parseInt(arr_opt3_1_1_price[val_opt3]);
                                                } else if (val_opt2 == 2) {
                                                    var add_opt3 = parseInt(arr_opt3_1_2_price[val_opt3]);
                                                } else if (val_opt2 == 3) {
                                                    var add_opt3 = parseInt(arr_opt3_1_3_price[val_opt3]);
                                                } else if (val_opt2 == 4) {
                                                    var add_opt3 = parseInt(arr_opt3_1_4_price[val_opt3]);
                                                } else if (val_opt2 == 5) {
                                                    var add_opt3 = parseInt(arr_opt3_1_5_price[val_opt3]);
                                                } else if (val_opt2 == 6) {
                                                    var add_opt3 = parseInt(arr_opt3_1_6_price[val_opt3]);
                                                } else if (val_opt2 == 7) {
                                                    var add_opt3 = parseInt(arr_opt3_1_7_price[val_opt3]);
                                                } else if (val_opt2 == 8) {
                                                    var add_opt3 = parseInt(arr_opt3_1_8_price[val_opt3]);
                                                } else if (val_opt2 == 9) {
                                                    var add_opt3 = parseInt(arr_opt3_1_9_price[val_opt3]);
                                                } else if (val_opt2 == 10) {
                                                    var add_opt3 = parseInt(arr_opt3_1_10_price[val_opt3]);
                                                }
                                            } else {
                                                var add_opt2 = parseInt(arr_opt2_2_price[val_opt2]);
                                                if (val_opt2 == 1) {
                                                    var add_opt3 = parseInt(arr_opt3_2_1_price[val_opt3]);
                                                } else if (val_opt2 == 2) {
                                                    var add_opt3 = parseInt(arr_opt3_2_2_price[val_opt3]);
                                                } else if (val_opt2 == 3) {
                                                    var add_opt3 = parseInt(arr_opt3_2_3_price[val_opt3]);
                                                } else if (val_opt2 == 4) {
                                                    var add_opt3 = parseInt(arr_opt3_2_4_price[val_opt3]);
                                                } else if (val_opt2 == 5) {
                                                    var add_opt3 = parseInt(arr_opt3_2_5_price[val_opt3]);
                                                } else if (val_opt2 == 5) {
                                                    var add_opt3 = parseInt(arr_opt3_2_6_price[val_opt3]);
                                                } else if (val_opt2 == 7) {
                                                    var add_opt3 = parseInt(arr_opt3_2_7_price[val_opt3]);
                                                }
                                            }
                                            var add_opt4 = parseInt(arr_opt4_price[val_opt4]);
                                        }

                                        if (isNaN(it_price))
                                            return;

                                        var $el_prc = $("input.io_price");
                                        var $el_qty = $("input[name^=ct_qty]");
                                        var $el_type = $("input[name^=io_type]");
                                        var price, type, qty, total = 0;

                                        $el_prc.each(function(index) {
                                            price = parseInt($(this).val());
                                            qty = parseInt($el_qty.eq(index).val());
                                            type = $el_type.eq(index).val();

                                            if (type == "0") { // 선택옵션
                                                //total += (it_price + price) * qty;
                                                tmp_price = (it_price + price + add_opt2 + add_opt3 + add_opt4) * qty;
                                                total += tmp_price;

                                            } else { // 추가옵션
                                                //total += price * qty;
                                                tmp_price = (price + add_opt2 + add_opt3 + add_opt4) * qty;
                                                total += tmp_price;
                                            }

                                            $("#sit_opt_added li").eq(index).find("span.sit_opt_prc").empty().html("<strong>" + number_format(String(tmp_price)) + "</strong> 원");

                                            // 2020.09.11 중간 오른쪽 화면도 계산을 해야해서 추가함
                                            $("#sit_buy .sit_opt_added li").eq(index).find("span.sit_opt_prc").empty().html("<strong>" + number_format(String(tmp_price)) + "</strong> 원");
                                        });

                                        $("#sit_tot_price").empty().html("<span>총 금액</span><strong>" + number_format(String(total)) + "</strong> 원");

                                        $("#sit_tot_price").trigger("price_calculate", [total]);
                                    } else {
                                        cached_function.apply(this, arguments); // use .apply() to call it
                                    }

                                };
                            }());
                        } //end if check function
                    });
                </script>

                <script>
                    // 찜리스트
                    function heartBtn(member_id, work_id) {
                        $.ajax({
                            url: "../myshop/workWishlist_ajax",
                            type: "post",
                            data: {
                                "member_id": member_id,
                                "work_id": work_id
                            },
                            success: function(list) {
                                if (list == 0) {
                                    alert("상품을 찜리스트에 담았습니다.");
                                } else {
                                    alert("이미 있습니다");
                                }
                            },
                            error: function() {
                                alert("시스템 오류입니다.");
                            }
                        }); //ajax
                    } //function


                    function NoheartBtn() {
                        alert("회원 전용 서비스 입니다.");
                    }


                    // ADD To CART 구문
                    function AddToCartBtn(work_id, artist_id) {
                        var url = "/shop/painting_item?work_id=" + work_id + "&artist_id=" + artist_id;
                        location.href = url;
                    }
                </script>
            </div>
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
</body>

</html>