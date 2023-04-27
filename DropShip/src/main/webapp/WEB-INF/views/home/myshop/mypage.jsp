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
    <title>마이페이지</title>
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

                        <div class="mypage-progress">
                            <div class="mypage-tit">
                                <h3>진행 중인 주문</h3>
                            </div>
                            <ul>
                                <c:if test="${orderStatusCountMap['0'] != null}">
                                    <li><span class="f-color">
                                            <c:out value="${orderStatusCountMap['0']}" /></span>입금확인중</li>
                                </c:if>
                                <c:if test="${orderStatusCountMap['0'] == null}">
                                    <li><span class="f-color">0</span>입금확인중</li>
                                </c:if>
                                <c:if test="${orderStatusCountMap['1'] != null}">
                                    <li><span class="">${orderStatusCountMap['1']}</span>입금완료</li>
                                </c:if>
                                <c:if test="${orderStatusCountMap['1'] == null}">
                                    <li><span class="">0</span>입금완료</li>
                                </c:if>
                                <c:if test="${orderStatusCountMap['2'] != null}">
                                    <li><span class="">${orderStatusCountMap['2']}</span>상품준비중</li><!-- 갯수 있을땐 class="f-color" -->
                                </c:if>
                                <c:if test="${orderStatusCountMap['2'] == null}">
                                    <li><span class="">0</span>상품준비중</li><!-- 갯수 있을땐 class="f-color" -->
                                </c:if>
                                <c:if test="${orderStatusCountMap['3'] != null}">
                                    <li><span class="">${orderStatusCountMap['3']}</span>상품배송</li>
                                </c:if>
                                <c:if test="${orderStatusCountMap['3'] == null}">
                                    <li><span class="">0</span>상품배송</li>
                                </c:if>
                                <c:if test="${orderStatusCountMap['4'] != null}">
                                    <li><span class="">${orderStatusCountMap['4']}</span>배송완료</li>
                                </c:if>
                                <c:if test="${orderStatusCountMap['4'] == null}">
                                    <li><span class="">0</span>배송완료</li>
                                </c:if>
                            </ul>
                        </div>
                        <div class="mypage-order">
                            <div class="mypage-tit">
                                <h3>최근 주문 정보</h3>
                                <!--<p>최근 30일 내에 진행중인 주문정보입니다.</p>-->
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
                                                        <!-- 이거 왜 이렇게하는지 1도 모르겠음. GPT쩐다 ㅋㅋㅋ -->
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
                                                                <!-- 		                                                        <p>외 1건</p> -->
                                                                <!-- <p>캔버스 / 캔버스판넬 / 마띠에르 리터치 선택 / 매트없음 / 90.0cm X 71.4cm</p> -->
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
	                                                        <c:if test="${order_detail_inquireVo.order_status == 4}">
                                                        
                                                        	<c:if test="${workReviewVoCountList.get(loop.index) == 0 }"> 
							                                	<div><br>
							                                        <button type="button" class="btnset btn-type01 btn_cart sct_cart" data-it_id="1654133549">
							                                            <a href="../shop/work_review_write?member_id=${sessionMember_id}&work_id=${order_detail_inquireVo.work_id}" class="btnset btn-sight">
							                                                <svg height="45" width="140">
							                                                    <rect height="45" width="140"></rect>
							                                                </svg>
							                                            </a>
							                                            <span style="margin-left:-15px; color:#c9ab81;">ReView 쓰기</span>
							                                        	<!--<span style="margin-left:-15px;">ReView 쓰기${workReviewVoCountList.get(loop.index)}</span> loop.index = i이다  -->   
							                                        </button>
							                                    </div>
                                                        	</c:if>
                                                        	
                                                        	<c:if test="${workReviewVoCountList.get(loop.index) == 1}">
                                                        		<div><br>
							                                        <button type="button" class="btnset btn-type01 btn_cart sct_cart" data-it_id="1654133549">
							                                            <a href="../shop/work_review_update?member_id=${sessionMember_id}&work_id=${order_detail_inquireVo.work_id}" class="btnset btn-sight">
							                                                <svg height="45" width="140">
							                                                    <rect height="45" width="140"></rect>
							                                                </svg>
							                                            </a>
							                                            <span style="margin-left:-15px; color:blue;">ReView 수정</span>
							                                            <!-- <span style="margin-left:-15px; color:blue;">ReView 수정${workReviewVoCountList.get(loop.index)}</span> -->
							                                        </button>
							                                    </div><br>
							                                    <div>
							                                    	<c:if test="${order_detail_inquireVo.review_rate == 1}">
								                                    	<img src="../../home/img/s_star1_big.png">
							                                    	</c:if>
							                                    	<c:if test="${order_detail_inquireVo.review_rate == 2}">
								                                    	<img src="../../home/img/s_star2_big.png">
							                                    	</c:if>
							                                    	<c:if test="${order_detail_inquireVo.review_rate == 3}">
								                                    	<img src="../../home/img/s_star3_big.png">
							                                    	</c:if>
							                                    	<c:if test="${order_detail_inquireVo.review_rate == 4}">
								                                    	<img src="../../home/img/s_star4_big.png">
							                                    	</c:if>
							                                    	<c:if test="${order_detail_inquireVo.review_rate == 5}">
								                                    	<img src="../../home/img/s_star5_big.png">
							                                    	</c:if>
							                                    </div>
                                                        	</c:if>
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
                            <a href="orderinquiry" class="btnset btn-type02">Read More</a>
                        </div>

                        <div class="mypage-wish">
                            <div class="mypage-tit">
                                <h3>찜리스트</h3>
                            </div>
                            <div class="grid-list">
                                <script src="../js/jquery.fancylist.js"></script>

                                <!-- 마이페이지 찜리스트 목록 최대(3개) 최근 찜한 순서대로 정렬 { -->
                                <c:if test="${wishListCount == 0 }">
                                    <div class="empty-content">
                                        <img src="../home/img/ico/ico-information-big.png" alt="">
                                        <p>등록된 상품이 없습니다.</p>
                                    </div>
                                </c:if>
                                <ul class="sct sct_20">
                                    <c:if test="${wishListCount != 0 }">
                                        <c:forEach items="${wishListPageList}" var="wishlistVo">
                                            <li class="sct_li">
                                                <div class="li_wr">
                                                    <div class="sct_img_wrap">
                                                        <div class="sct_img" style="background-image:url(../admin/img/work/${wishlistVo.work_img_url})">
                                                            <span class="hide">작품이름</span>
                                                        </div>

                                                        <div class="sct_opt_wrap">
                                                            <div class="sct_btn list-10-btn">
                                                                <button type="button" onclick="AddToCartBtn(${wishlistVo.id},${wishlistVo.artist_id})" class="btnset btn-type01 btn_cart sct_cart">
                                                                    <svg height="45" width="160">
                                                                        <rect height="45" width="160"></rect>
                                                                    </svg>
                                                                    <span>상세페이지 이동</span>
                                                                </button>
                                                            </div>

                                                            <div class="cart-layer"></div>
                                                            <div class="sct_op_btn">
                                                                <a href="../shop/painting_item?work_id=${wishlistVo.work_id}&artist_id=${wishlistVo.artist_id}" class="btnset btn-sight"><span class="hide">자세히보기</span></a>
                                                                <button type="button" onclick="deleteBtn(${wishlistVo.id})" class="btnset btn-wishdel"><span class="hide">위시리스트삭제</span></button>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="sct_txt">
                                                        <a href="../shop/painting_item?work_id=${wishlistVo.work_id}&artist_id=${wishlistVo.artist_id}" class="sct_a">${wishlistVo.work_name}</a>
                                                    </div>

                                                    <div class="sct_desc"><span>${wishlistVo.artist_name}</span>
                                                        <p>20.0cm x 35.7</p>
                                                    </div>
                                                    <div class="sct_cost"><span class="price_cost">
                                                            <strong>
                                                                <fmt:formatNumber type="number" value="${wishlistVo.work_price}" pattern="#,###" />원
                                                            </strong></span>
                                                    </div>

                                                </div>
                                            </li>
                                        </c:forEach>
                                    </c:if>

                                </ul><!-- } 상품진열 20 끝 -->
                            </div>
                            <a href="my_wishlist?member_id=${sessionMember_id}" class="btnset btn-type02">Read More</a>
                        </div>
                    </div>
                </div>
            </section>

            <script>
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
        		function AddToCartBtn(work_id, artist_id){
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