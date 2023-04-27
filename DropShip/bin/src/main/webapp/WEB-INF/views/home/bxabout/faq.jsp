<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">

<!-- Mirrored from bxgs.co.kr/bbs/faq.php by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:03:33 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
    <meta name="HandheldFriendly" content="true">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="shortcut icon" href="../home/img/favicon.ico" />
    <title>Q&A</title>
    <link rel="stylesheet" href="../home/theme/buzinga/css/mobile_shop3816.css?ver=210618">
    <link rel="stylesheet" href="../home/js/font-awesome/css/font-awesome.min3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/swiper.min3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/aos3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/nice-select3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/js/owl.carousel3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/mobile/skin/faq/basic/style3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/common3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/sub3816.css?ver=210618">
    <!--[if lte IE 8]>
<script src="https://bxgs.co.kr/js/html5.js"></script>
<![endif]-->
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
                    <span class="sub-txt">고객님의 궁금증을 빠르고 정확하게 도와드리겠습니다.</span>
                    <h2 class="sub-tit">Q&A</h2>
                </div>
            </section>


            <div id="faq_hhtml"></div>
            <section class="board faq">
                <div class="maxinner">

                    <div class="grid-list-opt">
                        <div class="grid-opt-left">찾으시는 문의 내용이 없으시면 <a href="#" class="link-txt f-color">1:1 문의</a>를 이용해 주세요.</div>
                        <div class="grid-opt-right">
                            <div class="grid-board-search">
                                <form name="faq_search_form" method="get">
                                    <input type="hidden" name="fm_id" value="1">
                                    <label for="stx" class="sound_only">검색어<strong class="sound_only"> 필수</strong></label>
                                    <div class="sch-box">
                                        <input type="text" name="stx" value="" required id="stx" class="inp-type01" size="15" maxlength="15" placeholder="검색어를 입력해주세요.">
                                        <button type="submit" value="검색" class="sch-btn"><span class="sound_only">검색</span></button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>

                    <nav class="grid-faq-menu" id="bo_cate">
                        <h2 class="hide">자주하시는질문 분류</h2>
                        <ul id="bo_cate_ul">
                            <li><a href="faq33b6.html?fm_id=1" id="bo_cate_on"><span class="sound_only">열린 분류 </span>전체</a></li>
                            <li><a href="faq8647.html?fm_id=2">주문/결제</a></li>
                            <li><a href="faqc44a.html?fm_id=3">배송관련</a></li>
                            <li><a href="faqedce.html?fm_id=4">교환/반품/환불</a></li>
                            <li><a href="faqafa3.html?fm_id=5">회원/포인트</a></li>
                            <li><a href="faqd1da.html?fm_id=6">사이트 이용</a></li>
                            <li><a href="faq4317.html?fm_id=7">기타</a></li>
                        </ul>
                    </nav>

                    <div class="grid-faq-list">
                        <div id="faq-wrap" class="faq_1">
                            <div id="faq-list">
                                <h2 class="hide">전체 목록</h2>
                                <ol>
                                    <li>
                                        <div class="faq-tit">
                                            <span class="faq-cate">주문/결제</span>
                                            <div class="faq-tit-txt">
                                                <p>무통장입금은 언제까지 입금해야 하나요?<br /></p>
                                            </div>
                                            <button class="faq-open" onclick="return faq_open(this);"><span class="hide">열기</span></button>
                                        </div>
                                        <div class="faq-con">
                                            <div class="faq-con-inner">
                                                <p>무통장입금은 주문완료 후 7일 이내 입금해야 합니다. 입금기한 내 입금확인이 되지 않은 주문 건은 자동 취소 됩니다. 결제가 완료된 주문건에 한해서 배송이 진행되므로 주문 취소된 건은</p>
                                                <p>재주문해주셔야됩니다.</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="faq-tit">
                                            <span class="faq-cate">주문/결제</span>
                                            <div class="faq-tit-txt">
                                                <p>꼭 회원 가입을 해야만 주문할수 있나요? <br /></p>
                                            </div>
                                            <button class="faq-open" onclick="return faq_open(this);"><span class="hide">열기</span></button>
                                        </div>
                                        <div class="faq-con">
                                            <div class="faq-con-inner">
                                                <p>비회원도 주문이 가능합니다.</p>
                                                <p>단, 회원가입을 해야지 더 많은 해택을 받으실 수 있습니다.</p>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="faq-tit">
                                            <span class="faq-cate">배송관련</span>
                                            <div class="faq-tit-txt">
                                                <p>주문한 상품의 배송기간은 얼마나 되나요?<br /></p>
                                            </div>
                                            <button class="faq-open" onclick="return faq_open(this);"><span class="hide">열기</span></button>
                                        </div>
                                        <div class="faq-con">
                                            <div class="faq-con-inner">
                                                <p>지역별, 기상악화, 천재지변, 택배사 사정에 따라 다소 차이가 날 수 있습니다.<br /></p>
                                            </div>
                                        </div>
                                    </li>
                                </ol>
                            </div>
                        </div>
                    </div>


                </div>
            </section>

            <div id="faq_thtml"></div>

            <script src="../home/js/viewimageresize.js"></script>
            <script>
                function faq_open(el) {
                    var $con = $(el).closest("li").find(".faq-con");

                    if ($con.is(":visible")) {
                        $con.slideUp();
                        $(el).closest("li").removeClass("on");
                    } else {
                        $("#faq-list li").removeClass("on");
                        $(el).closest("li").addClass("on");
                        $("#faq-list .faq-con:visible").css("display", "none");

                        $con.slideDown(
                            function() {
                                // 이미지 리사이즈
                                $con.viewimageresize2();
                            }
                        );

                    }

                    return false;
                }
            </script>
        </main>

        <!-- footer 부분 시작 -->
        <%@ include file = "../top/footer.jsp" %>
        <!-- footer 부분 끝 -->

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

<!-- Mirrored from bxgs.co.kr/bbs/faq.php by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:03:36 GMT -->

</html>