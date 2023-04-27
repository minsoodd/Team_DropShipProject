<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <title>공지사항 notice</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="stylesheet" href="../home/theme/buzinga/css/mobile_shop3816.css?ver=210618">
    <link rel="stylesheet" href="../home/js/font-awesome/css/font-awesome.min3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/swiper.min3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/aos3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/nice-select3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/js/owl.carousel3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/mobile/skin/qa/basic/style3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/common3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/sub3816.css?ver=210618">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet" href="../admin/css/styles_page.css">
    <!--[if lte IE 8]>
<script src="https://bxgs.co.kr/js/html5.js"></script>
<![endif]-->
    <script>
        // 자바스크립트에서 사용하는 전역변수 선언
        var g5_url = "https://bxgs.co.kr";
        var g5_bbs_url = "https://bxgs.co.kr/bbs";
        var g5_is_member = "";
        var g5_is_admin = "";
        var g5_is_mobile = "1";
        var g5_bo_table = "notice";
        var g5_sca = "";
        var g5_editor = "smarteditor2";
        var g5_cookie_domain = "";
        var g5_theme_shop_url = "https://bxgs.co.kr/theme/buzinga/shop";
        var g5_shop_url = "https://bxgs.co.kr/shop";
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
    
	<script>
// 		$("#searchBtn").on("click",function(){
// 			alert("sdfsdf");
// 		});
	
	

	</script>
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
                    <span class="sub-txt">DropShip이 전하는 소식을 살펴보세요.</span>
                    <a href="notice"><h2 class="sub-tit">공지사항</h2></a>
                </div>
            </section>

            <!-- 게시판 목록 시작 -->
            <section id="board-list" class="board">
                <div class="maxinner">

                    <div class="grid-list-opt">
                        <div class="grid-opt-left">총 <strong class="f-color">${map.listCount}</strong>건의 공지사항이 있습니다.</div>
                        <div class="grid-opt-right">
                            <div class="grid-board-search">
                                <form action="searchNotice" name="searchNotice" id="searchNotice" method="get">
                                    <label for="sfl" class="sound_only">검색대상</label>
                                    <div class="sch-box">
                                        <select name="search" id="search" class="deco-select">
                                            <option value="all" selected>모두</option>
                                            <option value="noticeboard_title">제목</option>
                                            <option value="noticeboard_content">내용</option>
                                        </select>
                                    </div>
                                    <div class="sch-box">
                                        <input type="text" name="searchWord" id="searchWord"  placeholder="검색어를 입력해주세요." required id="stx" class="inp-type01" size="15" minlength="1" maxlength="20">
                                        <button type="button" id="searchBtn" class="sch-btn" />
                                    </div>
                                </form>
                                <script type="text/javascript">

                                </script>
                            </div>
                        </div>
                    </div>

                            </div>
                    <div class="grid-board-list">
                        <form name="fboardlist" id="fboardlist" action="https://bxgs.co.kr/bbs/board_list_update.php" onsubmit="return fboardlist_submit(this);" method="post">
                            <input type="hidden" name="bo_table" value="notice">
                            <input type="hidden" name="sfl" value="">
                            <input type="hidden" name="stx" value="">
                            <input type="hidden" name="spt" value="">
                            <input type="hidden" name="sst" value="wr_num, wr_reply">
                            <input type="hidden" name="sod" value="">
                            <input type="hidden" name="page" value="1">
                            <input type="hidden" name="sw" value="">

                            <div class="tbstyle-board">
                                <table>
                                    <caption>게시판 리스트</caption>
                                    <colgroup>
                                        <col class="col2" width="130px">
                                        <col class="col3" width="*">
                                        <col class="col4" width="240px">
                                    </colgroup>
                                    <tbody id="tbody">
                                    	<c:forEach items="${map.list}" var="nb">
	                                        <tr onClick="location.href='notice_view?id=${nb.id}&page=${map.page}'" style="cursor:pointer;">
		                                        <c:if test="${nb.noticeboard_istop == 1}">
					                            	<td style="color:blue; font-weight:bold;"><span class="notic">NOTICE</span></td>
					                            </c:if>
					                            <c:if test="${nb.noticeboard_istop == 0}">
					                            	<td>공지</td>
					                            </c:if>
	                                            <c:if test="${nb.noticeboard_file_name != null }">
					                            	<a href="notice_view"><td class="td-subject">${nb.noticeboard_title} 💾</td></a>
					                            </c:if>	
					                            <c:if test="${nb.noticeboard_file_name == null}">
					                            	<a href="notice_view"><td class="td-subject">${nb.noticeboard_title}</td></a>
					                            </c:if>	
					                            <td class="td-date"><fmt:formatDate value="${nb.noticeboard_date}" pattern="yyyy-MM-dd"/></td>
	                                        </tr>
										</c:forEach>
                                    	<c:forEach items="${list}" var="noticeBoardVo">
	                                        <tr onClick="location.href='notice_view?id=${noticeBoardVo.id}'" style="cursor:pointer;">
		                                        <c:if test="${noticeBoardVo.noticeboard_istop == 1}">
					                            	<td style="color:blue; font-weight:bold;"><span class="notic">NOTICE</span></td>
					                            </c:if>
					                            <c:if test="${noticeBoardVo.noticeboard_istop == 0}">
					                            	<td>공지</td>
					                            </c:if>
	                                            <c:if test="${noticeBoardVo.noticeboard_file_name != null }">
					                            	<a href="notice_view"><td class="td-subject">${noticeBoardVo.noticeboard_title} 💾</td></a>
					                            </c:if>	
					                            <c:if test="${noticeBoardVo.noticeboard_file_name == null}">
					                            	<a href="notice_view"><td class="td-subject">${noticeBoardVo.noticeboard_title}</td></a>
					                            </c:if>	
					                            <td class="td-date"><fmt:formatDate value="${noticeBoardVo.noticeboard_date}" pattern="yyyy-MM-dd"/></td>
	                                        </tr>
										</c:forEach>
                                    </tbody>
                                </table>
                        </form>
                    </div>
                </div>
                            <!-- 페이지 -->
             <div class="pg_wrap" style="margin-top: 30px;">
				<ul class="page-numul" style="list-style:none;">
					<c:if test="${map.page == 1}"><li><span class="pg_page pg_start"></span></li></c:if>
					<c:if test="${map.page != 1}">
					<a href="notice?page=1"><li><span  class="pg_page pg_start"></span></li></a>
					</c:if>
					
					<c:if test="${map.page == 1}"><li><span class="pg_page pg_prev"></span></li></c:if>
					<c:if test="${map.page != 1}">
					<a href="notice?page=${map.page - 1}"><li><span class="pg_page pg_prev"></span></li></a>
					</c:if>
					
					<c:forEach begin="${map.startPage}" end="${map.endPage}" step="1" var="number">
						<c:if test="${map.page == number}">
						<li>
							<div class="pg_current">${number}</div>
						</li>
						</c:if>
						<c:if test="${map.page != number}">
						<li>
							<a href="notice?page=${number}"><div class="pg_page">${number}</div></a>
						</li>
						</c:if>
					</c:forEach>
					
					<c:if test="${map.page == map.maxPage}"><li><span class="pg_page pg_next"></span></li></c:if>
					<c:if test="${map.page != map.maxPage}">
					<a href="notice?page=${map.page + 1}"><li><span class="pg_page pg_next"></span></li></a>
					</c:if>
					
					<c:if test="${map.page == map.maxPage}"><li><span class="pg_page pg_end"></span></li></c:if>
					<c:if test="${map.page != map.maxPage}">
					<a href="notice?page=${map.maxPage}"><li><span class="pg_page pg_end"></span></li></a>
					</c:if>
				</ul>
			</div>
            </section>




            <!-- 게시판 목록 끝 -->
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