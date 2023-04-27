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
    <title>마이페이지</title>
    <link rel="stylesheet" href="../home/theme/buzinga/css/mobile_shop3816.css?ver=210618">
    <link rel="stylesheet" href="../home/js/font-awesome/css/font-awesome.min3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/swiper.min3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/aos3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/nice-select3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/js/owl.carousel3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/common3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/sub3816.css?ver=210618">

    <script src="https://bxgs.co.kr/js/sns.js"></script>
    <script src="https://bxgs.co.kr/theme/buzinga/js/css3-animate-it.js"></script>
    <link rel="stylesheet" href="https://bxgs.co.kr/theme/buzinga/css/animate.css">
    <script src="https://bxgs.co.kr/theme/buzinga/js/base.js"></script>
    <script src="https://bxgs.co.kr/theme/buzinga/js/sub.js"></script>
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
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
    <style>
        video {
            width: 1020px;
            height: 600px;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function() {
            $('html, body').animate({
                scrollTop: $('#sthDrone').offset().top
            }, 'slow');
        });
    </script>

</head>

<body>
    <div id="hd_login_msg">
        <a href="https://bxgs.co.kr/bbs/logout.php">로그아웃</a>
    </div>
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
            <section class="mypage">
                <div class="maxinner">
                    <!-- mypage_side_bar 시작 부분 -->
                    <%@ include file="../top/mypage_side_bar.jsp"%>
                    <!-- mypage_side_bar 끝 부분 -->
                    <div class="mypage-con">
                        <!-- mypage_coupon_header 시작 부분 -->
                        <%@ include file="../top/mypage_coupon_header.jsp"%>
                        <!-- mypage_coupon_header 끝 부분 -->
                        <br><br><br><br>
                        <div class="sod_fin_list" id="sod_fin_list">
                            <h3 class="hide">주문하신 상품</h3>


                            <div class="tbl_order tbl_wrap">
                                <table>
                                    <thead>
                                        <tr>
                                            <th id="th_itopt">No</th>
                                            <th id="th_itqty">Product</th>
                                            <th id="th_itprice">Unit price</th>
                                            <th id="th_itsum">Quantity</th>
                                            <th id="th_itpt">SubTotal</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${optionVoList}" var="optionVo" varStatus="loop">
                                            <tr>
                                                <td data-title="No" class="td_no">${loop.index + 1}</td>
                                                <td data-title="Product" class="td_prd">
                                                    <div class="sod_product">
                                                        <div class="sod_img">
                                                            <a href="../shop/painting_item?work_id=${workVoList[loop.index].id}&artist_id=${workVoList[loop.index].artist_id}" style="background-image:url(../admin/img/work/${workVoList[loop.index].work_img_url})">
                                                                <span class="hide">제품이미지</span>
                                                            </a>
                                                        </div>
                                                        <div class="sod_name">
                                                            <a href="../shop/painting_item?work_id=${workVoList[loop.index].id}&artist_id=${workVoList[loop.index].artist_id}" class="prd_name">
                                                                <strong>${workVoList[loop.index].work_name}</strong>
                                                                <span>${artistVoList[loop.index].artist_korean_name}</span>
                                                            </a>
                                                            <div class="sod_opt">
                                                                <ul>
                                                                    <c:if test="${optionVo.option_size == 0}">
                                                                        <li>사이즈 : 20.0cm x 35.7cm(+36,500)</li>
                                                                    </c:if>
                                                                    <c:if test="${optionVo.option_size == 1}">
                                                                        <li>사이즈 : 25.0cm x 44.6cm(+50,300)</li>
                                                                    </c:if>
                                                                    <c:if test="${optionVo.option_media == 0}">
                                                                        <li>미디어 : 캔버스(+0)</li>
                                                                    </c:if>
                                                                    <c:if test="${optionVo.option_media == 1}">
                                                                        <li>미디어 : 파인아트(+${optionVo.option_selected_price - optionVo.option_frame_added_price - optionVo.option_matt_added_price})</li>
                                                                    </c:if>
                                                                    <c:if test="${optionVo.option_mattier == 0}">
                                                                        <li>리터치 : 없음(+0)</li>
                                                                    </c:if>
                                                                    <c:if test="${optionVo.option_mattier == 1}">
                                                                        <li>리터치 : 선택(+0)</li>
                                                                    </c:if>
                                                                    <c:choose>
                                                                        <c:when test="${optionVo.option_frame == 0}">
                                                                            <li>프레임 : 캔버스판넬(+0)</li>
                                                                        </c:when>
                                                                        <c:when test="${optionVo.option_frame == 1}">
                                                                            <li>프레임 : 래핑캔버스(+0)</li>
                                                                        </c:when>
                                                                        <c:when test="${optionVo.option_frame == 2}">
                                                                            <li>프레임 : 띄움(+4,000)</li>
                                                                        </c:when>
                                                                        <c:when test="${optionVo.option_frame == 3}">
                                                                            <li>프레임 : 원목 띄움(+16,000)</li>
                                                                        </c:when>
                                                                        <c:when test="${optionVo.option_frame == 4}">
                                                                            <li>프레임 : 올림우드(+20,000)</li>
                                                                        </c:when>
                                                                        <c:when test="${optionVo.option_frame == 5}">
                                                                            <li>프레임 : 앤틱D실버(+0)</li>
                                                                        </c:when>
                                                                        <c:when test="${optionVo.option_frame == 6}">
                                                                            <li>프레임 : 원목베이지(+30,000)</li>
                                                                        </c:when>
                                                                        <c:when test="${optionVo.option_frame == 7}">
                                                                            <li>프레임 : 관화이트(+28,000)</li>
                                                                        </c:when>
                                                                        <c:when test="${optionVo.option_frame == 8}">
                                                                            <li>프레임 : 관우드(+28,000)</li>
                                                                        </c:when>
                                                                        <c:when test="${optionVo.option_frame == 9}">
                                                                            <li>프레임 : 관블랙(+28,000)</li>
                                                                        </c:when>
                                                                    </c:choose>
                                                                    <c:choose>
                                                                        <c:when test="${optionVo.option_matt == 0}">
                                                                            <li>매트(여백) : 없음(+0)</li>
                                                                        </c:when>
                                                                        <c:when test="${optionVo.option_matt == 1}">
                                                                            <li>매트(여백) : 2cm(+10,000)</li>
                                                                        </c:when>
                                                                        <c:when test="${optionVo.option_matt == 2}">
                                                                            <li>매트(여백) : 3cm(+20,000)</li>
                                                                        </c:when>
                                                                        <c:when test="${optionVo.option_matt == 3}">
                                                                            <li>매트(여백) : 6cm(+30,000)</li>
                                                                        </c:when>
                                                                        <c:when test="${optionVo.option_matt == 4}">
                                                                            <li>매트(여백) : 11cm(+40,000)</li>
                                                                        </c:when>
                                                                    </c:choose>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td data-title="Unit price" class="td_numbig text_right">${workVoList[loop.index].work_price} 원</td>
                                                <td data-title="Quantity" class="td_num">${optionVo.option_quantity}개</td>
                                                <td data-title="Subtotal" class="td_numbig text_right"><span class="total_price">${optionVo.option_selected_price}원 * ${optionVo.option_quantity}개 <br><br> ${optionVo.option_selected_price * optionVo.option_quantity}</span> 원</td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div id="sthDrone"></div><br>
                        <div class="mypage-order">
                            <div class="mypage-tit">
                                <h3>드론 배송 현황</h3>
                                <!--<p>최근 30일 내에 진행중인 주문정보입니다.</p>-->
                            </div>
                            <div class="tbstyle01">
                                <table>
                                    <caption class="hide">주문목록</caption>
                                    <colgroup>
                                        <col class="col1" width="160px">
                                        <col class="col2" width="160px">
                                        <col class="col3" width="160px">
                                        <col class="col4" width="80px">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th scope="col">주문일/주문번호</th>
                                            <th scope="col">출발지</th>
                                            <th scope="col">배송지</th>
                                            <th scope="col">받는 이</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>${map.order_memberVo.order_date}&nbsp;&nbsp;/&nbsp;&nbsp;${map.order_memberVo.id}</td>
                                            <td>신정 비행장</td>
                                            <td>${map.order_memberVo.delivery_road}${map.order_memberVo.delivery_address}</td>
                                            <td>${map.order_memberVo.delivery_name}</td>
                                        </tr>
                                        <!--------------------드론 페이지 들어가는 부분--------------------------->
                                        <tr>
                                            <td colspan="4">
                                                <div class="video-container">
                                                    <div>
                                                        <video id="video-player" autoplay muted>
                                                            <source src="../home/video/drone.mp4" type="video/mp4">
                                                        </video>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <!--------------------------------------------------------------------->
                                    </tbody>
                                </table>
                                <a href="../myshop/mypage?member_id=${sessionMember_id}" class="btnset btn-type02">My Page</a>
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
</body>

</html>