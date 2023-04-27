<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <title>내가 생성한 그림</title>
    <!-- !!!!!!!!!!!!!!!!!!!!!!!   제이쿼리 최신   !!!!!!!!!!!!!!!!!!!! -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
    <style>
    	.page-numul {display: flex;justify-content: center;}
    	.td-state.not-sold {font-size: 12px;color: #D4AF37;}
		.tbstyle01 .product-box .product-name strong span{margin-left: 0;}
    </style>
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

                        <div class="mypage-order">
                            <div class="mypage-tit">
                                <h3>AI로 생성한 그림</h3>
                            </div>
                            <div class="tbstyle01">
                                <table>
                                    <caption class="hide">AI로 생성한 그림 목록</caption>
                                    <colgroup>
                                        <col class="col1" width="160px">
                                        <col class="col2" width="*">
                                        <col class="col3" width="250px">
                                        <col class="col3" width="150px">
                                        <col class="col4" width="100px">
                                    </colgroup>
                                    <thead>
                                        <tr>
                                            <th scope="col">그림 생성일</th>
                                            <th scope="col">작품정보</th>
                                            <th scope="col">사용한 프롬프트</th>
                                            <th scope="col">판매금액</th>
                                            <th scope="col">판매개수</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:if test="${fn:length(myAiWorkVoList) == 0}">
                                            <tr>
                                                <td colspan="5">생성한 그림이 없습니다.</td>
                                            </tr>
                                        </c:if>
                                        <c:if test="${fn:length(myAiWorkVoList) != 0}">
                                            <c:forEach items="${myAiWorkVoList}" var="workVo" varStatus="loop">
                                                <tr>
                                                    <td data-title="그림 생성일" class="td-num">
                                                        <div>
                                                            <fmt:formatDate value="${workVo.work_reg_date}" pattern="yyyy-MM-dd (E)" />
                                                            <br><br>
                                                            <fmt:formatDate value="${workVo.work_reg_date}" pattern="HH시 mm분" />
                                                        </div>
                                                    </td>
                                                    <td data-title="작품정보" class="td-product">
                                                        <div class="product-box">
                                                            <div class="product-img">
                                                                <div style="background-image:url(/admin/img/work/${workVo.work_img_url})"></div>
                                                            </div>
                                                            <div class="product-name">
                                                            	<a href="../shop/painting_item?work_id=${workVo.id}&artist_id=${workVo.artist_id}"> 
	                                                                <strong>${workVo.work_name}<br><span>${workVo.artist_korean_name}</span></strong>
                                                            	</a>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td data-title="사용한 프롬프트" class="td-numbig td-total">${workVo.work_ai_prompt}</td>
                                                    <td data-title="책정금액" class="td-numbig td-total"><fmt:formatNumber type="number" value="${workVo.work_price}" pattern="#,###" /> 원</td>
                                                    <c:if test="${quantityList[loop.index] == 0}">
	                                                    <td data-title="판매개수" class="td-state not-sold">등록하신 작품이 아직 판매되지 않았습니다.</td>
                                                    </c:if>
                                                    <c:if test="${quantityList[loop.index] != 0}">
	                                                    <td data-title="판매개수" class="td-state">${quantityList[loop.index]}개</td>
                                                    </c:if>
                                                </tr>
                                            </c:forEach>
                                        </c:if>
                                    </tbody>
                                </table>
                            </div>
                            <a href="orderinquiry" class="btnset btn-type02">Read More</a>
                        </div>
						<!-- 하단 넘버링 부분 시작! -->
            <nav class="pg_wrap">
                <ul class="page-numul" style="list-style:none;">
                    <!-- 첫 페이지로 이동 (<<모양만있고 기능은 없음) -->
                    <c:if test="${myAiWorkListPageMap.page == 1}">
                        <li><span class="pg_page pg_start"></span></li>
                    </c:if>
                    <!-- 첫 페이지로 이동 (<<모양도있고 기능까지 있는것) -->
                    <c:if test="${myAiWorkListPageMap.page != 1}">
                        <a href="my_ai_work?member_id=${myAiWorkListPageMap.member_id}&page=1">
                            <li><span class="pg_page pg_start"></span></li>
                        </a>
                    </c:if>

                    <!-- 이전 페이지로 이동 -->
                    <c:if test="${myAiWorkListPageMap.page == 1}">
                        <li><span class="pg_page pg_prev"></span></li>
                    </c:if>
                    <c:if test="${myAiWorkListPageMap.page != 1}">
                        <a href="my_ai_work?member_id=${myAiWorkListPageMap.member_id}&page=${myAiWorkListPageMap.page - 1}">
                            <li><span class="pg_page pg_prev"></span></li>
                        </a>
                    </c:if>

                    <!-- 하단 넘버링 반복문 -->
                    <c:forEach begin="${myAiWorkListPageMap.startPage}" end="${myAiWorkListPageMap.endPage}" step="1" var="number">
                        <c:if test="${myAiWorkListPageMap.page == number}">
                            <li>
                                <div class="pg_current">${number}</div>
                            </li>
                        </c:if>
                        <c:if test="${myAiWorkListPageMap.page != number}">
                            <li>
                                <a href="my_ai_work?member_id=${myAiWorkListPageMap.member_id}&page=${number}">
                                    <div class="pg_page">${number}</div>
                                </a>
                            </li>
                        </c:if>
                    </c:forEach>

                    <!-- 다음 페이지로 이동 -->
                    <c:if test="${myAiWorkListPageMap.page == myAiWorkListPageMap.maxPage}">
                        <li><span class="pg_page pg_next"></span></li>
                    </c:if>
                    <c:if test="${myAiWorkListPageMap.page != myAiWorkListPageMap.maxPage}">
                        <a href="my_ai_work?member_id=${myAiWorkListPageMap.member_id}&page=${myAiWorkListPageMap.page + 1}">
                            <li><span class="pg_page pg_next"></span></li>
                        </a>
                    </c:if>

                    <!-- 끝 페이지로 이동 -->
                    <c:if test="${myAiWorkListPageMap.page == myAiWorkListPageMap.maxPage}">
                        <li><span class="pg_page pg_end">keyboard_double_arrow_right</span></li>
                    </c:if>
                    <c:if test="${myAiWorkListPageMap.page != myAiWorkListPageMap.maxPage}">
                        <a href="my_ai_work?member_id=${myAiWorkListPageMap.member_id}&page=${myAiWorkListPageMap.maxPage}">
                            <li><span class="pg_page pg_end">keyboard_double_arrow_right</span></li>
                        </a>
                    </c:if>
                </ul>
            </nav>
                    </div>
                </div>
            </section>

            <!--  -->
            
            <!--  -->


            <script>
                // ai그림 삭제하기 가능하게?
                // 1개 삭제하기 버튼 눌렀을 때 실행
                function deleteBtn(id) {
                    $.ajax({
                        url: "WishlistDelete_ajax",
                        type: "post",
                        data: {
                            "id": id
                        },
                        success: function() {
                            location.reload(); // 현재 페이지 리로딩
                        },
                        error: function() {
                            alert("시스템 오류입니다.");
                        }
                    }); //ajax
                } //function


                // ADD To CART 구문
                function AddToCartBtn(work_id, artist_id) {
                    var url = "/shop/painting_item?work_id=" + work_id + "&artist_id=" + artist_id;
                    location.href = url;
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