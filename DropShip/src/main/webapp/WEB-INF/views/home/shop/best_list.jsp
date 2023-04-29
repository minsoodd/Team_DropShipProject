<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="ko">

<!-- Mirrored from bxgs.co.kr/shop/best_list.php by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:03:05 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
    <meta name="HandheldFriendly" content="true">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="shortcut icon" href="../img/favicon.ico" />
    <title>베스트 작품</title>
    <%@ include file ="../ai/chatbot.jsp" %>	<!-- ai채팅 -->
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
<!--     <script src="../home/js/jquery-1.12.4.min3816.js?ver=210618"></script> -->
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
    <!-- <script src="../home/js/shop.list.action3816.js?ver=210618"></script> -->
    <style>
    	.rank-badge {
		    display: inline-block;
		    background-color: #f1c40f;
		    color: #ffffff;
		    padding: 5px 10px;
		    font-weight: bold;
		    border-radius: 20px;
		    text-align: center;
		    margin-bottom: 10px;
		}
    </style>
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
                    <span class="sub-txt">DropShip에서 가장 인기있는 작품을 소개합니다.</span>
                    <h2 class="sub-tit">BEST ART</h2>
                </div>
            </section>



            <section class="best-list">

                <!-----  BEST ART TOP3 ----->


                <!-----  BEST ITEM LIST ----->
                <div id="item-list-wrap">
                    <div class="maxinner">
                        <div class="sub-con-tit-wrap">
                            <h3 class="sub-con-tit" data-aos="fade-right" data-aos-delay="100">Best Art</h3>
                        </div>
                        <div class="grid-list-opt">
                            <div class="grid-opt-left">총 <strong class="f-color">${list.size()}</strong>개의 상품이 있습니다.</div>
                        </div>
                        <div class="grid-list">
                            <div class="sct_wrap">

                                <script src="../home/js/jquery.fancylist.js"></script>


                                <!-- 메인상품진열 20 시작 { -->
                                <ul class="sct sct_20">
                                    <c:forEach items="${list}" var="workVo" varStatus="loop">
                                        <li class="sct_li">
                                            <div class="li_wr">
								                <div class="sct_rank">
								                    <span class="rank-badge">Rank: ${loop.index + 1}</span>
								                </div>
                                                <div class="sct_img_wrap">
                                                    <div class="sct_img" style="background-image:url(/admin/img/work/${workVo.getWork_img_url()})">
                                                        <span class="hide">${workVo.getWork_name()}</span>
                                                    </div>
                                                    <div class="sct_opt_wrap">
                                                        <div class="sct_btn list-10-btn">
                                                            <button type="button" onclick="AddToCartBtn(${workVo.id},${workVo.artist_id})" class="btnset btn-type01 btn_cart sct_cart" >
                                                                <svg height="45" width="160">
                                                                    <rect height="45" width="160"></rect>
                                                                </svg>
                                                                <span>상세페이지 이동</span>
                                                            </button>
                                                        </div>
                                                        <div class="cart-layer"></div>
                                                        <div class="sct_op_btn">
                                                            <a href="painting_item?work_id=${workVo.id}&artist_id=${workVo.artist_id}" class="btnset btn-sight"><span class="hide">자세히보기</span></a>
                                                            <c:if test="${sessionMember_login_id == null }">
	                                                            <button type="button" onclick="NoheartBtn()" class="btnset btn-like btn_wish" data-it_id="1652406531"><span class="hide">찜하기</span></button>
                                                            </c:if>
                                                             <c:if test="${sessionMember_login_id != null  && workVo.isAddedToWishList == 1}">
				                                                <button type="button" onclick="heartBtn(this)" class="btnset btn-like-active btn_wish" data-it_id="1652406531" 
				                                                data-member_id="${sessionMember_id}" data-work_id="${workVo.id}"><span class="hide">찜하기</span></button>
		                                                	</c:if>
		                                                	<c:if test="${sessionMember_login_id != null && workVo.isAddedToWishList == 0}">
				                                                <button type="button" onclick="heartBtn(this)" class="btnset btn-like btn_wish" data-it_id="1652406531" 
				                                                data-member_id="${sessionMember_id}" data-work_id="${workVo.id}"><span class="hide">찜하기</span></button>
		                                                	</c:if>
                                                            
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="sct_txt">
                                                    <a href="painting_item?work_id=${workVo.id}&artist_id=${workVo.artist_id}" class="sct_a">
                                                        ${workVo.getWork_name()}
                                                    </a>
                                                </div>
                                                <div class="sct_desc"><span>${workVo.artist_korean_name}</span>
                                                    <p>20.0cm x 35.7cm</p>
                                                </div>
                                                <div class="sct_cost">
                                                    <span class="price_cost">
                                                        <strong>
                                                            <fmt:formatNumber type="number" value="${workVo.work_price}" pattern="#,###" />원
                                                        </strong>
                                                    </span>
                                                </div>
                                            </div>
                                        </li>
                                    </c:forEach>
                                </ul>
                                <!-- } 상품진열 20 끝 -->
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-----  POPUP BEST COUNT ----->
            <div class="pop-wrap pop01" id="pop-best-count">
                <div class="pop-inner">
                    <div class="pop-tit-wrap">
                        <h3 class="pop-tit">베스트 집계 기준</h3>
                    </div>
                    <div class="pop-con-wrap">
                        <ul>
                            <li><strong>Weekly</strong> : 최근 7일간의 판매 수량 기준</li>
                            <li><strong>Monthly</strong> : 최근 한달간의 판매 수량 기준</li>
                        </ul>
                        <div class="txt-information">
                            <p>당일 오전 12시 기준 집계 및 업데이트가 됩니다. 취소/ 반품 수량은 제외 후 집계됩니다.</p>
                        </div>
                    </div>
                    <button type="button" class="btnset btn-pop-close"><span class="hide">팝업창닫기</span></button>
                </div>
            </div>


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

	<script>
		var member_id;
		var work_id;
		function heartBtn(btn){  
			var member_id = $(btn).data("member_id");
		    var work_id = $(btn).data("work_id");
			$.ajax({
				url: "../myshop/workWishlist_ajax",
				type: "post",
				data:{"member_id":member_id, "work_id":work_id},
				success: function(check){
					if(check == "저장"){
						$(btn).css("background-image", "url(/home/img/ico/ico-like-active.png)");
					} else {
						$(btn).css("background-image", "url(/home/img/ico/ico-like.png)");
					}
				},
				error : function(){
					alert("시스템 오류입니다");
				}
				
			})//ajax
		}// heartBtn()
		
		
		function NoheartBtn(){
			alert("회원 전용 서비스 입니다.");
		}
		
		// ADD To CART 구문
		function AddToCartBtn(work_id, artist_id){
			var url = "/shop/painting_item?work_id=" + work_id + "&artist_id=" + artist_id;
			location.href = url;
		}
		
		
	</script>



</body>

<!-- Mirrored from bxgs.co.kr/shop/best_list.php by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:03:06 GMT -->

</html>