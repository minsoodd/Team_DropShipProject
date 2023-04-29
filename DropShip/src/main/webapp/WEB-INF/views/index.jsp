<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!doctype html>
<html lang="ko">

<!-- Mirrored from bxgs.co.kr/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:02:19 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
    <meta name="HandheldFriendly" content="true">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="shortcut icon" href="home/img/favicon.ico" />
    <!-- !!!!!!!!!!!!!!!!!!!!!  ↓ ↓ ↓ ↓ ↓ 제이쿼리 최신 ↓ ↓ ↓ ↓ ↓  !!!!!!!!!!!!!!!!!!!!! -->
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <title>DropShip</title>
    <link rel="stylesheet" href="home/theme/buzinga/css/mobile_shop3816.css?ver=210618">
    <link rel="stylesheet" href="home/js/font-awesome/css/font-awesome.min3816.css?ver=210618">
    <link rel="stylesheet" href="home/theme/buzinga/css/swiper.min3816.css?ver=210618">
    <link rel="stylesheet" href="home/theme/buzinga/css/aos3816.css?ver=210618">
    <link rel="stylesheet" href="home/theme/buzinga/css/nice-select3816.css?ver=210618">
    <link rel="stylesheet" href="home/theme/buzinga/js/owl.carousel3816.css?ver=210618">
    <link rel="stylesheet" href="home/theme/buzinga/css/common3816.css?ver=210618">
    <link rel="stylesheet" href="home/theme/buzinga/css/main3816.css?ver=210618">
    <%@ include file ="home/ai/chatbot.jsp" %>	<!-- ai챗봇 -->
    <link rel="stylesheet" href="../use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<!--     <script src="home/js/jquery-1.12.4.min3816.js?ver=210618"></script> -->
    <script src="home/js/jquery-migrate-1.4.1.min3816.js?ver=210618"></script>
    <script src="home/js/common3816.js?ver=210618"></script>
    <script src="home/js/wrest3816.js?ver=210618"></script>
    <script src="home/js/placeholders.min3816.js?ver=210618"></script>
    <script src="home/theme/buzinga/js/swiper.min3816.js?ver=210618"></script>
    <script src="home/theme/buzinga/js/gsap-3.6.0.min3816.js?ver=210618"></script>
    <script src="home/theme/buzinga/js/aos3816.js?ver=210618"></script>
    <script src="home/theme/buzinga/js/jquery.nice-select3816.js?ver=210618"></script>
    <script src="home/theme/buzinga/js/jquery.sidr.min3816.js?ver=210618"></script>
    <script src="home/js/modernizr.custom.701113816.js?ver=210618"></script>
    <script src="home/theme/buzinga/js/owl.carousel.min3816.js?ver=210618"></script>
    <script src="home/theme/buzinga/js/unslider.min3816.js?ver=210618"></script>
    <script src="home/js/shop.list.action3816.js?ver=210618"></script>
</head>

<body>


    <div class="cursor-ball">
        <div class="ball"></div>
    </div>


    <div id="skip_to_container">
        <a href="#contents">본문 바로가기</a>
    </div>



    <!-- 팝업레이어 시작 { -->
    <div id="hd_pop">
        <h2>팝업레이어 알림</h2>

        <span class="sound_only">팝업레이어 알림이 없습니다.</span>
    </div>

    <script>
        $(function() {
            $(".hd_pops_reject").click(function() {
                var id = $(this).attr('class').split(' ');
                var ck_name = id[1];
                var exp_time = parseInt(id[2]);
                $("#" + id[1]).css("display", "none");
                set_cookie(ck_name, 1, exp_time, g5_cookie_domain);
            });
            $('.hd_pops_close').click(function() {
                var idb = $(this).attr('class').split(' ');
                $('#' + idb[1]).css('display', 'none');
            });
        });
    </script>
    <!-- } 팝업레이어 끝 -->

    <div id="wrap" class="main">

        <!-- header 부분 시작 -->
        <%@ include file ="home/top/header.jsp" %>
        <!-- header 부분 끝 -->

        <main id="contents">

            <!----- VISUAL 슬라이드 MAX 3개 (더 늘어나도 되길래 제한 안둠 -ㅅ-) ----->
            <section class="visual">
                <div class="visual-slider">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="visual-txt-wrap">
                                <div class="visual-txt">
                                    <span>ART & DESIGN</span>
                                    <h2>
                                        DropShip GALLERY SHOP <br />
                                        GRAND OPEN </h2>
                                </div>
                            </div>
                            <div class="visual-bg-wrap">
                                <div class="visual-bg" style="background-image:url('home/data/maindata1/maindata128056_0.jpg');"><span class="hide">배경이미지</span></div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="visual-txt-wrap">
                                <div class="visual-txt">
                                    <span>DropShip GALLERY</span>
                                    <h2>
                                        GRAND OPEN </h2>
                                </div>
                            </div>
                            <div class="visual-bg-wrap">
                                <div class="visual-bg" style="background-image:url('home/data/maindata1/maindata131255_0.jpg');"><span class="hide">배경이미지</span></div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="visual-txt-wrap">
                                <div class="visual-txt">
                                    <span>Art · Design in</span>
                                    <h2>
                                        DropShip </h2>
                                </div>
                            </div>
                            <div class="visual-bg-wrap">
                                <div class="visual-bg" style="background-image:url('home/data/maindata1/maindata131279_0.jpg');"><span class="hide">배경이미지</span></div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-button-prev cursor-able" data-cursor="PREV"></div>
                    <div class="swiper-button-next cursor-able" data-cursor="NEXT"></div>
                </div>
                <div class="swiper-pagination"></div>
            </section>



            <!----- BEST ART 슬라이드 MAX 12개 (4개씩 묶음이동) ----->
            <section class="best">
                <div class="main-tit-wrap" data-aos="fade-up">
                    <span class="main-txt">DropShip 에서 가장 인기있는 작품을 소개합니다.</span>
                    <h2 class="main-tit">BEST ART</h2>
                </div>
                <div class="best-slider-wrap" data-aos="fade-up">

                    <script src="home/js/jquery.fancylist.js"></script>

                    <!-- BEST ART 작품 나열 시작 -->
                    <div class="best-slider">
                        <ul class="swiper-wrapper sct sct_20">
                        	<c:forEach items="${bestList}" var="workVo">
	                            <li class="swiper-slide sct_li">
	                                <div class="li_wr">
	                                    <div class="sct_img_wrap">
	                                        <div class="sct_img" style="background-image:url(/admin/img/work/${workVo.work_img_url})">
	                                            <span class="hide">작품이름</span>
	                                        </div>
	                                        <div class="sct_opt_wrap">
	                                            <div class="sct_btn">
	                                                <button type="button" onclick="AddToCartBtn(${workVo.id},${workVo.artist_id})" class="btnset btn-type01 btn_cart sct_cart" data-it_id="1654133549">
	                                                    <svg height="45" width="160">
	                                                        <rect height="45" width="160"></rect>
	                                                    </svg>
	                                                    <span>상세페이지 이동</span>
	                                                </button>
	                                            </div>
	                                            <div class="cart-layer"></div>
	                                            <div class="sct_op_btn">
	                                                <a href="shop/painting_item?work_id=${workVo.id}&artist_id=${workVo.artist_id}" class="btnset btn-sight">
	                                                	<span class="hide">자세히보기</span>
	                                                </a>
                                                	<c:if test="${sessionMember_login_id == null }">
		                                                <button type="button" onclick="NoheartBtn()" class="btnset btn-like btn_wish" data-it_id="1654133549"><span class="hide">찜하기</span></button>
                                                	</c:if>
                                                	<c:if test="${sessionMember_login_id != null  && workVo.isAddedToWishList == 1}">
		                                                <button type="button" onclick="heartBtn(this)" class="btnset btn-like-active btn_wish" data-it_id="1654133549" 
		                                                data-member_id="${sessionMember_id}" data-work_id="${workVo.id}"><span class="hide">찜하기</span></button>
                                                	</c:if>
                                                	<c:if test="${sessionMember_login_id != null && workVo.isAddedToWishList == 0}">
		                                                <button type="button" onclick="heartBtn(this)" class="btnset btn-like btn_wish" data-it_id="1654133549" 
		                                                data-member_id="${sessionMember_id}" data-work_id="${workVo.id}"><span class="hide">찜하기</span></button>
                                                	</c:if>
	                                            </div>
	                                        </div>
	                                    </div>
	                                    <div class="sct_txt">
	                                    	<a href="shop/painting_item?work_id=${workVo.id}&artist_id=${workVo.artist_id}" class="sct_a">${workVo.work_name}</a>
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
                    </div>
            		<!-- BEST ART 작품 나열 끝 -->        
                    <div class="swiper-button-prev cursor-able"></div>
                    <div class="swiper-button-next cursor-able"></div>
                    <div class="swiper-pagination"></div>
                </div>
            </section>
			<!-- BEST ART 슬라이드 끝 -->	
			
				
            <!----- ai 생성그림 슬라이드 2개 ----->
			<section class="pick">
			    <div class="main-tit-wrap" data-aos="fade-up">
			        <span class="main-txt">AI기술로 회원이 생성한 작품을 만나보세요.</span>
			        <h2 class="main-tit">회원 생성작품</h2>
			    </div>
			    <div class="pick-tab-wrap">
			        <div class="pick-tab" data-aos="fade-up">
			            <ul>
			                <li class="on"><a href="javascript:;">사진작품</a></li>
			            </ul>
			        </div>
			        <div class="pick-tabcon-wrap" data-aos="fade-up">
			            <div id="pick-tabcon01" class="pick-tabcon on">
			                <div class="pick-thumb-wrap">
			                    <div class="pick-thumb-slider">
			                        <div class="swiper-wrapper">
			                            <c:forEach items="${aiWorkList}" var="aiWorkVo">
			                                <div class="swiper-slide">
			                                    <div class="pick-img-wrap">
			                                        <div class="pick-img" style="background-image:url(/admin/img/work/${aiWorkVo.work_img_url})">
			                                            <span class="hide">배경이미지</span>
			                                        </div>
			                                    </div>
			                                </div>
			                            </c:forEach>
			                        </div>
			                    </div>
			                </div>
			                <div class="pick-info-wrap">
			                    <div class="pick-info-slider">
			                        <div class="swiper-wrapper">
			                            <c:forEach items="${aiWorkList}" var="aiWorkVo">
			                                <div class="swiper-slide">
			                                    <div class="pick-desc-wrap">
			                                        <span class="pick-artist">${aiWorkVo.artist_korean_name}</span>
			                                        <dl class="pick-desc">
			                                            <dt>${aiWorkVo.work_name}</dt>
			                                            <dd>${aiWorkVo.work_content}</dd>
			                                        </dl>
			                                        <div class="pick-btnwrap">
			                                            <a href="shop/painting_item?work_id=${aiWorkVo.id}&artist_id=${aiWorkVo.artist_id}" class="btnset btn-type01">
			                                                <svg height="50" width="180">
			                                                    <rect height="50" width="180"></rect>
			                                                </svg>
			                                                <span>Read More</span>
			                                            </a>
			                                        </div>
			                                    </div>
			                                </div>
			                            </c:forEach>
			                        </div>
			                    </div>
			                    <div class="swiper-button-prev cursor-able"></div>
			                    <div class="swiper-button-next cursor-able"></div>
			                </div>
			            </div>
			        </div>
			    </div>
			</section>
			<!----- ai 생성그림 슬라이드 2개 끝 ----->


            <!----- NEW ART 슬라이드 MAX 5개 노출 (3개씩 묶음이동) ----->
            <section class="newart">
                <div class="main-tit-wrap" data-aos="fade-up">
                    <span class="main-txt">DropShip과 함께하는 새로운 작품을 소개합니다.</span>
                    <h2 class="main-tit">NEW ART</h2>
                </div>
                <div class="newart-slider-wrap" data-aos="fade-up">

                    <script src="home/js/jquery.fancylist.js"></script>


                    <!-- 메인상품진열 시작 { -->
                    <div class="newart-slider">
                        <ul class="swiper-wrapper">
							<c:forEach items="${newList}" var="workNew">
	                            <li class="swiper-slide">
	                                <div class="newart-thumb-wrap">
	                                    <div class="newart-thumb" style="background-image:url(/admin/img/work/${workNew.work_img_url})">
	                                        <span class="hide">작품이름</span>
	                                    </div>
	                                </div>
	                                <div class="newart-info-wrap">
	                                    <div class="newart-info">
	                                        <span class="newart-artist">${workNew.artist_name}</span>
	                                        <dl class="newart-desc">
	                                            <dt>${workNew.work_name}</dt>
	                                            <dd>${workNew.work_content}</dd>
	                                        </dl>
	                                        <div class="newart-btnwrap">
	                                            <a href="shop/painting_item?work_id=${workNew.id}&artist_id=${workNew.artist_id}" class="btnset btn-type02">Read More</a>
	                                        </div>
	                                    </div>
	                                </div>
	                            </li>
							</c:forEach>
                        </ul>
                    </div>
                    <div class="swiper-button-prev cursor-able"></div>
                    <div class="swiper-button-next cursor-able">
                    </div><!-- } 상품진열 20 끝 -->
                </div>
            </section>

            <!----- DIRECT GALLERY ----->
            <section class="direct-gallery">
                <div class="direct-gallery-con effect-none" data-aos="fade-in">
                    <h2 class="split-txt">DropShip GALLERY</h2>
                    <p>DropShip에서 다양한 그림을 직접 감상하시고 구입하세요.</p>
                    <div class="direct-gallery-btnwrap">
                        <a href="shop/painting_list" class="btnset btn-type01">
                            <svg height="50" width="180">
                                <rect height="50" width="180"></rect>
                            </svg>
                            <span>Read More</span>
                        </a>
                    </div>
                </div>
            </section>

            <!----- REVIEW - 슬라이드 총 5개 노출 (1개씩 이동) ----->
            <section class="review">
                <div class="main-tit-wrap" data-aos="fade-up">
                    <span class="main-txt">DropShip의 작품을 이용한 고객들의 실제 후기입니다.</span>
                    <h2 class="main-tit">REVIEW</h2>
                </div>
                <div class="review-slider-wrap" data-aos="fade-up">
                    <div class="review-slider">
                        <div class="swiper-wrapper">
                          <c:forEach items="${workReviewVo}" var="workReviewVo" varStatus="loop">
                            <div class="swiper-slide">
                                <div class="review-thumb-wrap">
                                    <span class="review-date">
                                    	<strong><fmt:formatNumber value="${loop.index +1}" pattern="00" /></strong>
                                    </span>                                      	 
                                    <div class="review-thumb" style="background-image:url('admin/img/work/${workReviewVo.work_img_url}')">
                                        <span class="hide">썸네일 이미지</span>
                                    </div>
                                </div>
                                <div class="review-info-wrap">
                                    <div class="review-info">
                                        <dl class="review-desc">
                                            <dt>
                                                <span>${workReviewVo.work_name}</span>
                                                <span>${workReviewVo.artist_name}</span>
                                            </dt>
                                            <dd>
                                                <p>${workReviewVo.review_content}</p>
                                            </dd>
                                        </dl>
                                        <div class="review-btnwrap">
                                            <a href="shop/painting_item?work_id=${workReviewVo.work_id}&artist_id=${workReviewVo.artist_id}" class="btnset btn-type02">Read More</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                          </c:forEach>
                        </div>
                    </div>
                    <div class="swiper-button-prev cursor-able"></div>
                    <div class="swiper-button-next cursor-able"></div>
                    <div class="swiper-pagination"></div>

                </div>
            </section>
        </main>

        <!-- footer 부분 시작 -->
        <%@ include file = "home/top/footer.jsp" %>
        <!-- footer 부분 끝 -->

        <div id="gotop">
            <a href="javascript:;"><span class="hide">맨위로가기</span></a>
        </div>
    </div>


    <script src="home/js/sns.js"></script>
    <script src="home/theme/buzinga/js/css3-animate-it.js"></script>
    <link rel="stylesheet" href="home/theme/buzinga/css/animate.css">
    <script src="home/theme/buzinga/js/base.js"></script>
    <script src="home/theme/buzinga/js/main.js"></script>
	
	
	
	<script>
		// 찜 리스트 구문
		// button에서 onclick="heartBtn(${workVo.id}) 들고왔다 function hearBtn()안에 넣을때는 (머가들어가든 괜찮다 ex) aa이런식으로 )
		function heartBtn(btn){  
			var member_id = $(btn).data("member_id");
		    var work_id = $(btn).data("work_id");
			$.ajax({
				url: "myshop/workWishlist_ajax",
				type: "post",
				data:{"member_id":member_id, "work_id":work_id},
				success: function(check){
					if(check == "저장"){
						$(btn).css("background-image", "url(home/img/ico/ico-like-active.png)");
					} else {
						$(btn).css("background-image", "url(home/img/ico/ico-like.png)");
					}
				},
				error : function(){
					alert("시스템 오류입니다");
				}
				
			})//ajax
		}//function
		
		function NoheartBtn(){
			alert("회원 전용 서비스 입니다.");
		}
	</script>
	

	<script>
		// ADD To CART 구문
		function AddToCartBtn(work_id, artist_id){
			var url = "/shop/painting_item?work_id=" + work_id + "&artist_id=" + artist_id;
			location.href = url;
		}
	</script>



</body>
</html>