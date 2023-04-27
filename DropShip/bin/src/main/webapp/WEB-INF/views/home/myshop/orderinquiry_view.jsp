<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
    <meta name="HandheldFriendly" content="true">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="shortcut icon" href="/home/img/favicon.ico" />
    <title>주문했던 내역</title>
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

            <section class="sub-tit-wrap" data-aos="fade-up">
                <div class="maxinner">
                    <h2 class="sub-tit">ORDER INFO</h2>
                </div>
            </section>



            <!-- 주문상세내역 시작 { -->
            <section id="sod_fin">
                <div class="maxinner">
                    <div class="sod_fin_message">
                        <p>고객님의 주문이 정상적으로 처리 되었습니다.</p>
                        <div id="sod_fin_no">주문번호 <strong>${order_memberVo.id}</strong></div>
                    </div>

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

                    <div class="sod_fin_total">

                        <div class="fin_total_box_wrap">
                            <div class="fin_total_box">
                                <div class="fin_total_top">
                                    <div class="fin_total_cate">총 주문금액</div>
                                    <div class="fin_total_price"><strong>${total_price+2000}</strong> 원</div><!--나중에 리스트로 받아오는거 구현하고 해야  -->
                                </div>
                                <div class="fin_total_btm">
                                    <div class="fin_total_cate">주문금액</div>
                                    <div class="fin_total_price"><strong>${total_price}</strong> 원</div>
                                </div>
                            </div>

                            <div class="fin_total_box">
                                <div class="fin_total_top">
                                    <div class="fin_total_cate">총 할인금액</div>
                                    <div class="fin_total_price"><strong>0</strong> 원</div>
                                </div>
                            </div>

                            <div class="fin_total_box">
                                <div class="fin_total_top">
                                    <div class="fin_total_cate">총 결제금액</div>
                                    <div class="fin_total_price"><strong class="f-color">${total_price+2000}</strong> 원</div>
                                </div>
                                <div class="fin_total_btm">
                                    <div class="fin_total_cate">총 주문금액</div>
                                    <div class="fin_total_price"><strong>${total_price+2000}</strong> 원</div>
                                </div>
                                <div class="fin_total_btm">
                                    <div class="fin_total_cate">미결제액</div>
                                    <div class="fin_total_price"><strong>${total_price+2000}</strong> 원</div>
                                </div>
                                <div class="fin_total_btm" id="alrdy">
                                    <div class="fin_total_cate">결제액</div>
                                    <div class="fin_total_price">
                                        <div><strong>1,000</strong> 원</div>
                                        <p><span class="title">포인트 결제</span>1,000 점</p>
                                        <p><span class="title">실결제</span>0 원</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <ul class="fin_notice_list">
                            <li>※ 입금자명이 주문자명이 동일해야 주문 확인이 원활하게 이루어집니다.</li>
                            <li>※ 결제금액, 입금자명 등 결제 정보가 주문 내역과 동일하지 않은 경우에는 마이페이지 1:1 문의 글을 남겨주세요.</li>
                        </ul>
                    </div>

                    <div class="sod_fin_normal" id="sod_fin_receiver">
                        <h3 class="sod_fin_tit">배송지 정보</h3>
                        <div class="tbstyle02">
                            <table>
                                <caption class="hide">배송지 정보를 제공해주는 표</caption>
                                <colgroup>
                                    <col width="15%">
                                    <col width="15%">
                                    <col width="15%">
                                    <col width="20%">
                                    <col width="15%">
                                    <col width="25%">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th>받으시는 분</th>
                                        <td colspan="5">${order_memberVo.delivery_name}</td>
                                    </tr>
                                    <tr>
                                        <th>핸드폰번호</th>
                                        <td colspan="5">${order_memberVo.delivery_phone}</td>
<!--                                         <th>전화번호</th> -->
<!--                                         <td>028394015</td> -->
                                    </tr>
                                    <tr>
                                        <th>우편번호</th>
                                        <td>${order_memberVo.delivery_zip}</td>	<!-- 나중에 비회원일 때 고려해서 if문 해야할 듯  -->
                                        <th>도로명주소</th>
                                        <td>${order_memberVo.delivery_road}</td>
                                        <th>상세주소</th>
                                        <td>${order_memberVo.delivery_address}</td>
                                    </tr>
                                    <tr>
                                        <th>전하실 말씀</th>
                                        <td colspan="5">${order_memberVo.delivery_request}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="sod_fin_normal" id="sod_fin_orderer">
                        <h3 class="sod_fin_tit">주문자 정보</h3>
                        <div class="tbstyle02">
                            <table>
                                <caption class="hide">주문자 정보를 제공해주는 표</caption>
                                <colgroup>
                                    <col width="15%">
                                    <col width="15%">
                                    <col width="15%">
                                    <col width="20%">
                                    <col width="15%">
                                    <col width="25%">
                                </colgroup>
                                <tbody>
                                     <tr>
                                        <th>이름</th>
                                        <td colspan="5">${memberVo.member_name}</td>
                                    </tr>
                                    <tr>
                                        <th>핸드폰번호</th>
                                        <td colspan="5">${memberVo.member_phone}</td>
                                    </tr>
                                    <tr>
                                        <th>우편번호</th>
                                        <td>${memberVo.member_zip}</td>	<!-- 나중에 비회원일 때 고려해서 if문 해야할 듯  -->
                                        <th>도로명주소</th>
                                        <td>${memberVo.member_road}</td>
                                        <th>상세주소</th>
                                        <td>${memberVo.member_addr}</td>
                                    </tr>
                                    <tr>
                                        <th>이메일</th>
                                        <td colspan="5">${memberVo.member_email}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div id="sod_fin_pay">
                        <h3 class="sod_fin_tit">배송지 정보</h3>
                        <div class="tbstyle02">
                            <table>
                                <caption class="hide">주문자 정보를 제공해주는 표</caption>
                                <colgroup>
                                    <col width="15%">
                                    <col width="*">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th>주문번호</th>
                                        <td>${order_memberVo.id}</td>
                                    </tr>
                                    <tr>
                                        <th>주문일시</th>
                                        <td>
                                        	<fmt:formatDate value="${order_memberVo.order_date}" pattern="yyyy-MM-dd (E)  HH시 mm분"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>결제방식</th>
                                        <td>무통장</td>
                                    </tr>
                                    <tr>
                                        <th>결제금액</th>
                                        <td>아직 입금되지 않았거나 입금정보를 입력하지 못하였습니다.</td>
                                    </tr>
                                    <tr>
                                        <th>입금자명</th>
                                        <td>${memberVo.member_name}</td>
                                    </tr>
                                    <tr>
                                        <th>입금계좌</th>
                                        <td>국민은행 34322-6733-39012 홍정우</td>
                                    </tr>
                                    <tr>
                                        <th>포인트사용</th>
                                        <td>1,000점</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>


                    <div class="sod_fin_normal" id="sod_fin_dvr">
                        <h3 class="sod_fin_tit">배송정보</h3>
                        <div class="tbstyle02">
                            <table>
                                <caption class="hide">배송정보를 제공해주는 표</caption>
                                <colgroup>
                                    <col width="15%">
                                    <col width="35%">
                                    <col width="15%">
                                    <col width="35%">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <td colspan="4" class="empty-content">
                                            <p>아직 배송하지 않았거나 배송정보를 입력하지 못하였습니다.</p>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                    <div class="sod_fin_cancel" id="sod_fin_cancel">
                        <div id="sod_fin_cancelfrm">
                            <form method="post" action="취소페이지이동~" onsubmit="return fcancel_check(this);">
                                <input type="hidden" name="od_id" value="2023031514521495">
                                <input type="hidden" name="token" value="d00753127ef5e4a4fba7e062a8a4880a">
                                <div class="sod_fin_cancel_box">
                                    <h3>주문 취소하기</h3>
                                    <label for="cancel_memo" class="sound_only">취소사유</label>
                                    <input type="text" name="cancel_memo" id="cancel_memo" required class="inp-type02" size="40" maxlength="100" placeholder="취소사유">
                                </div>
                                <input type="submit" value="주문취소하기" class="btnset btn-type04">
                            </form>
                        </div>

                    </div>

                </div>
            </section>
            <!-- } 주문상세내역 끝 -->

            <script>
                $(function() {
                    $("#sod_sts_explan_open").on("click", function() {
                        var $explan = $("#sod_sts_explan");
                        if ($explan.is(":animated"))
                            return false;

                        if ($explan.is(":visible")) {
                            $explan.slideUp(200);
                            $("#sod_sts_explan_open").text("상태설명보기");
                        } else {
                            $explan.slideDown(200);
                            $("#sod_sts_explan_open").text("상태설명닫기");
                        }
                    });

                    $("#sod_sts_explan_close").on("click", function() {
                        var $explan = $("#sod_sts_explan");
                        if ($explan.is(":animated"))
                            return false;

                        $explan.slideUp(200);
                        $("#sod_sts_explan_open").text("상태설명보기");
                    });
                });

                function fcancel_check(f) {
                    if (!confirm("주문을 정말 취소하시겠습니까?"))
                        return false;

                    var memo = f.cancel_memo.value;
                    if (memo == "") {
                        alert("취소사유를 입력해 주십시오.");
                        return false;
                    }

                    return true;
                }
            </script>

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