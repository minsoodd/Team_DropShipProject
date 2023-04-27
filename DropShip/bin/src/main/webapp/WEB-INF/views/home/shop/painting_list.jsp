<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html lang="ko">

<!-- Mirrored from bxgs.co.kr/shop/painting_list.php by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:03:08 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->

<head>
    <meta charset="utf-8">
    
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
    <meta name="HandheldFriendly" content="true">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="shortcut icon" href="../img/favicon.ico" />
    <title>작품 페이지</title>
<!--     <script src="http://code.jquery.com/jquery-latest.min.js"></script> -->
    <link rel="stylesheet" href="../home/theme/buzinga/css/mobile_shop3816.css?ver=210618">
    <link rel="stylesheet" href="../home/js/font-awesome/css/font-awesome.min3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/swiper.min3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/aos3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/nice-select3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/js/owl.carousel3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/mobile/skin/shop/basic/style.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/common3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/sub3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/dropship.css"> <!-- dropship전용 css -->
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
    <script src="../js/checkbox.js"></script>
    <!-- <script src="../home/js/shop.list.action3816.js?ver=210618"></script> --> 
    <%@ include file ="../ai/chatbot.jsp" %>
    <script>
    // get all checkboxes on the page
    const checkboxes = document.querySelectorAll('input[type="checkbox"]');

    // add an event listener to each checkbox to update its checked state in storage
    checkboxes.forEach(checkbox => {
      checkbox.addEventListener('change', () => {
        sessionStorage.setItem(checkbox.id, checkbox.checked);
      });
    });

    // initialize the checked state of each checkbox based on its stored value (if any)
    checkboxes.forEach(checkbox => {
      const checked = sessionStorage.getItem(checkbox.id) === 'true';
      checkbox.checked = checked;
    });
</script>

</head>
<style>
    .page-numul {
        display: flex;
        justify-content: center;
    }
</style>

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
                    <span class="sub-txt">DropShip 큐레이터가 선정한 추천 작품을 만나보세요.</span>
                    <h2 class="sub-tit">PAINTING</h2>
                </div>
            </section>


            <section class="normal-list">

                <!-----  MD PICK 최대 5개 (일단 2개만 들어가있음) ----->
                <div id="ranking-item">
                    <div class="sub-con-tit-wrap">
                        <h3 class="sub-con-tit" data-aos="fade-right" data-aos-delay="100">MD PICK</h3>
                    </div>
                    <div class="ranking-slider-wrap">
                        <div class="ranking-thumb-wrap">
                            <div class="ranking-thumb-slider">
                                <div class="swiper-wrapper">
                                	<c:forEach items="${map.randomWorkVoList}" var="workVo">
	                                    <div class="swiper-slide">
	                                        <div class="ranking-img-wrap">
	                                            <a href="painting_item?work_id=${workVo.id}&artist_id=${workVo.artist_id}">
	                                                <div class="ranking-img" style="background-image:url(/admin/img/work/${workVo.work_img_url})">
	                                                    <span class="hide">배경이미지</span>
	                                                </div>
	                                            </a>
	                                        </div>
	                                    </div>
                                	</c:forEach>
                                </div>
                            </div>
                        </div>
                        <div class="ranking-info-wrap">
                            <div class="ranking-info-slider">
                                <div class="swiper-wrapper">
                                	<c:forEach items="${map.randomWorkVoList}" var="workVo">
	                                    <div class="swiper-slide">
	                                        <div class="ranking-desc-wrap">
	                                            <h4 class="ranking-title">
	                                                <a href="painting_item?work_id=${workVo.id}&artist_id=${workVo.artist_id}">${workVo.work_name}</a>
	                                            </h4>
	                                            <div class="ranking-desc">
	                                                <span>${workVo.artist_korean_name}</span>
	                                                <p>20.0cm X 35.7cm</p>
	                                            </div>
	                                            <div class="ranking-price">
	                                                <span class="ranking-price-cost"><strong><fmt:formatNumber type="number" value="${workVo.work_price}" pattern="#,###"/>원</strong></span>
	                                            </div>
	                                        </div>
	                                    </div>
                                    </c:forEach>
                                </div>
                            </div>

                            <div class="swiper-counter">
                                <span class="current">01</span>
                                <div class="swiper-progress-bar">
                                    <div class="progress"></div>
                                </div>
                                <span class="total">02</span>
                            </div>
                            <div class="swiper-button-prev cursor-able"></div>
                            <div class="swiper-button-next cursor-able"></div>
                            <div class="swiper-pagination"></div>
                        </div>
                    </div>
                </div>

                <!-----  Painting Art 부분 ----->
                <div id="item-list-wrap">
                    <div class="maxinner">
                        <div class="sub-con-tit-wrap">
                            <h3 class="sub-con-tit" data-aos="fade-right" data-aos-delay="100">Painting Art</h3>
                        </div>
                        <div class="grid-list-opt">
                            <div class="grid-opt-left">총 <strong class="f-color">${map.listCount}</strong>개의 상품이 있습니다.</div>
                            <div class="grid-opt-right">
                            
	                                <input type="button" onclick="docompareBtn()" name="docompare" value="비교하기" class="input-compare">
	                                
	           						<!-- <label for="docompareBtn">비교하기</label> -->
                                <div class="grid-sort-list">
                                    <a href="javascript:;" class="grid-sort-current btn-sort-open">인기순</a>
                                    <ul>
                                        <li><a href="painting_listb11a.html?&amp;sort=it_sum_qty&amp;sortodr=desc&amp;re_items=&amp;page=1#item-list-wrap">인기순</a></li>
                                        <li><a href="painting_list1775.html?&amp;sort=it_use_cnt&amp;sortodr=desc&amp;re_items=&amp;page=1#item-list-wrap">후기순</a></li>
                                        <li><a href="painting_list0dd6.html?&amp;sort=it_use_avg&amp;sortodr=desc&amp;re_items=&amp;page=1#item-list-wrap">평점순</a></li>
                                        <li><a href="painting_list4a91.html?&amp;sort=it_update_time&amp;sortodr=desc&amp;re_items=&amp;page=1#item-list-wrap">등록순</a></li>
                                        <li><a href="painting_listb37f.html?&amp;sort=it_price&amp;sortodr=desc&amp;re_items=&amp;page=1#item-list-wrap">높은가격순</a></li>
                                        <li><a href="painting_list28e0.html?&amp;sort=it_price&amp;sortodr=asc&amp;re_items=&amp;page=1#item-list-wrap">낮은가격순</a></li>
                                    </ul>
                                </div>
                                
                                 <div class="grid-sort-list">
                                    <a href="javascript:;" class="grid-sort-current btn-sort-open">
                                        6개씩 보기
                                    </a>
                                    <ul>
                                        <li><a href="painting_list">6개씩 보기</a></li>
                                        <li><a href="painting_list556e.html?&amp;re_items=12&amp;sort=&amp;sortodr=&amp;page=1#item-list-wrap">전체보기</a></li>
                                    </ul>
                                </div> 
                            </div>
                        </div>
                        <div class="grid-list">
                            <div class="sct_wrap">

                                <!-- <script src="../js/jquery.fancylist.js"></script> -->
								<form action="compare2" name="docompareFrm" id="docompare" method="post">
												  <input type="hidden" id="chkValue" name="chkValue">
												
												  <ul class="sct sct_20">
												    <c:forEach items="${map.list}" var="workVo" >
												      <li class="sct_li">
												        <div class="li_wr">
												          <div class="sct_img_wrap">
												            <div class="sct_img" style="background-image:url(/admin/img/work/${workVo.work_img_url})">
												              <span class="hide">작품이름</span>
												            </div>
												            <div class="sct_opt_wrap">
												              <div class="sct_btn list-10-btn">
												                <button type="button"  onclick="AddToCartBtn(${workVo.id},${workVo.artist_id})" class="btnset btn-type01 btn_cart sct_cart">
												                  <svg height="45" width="160">
												                    <rect height="45" width="160"></rect>
												                  </svg>
												                  <span>ADD TO CART</span>
												                </button>
												              </div>
												              <div class="cart-layer"></div>
												              <div class="sct_op_btn">
												                <a href="painting_item?work_id=${workVo.id}&artist_id=${workVo.artist_id}" class="btnset btn-sight"><span class="hide">자세히보기</span></a>
												                <c:if test="${sessionMember_login_id == null }">
												                  <button type="button" onclick="NoheartBtn()" data-it_id="1654135291" class="btnset btn-like btn_wish"><span class="hide">찜하기</span></button>
												                </c:if>
												                <c:if test="${sessionMember_login_id != null }">
												                  <button type="button" onclick="heartBtn('${sessionMember_id}',${workVo.id})" data-it_id="1654135291" class="btnset btn-like btn_wish"><span class="hide">찜하기</span></button>
												                </c:if>
												              </div>
												            </div>
												          </div>
												          <div class="sct_txt"><a href="painting_item?work_id=${workVo.id}&artist_id=${workVo.artist_id}" class="sct_a">${workVo.work_name}</a></div>
												          <div class="sct_desc"><span>${workVo.artist_name}</span>
												            <p>20.0cm x 35.7cm</p>
												          </div>
												          <div class="sct_cost">
												            <span class="price_cost">
												              <strong>
												                <fmt:formatNumber type="number" value="${workVo.work_price}" pattern="#,###" />원
	                                                            <!-- 비교 체크박스 -->
	                                                            &nbsp;&nbsp;
	                                                            <input type="checkbox" id="compare${workVo.id}" class="compare" name="compare"  value="${workVo.id}" style="transform: scale(1.3);">
																<label for="compare${workVo.id}" class="sct_desc" style="color: #c9ab81; font-size: 16px; cursor: pointer;">비교선택</label>
	                                                            <!-- 비교 체크박스 -->
	                                                            <div id="compareWorkId"></div>
	                                                        </strong>
	                                                    </span>
	                                                </div>
	                                            </div>
	                                        </li>
	                                    </c:forEach>
	                                </ul><!-- 그림작품 부분 끝 -->
								</form>

                                <!-- 하단 넘버링 부분 시작! -->
                                <nav class="pg_wrap">
                                    <ul class="page-numul" style="list-style:none;">
                                    	<!-- 첫 페이지로 이동 (<<모양만있고 기능은 없음) -->
                                        <c:if test="${map.page == 1}">
                                            <li><span class="pg_page pg_start"></span></li>
                                        </c:if>
                                        <!-- 첫 페이지로 이동 (<<모양도있고, 기능까지 있는것) -->
                                        <c:if test="${map.page != 1}">
                                            <a href="painting_list?page=1">
                                                <li><span class="pg_page pg_start"></span></li>
                                            </a>
                                        </c:if>

										<!-- 이전 페이지로 이동  -->
                                        <c:if test="${map.page == 1}">
                                            <li><span class="pg_page pg_prev"></span></li>
                                        </c:if>
                                        <c:if test="${map.page != 1}">
                                            <a href="painting_list?page=${map.page - 1}">
                                                <li><span class="pg_page pg_prev"></span></li>
                                            </a>
                                        </c:if>

										<!-- 하단 넘버링 반복문 -->
                                        <c:forEach begin="${map.startPage}" end="${map.endPage}" step="1" var="number">
                                            <c:if test="${map.page == number}">
                                                <li>
                                                    <div class="pg_current">${number}</div>
                                                </li>
                                            </c:if>
                                            <c:if test="${map.page != number}">
                                                <li>
                                                    <a href="painting_list?page=${number}">
                                                        <div class="pg_page">${number}</div>
                                                    </a>
                                                </li>
                                            </c:if>
                                        </c:forEach>

										<!-- 다음 페이지로 이동 -->
                                        <c:if test="${map.page == map.maxPage}">
                                            <li><span class="pg_page pg_next"></span></li>
                                        </c:if>
                                        <c:if test="${map.page != map.maxPage}">
                                            <a href="painting_list?page=${map.page + 1}">
                                                <li><span class="pg_page pg_next"></span></li>
                                            </a>
                                        </c:if>
										
										<!-- 끝 페이지로 이동 -->
                                        <c:if test="${map.page == map.maxPage}">
                                            <li><span class="pg_page pg_end">keyboard_double_arrow_right</span></li>
                                        </c:if>
                                        <c:if test="${map.page != map.maxPage}">
                                            <a href="painting_list?page=${map.maxPage}">
                                                <li><span class="pg_page pg_end">keyboard_double_arrow_right</span></li>
                                            </a>
                                        </c:if>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
			<script>
			
				var member_id;
				var work_id;
				// button에서 onclick="heartBtn(${workVo.id}) 들고왔다 function hearBtn()안에 넣을때는 (머가들어가든 괜찮다 ex) aa이런식으로 )
				// 회원일 때 찜하기 버튼
				function heartBtn(member_id, work_id){  
					$.ajax({
						url: "../myshop/workWishlist_ajax",
						type: "post",
						data:{"member_id":member_id, "work_id":work_id},
						success: function(list){
							if(list == 0){
								alert("상품을 찜리스트에 담았습니다.");
							} else {
								alert("이미 있습니다.");
							}
						},
						error : function(){
							alert("시스템 오류입니다");
						}
					})//ajax
				}//function
				
				// 회원이 아닐 때 찜하기 버튼
				function NoheartBtn(){
					alert("회원 전용 서비스 입니다.");
				}	
				
				// ADD To CART 구문
				function AddToCartBtn(work_id, artist_id){
					var url = "/shop/painting_item?work_id=" + work_id + "&artist_id=" + artist_id;
					location.href = url;
				}
				
				// 작품 비교하기
				function docompareBtn(){
				  	
				  var work_id_list = [];
				  if($(".compare:checked").length < 2) {
					 alert("2개이상 작품을 클릭하셔야 비교하기가 가능합니다.");
					 return false;
				  }
				  	
				  $(".compare").each(function() {
				    if($(this).prop('checked')){
				      work_id_list.push($(this).val());
				    } 
				  });
// 				  alert("Checked ids: " + work_id_list);
// 				  alert("조인된 list  : " + work_id_list.join())
				  
				  $('#compareWorkId').append('<input type="hidden" name="work_id_list" value="' + work_id_list.join() + '">');
				  docompareFrm.submit();
				  
				  
				  // 팝업창에서 뒤로가기 클릭했을 때 초기화시켜줌
			      window.onunload = function() {  // window.onunload는 사용자가 페이지에서 벗어나거나 창을 닫을 때 트리거 되는 JavaScript이벤트다.
				  // 체크박스 초기화
				  $('.compare').prop('checked', false);
				  // 숨겨진 input 필드 제거
				  $('#compareWorkId').empty();
				  } 
				  
				  
				}//docompareBtn()
			</script>
			
			<!-- cookit 설정(input 작품들을 체크한상태로 다음페이지로 넘어가도 체크되게 저장 -->
			
				
				
				<!-- <script type="text/javascript">
					function showPopUp() {
						//창 크기 지정
						
						var width = 500;
						var height = 500;
						
						//pc화면기준 가운데 정렬
						var left = (window.screen.width / 2) - (width/2);
						var top = (window.screen.height / 4);
						
					    	//윈도우 속성 지정
						var windowStatus = 'width='+width+', height='+height+', left='+left+', top='+top+', scrollbars=yes, status=yes, resizable=yes, titlebar=yes';
						
					    	//연결하고싶은url
					    	const url = "https://seeminglyjs.tistory.com/";
					
						//등록된 url 및 window 속성 기준으로 팝업창을 연다.
						window.open(url, "hello popup", windowStatus);
					}
				</script> -->
			
			

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

</body>


</html>