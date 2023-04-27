<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>	
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="shortcut icon" href="/home/img/favicon.ico" />
<title>event view 페이지</title>
<link rel="stylesheet"
	href="../home/theme/buzinga/css/mobile_shop3816.css?ver=210618">
<link rel="stylesheet"
	href="../home/js/font-awesome/css/font-awesome.min3816.css?ver=210618">
<link rel="stylesheet"
	href="../home/theme/buzinga/css/swiper.min3816.css?ver=210618">
<link rel="stylesheet"
	href="../home/theme/buzinga/css/aos3816.css?ver=210618">
<link rel="stylesheet"
	href="../home/theme/buzinga/css/nice-select3816.css?ver=210618">
<link rel="stylesheet"
	href="../home/theme/buzinga/js/owl.carousel3816.css?ver=210618">
<link rel="stylesheet"
	href="../home/theme/buzinga/mobile/skin/board/event/style3816.css?ver=210618">
<link rel="stylesheet"
	href="../home/theme/buzinga/css/common3816.css?ver=210618">
<link rel="stylesheet"
	href="../home/theme/buzinga/css/sub3816.css?ver=210618">
<!--[if lte IE 8]>
<script src="https://bxgs.co.kr/js/html5.js"></script>
<![endif]-->
<script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "https://bxgs.co.kr";
var g5_bbs_url   = "https://bxgs.co.kr/bbs";
var g5_is_member = "";
var g5_is_admin  = "";
var g5_is_mobile = "1";
var g5_bo_table  = "event";
var g5_sca       = "";
var g5_editor    = "smarteditor2";
var g5_cookie_domain = "";
var g5_theme_shop_url = "https://bxgs.co.kr/theme/buzinga/shop";
var g5_shop_url = "https://bxgs.co.kr/shop";


</script>
<link rel="stylesheet"
	href="../../use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<script src="../home/js/jquery-1.12.4.min3816.js?ver=210618"></script>
<script src="../home/js/jquery-migrate-1.4.1.min3816.js?ver=210618"></script>
<script src="../home/js/common3816.js?ver=210618"></script>
<script src="../home/js/wrest3816.js?ver=210618"></script>
<script src="../home/js/placeholders.min3816.js?ver=210618"></script>
<script src="../home/theme/buzinga/js/swiper.min3816.js?ver=210618"></script>
<script src="../home/theme/buzinga/js/gsap-3.6.0.min3816.js?ver=210618"></script>
<script src="../home/theme/buzinga/js/aos3816.js?ver=210618"></script>
<script
	src="../home/theme/buzinga/js/jquery.nice-select3816.js?ver=210618"></script>
<script src="../home/theme/buzinga/js/jquery.sidr.min3816.js?ver=210618"></script>
<script src="../home/js/modernizr.custom.701113816.js?ver=210618"></script>
<script
	src="../home/theme/buzinga/js/owl.carousel.min3816.js?ver=210618"></script>
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
		<%@ include file="../top/header.jsp"%>
		<!-- header 부분 끝 -->

		<main id="contents">

			<script src="https://bxgs.co.kr/js/viewimageresize.js"></script>


			<article id="board-view" class="board">
				<div class="maxinner">
					<header class="board-con-tit">
						<c:if test="${map.boardEventVo.getEventboard_istop() == '1'}">
							<span>NOTICE</span>
						</c:if>
						<c:if test="${map.boardEventVo.getEventboard_istop() == '0'}">
							<span>공지</span>
						</c:if>
						<h2>${map.boardEventVo.getEventboard_title()}</h2>
						<h3>등록일:&nbsp; <fmt:formatDate value="${map.boardEventVo.getEventboard_date()}" pattern="yyyy-MM-dd(E) HH:mm"/></h3><br>
						<p>
							<span class="hide">이벤트 기간</span>이벤트 기간:&nbsp; <fmt:formatDate value="${map.boardEventVo.getEventboard_start()}" pattern="yyyy-MM-dd(E) HH:mm"/> ~ 
		                     <fmt:formatDate value="${map.boardEventVo.getEventboard_end()}" pattern="yyyy-MM-dd(E) HH:mm"/>
						</p>
					</header>
					<div class="board-con-wrap">
						<h3 class="hide">본문</h3>
						<div class="board-con">
							<p style="text-align: center;" align="center">
							 <c:if test="${map.boardEventVo.eventboard_file_name != null}">
								<img
									src="../admin/upload/${map.boardEventVo.eventboard_file_name}"
									title="${map.boardEventVo.eventboard_file_name}" style="width:600px;"><br
									style="clear: both;">&nbsp;<br>
							</c:if>		
							 <c:if test="${map.boardEventVo.eventboard_file_name == null}">
								<img
									src="../admin/upload/Event_deafaultLogo.png"
									title="Event_deafaultLogo.png" style="width:600px;"><br
									style="clear: both;">&nbsp;<br>
							</c:if>		
							${map.boardEventVo.eventboard_content}
							</p>
						</div>
					</div>
					<div class="board-con-move">
						<ul>
							<c:if test="${map.preBoardEventVo.getId() != null}">
						      <a href="event_view?id=${map.preBoardEventVo.getId()}" class="link-none">
								  <li class="prev">
								          <span style="cursor:pointer;">PREV</span>
								          <p style="cursor:pointer;">${map.preBoardEventVo.getEventboard_title()}</p>
								  </li>
						      </a>
							</c:if>
							<c:if test="${map.preBoardEventVo.getId() == null}">   
							  <li class="prev">
							      <a class="link-none">
							          <span style="color:#A0A0A0;">PREV</span>
							          <p style="color:#A0A0A0;">이전글이 없습니다.</p>
							      </a>
							  </li>
							</c:if> 
							
							<li class="mid"><a href="all_event?page=${page}"><span class="hide">목록으로</span></a></li>
							
							<c:if test="${map.nextBoardEventVo.getId() != null}">
						      <a href="event_view?id=${map.nextBoardEventVo.getId()}" class="link-none">
								  <li class="next">
								          <span style="cursor:pointer;">NEXT</span>
								          <p style="cursor:pointer;">${map.nextBoardEventVo.getEventboard_title()}</p>
								  </li>
						      </a>
							</c:if>
							<c:if test="${map.nextBoardEventVo.getId() == null}">   
							  <li class="next">
							      <a class="link-none">
							          <span style="color:#A0A0A0;">NEXT</span>
							          <p style="color:#A0A0A0;">다음글이 없습니다.</p>
							      </a>
							  </li>
							</c:if>	
							
						</ul>
					</div>
				</div>
			</article>

			<script>

function board_move(href)
{
    window.open(href, "boardmove", "left=50, top=50, width=500, height=550, scrollbars=1");
}
</script>

			<!-- 게시글 보기 끝 -->

			<script>
$(function() {
    $("a.view_image").click(function() {
        window.open(this.href, "large_image", "location=yes,links=no,toolbar=no,top=10,left=10,width=10,height=10,resizable=yes,scrollbars=no,status=no");
        return false;
    });

    // 추천, 비추천
    $("#good_button, #nogood_button").click(function() {
        var $tx;
        if(this.id == "good_button")
            $tx = $("#bo_v_act_good");
        else
            $tx = $("#bo_v_act_nogood");

        excute_good(this.href, $(this), $tx);
        return false;
    });

    // 이미지 리사이즈
    $("#bo_v_atc").viewimageresize();

    //sns공유
    $(".btn_share").click(function(){
        $("#bo_v_sns").fadeIn();
    });
    
    $(document).mouseup(function (e) {
        var container = $("#bo_v_sns");
        if (!container.is(e.target) && container.has(e.target).length === 0){
        container.css("display","none");
        }
    });

    $(document).mouseup(function (e) {
        var container = $("#bo_v_opt");
        if (!container.is(e.target) && container.has(e.target).length === 0){
        container.css("display","none");
        }
    });
    

    $(document).mouseup(function (e){
	    var container = $(".bo_vl_act");
	    if( container.has(e.target).length === 0)
            container.hide();
	});

    //게시글 옵션
    $(".bo_v_opt").click(function(){
        $("#bo_v_opt").fadeIn();
    });

    $(".cmt_opt").on("click", function(){
        $(this).parent("div").children(".bo_vl_act").show();
    });
    
    //첨부파일
    $("#bo_file_btn").click(function(){
        $("#bo_v_file").fadeIn();
    });
    
    $(document).mouseup(function (e) {
        var container = $("#bo_v_file");
        if (!container.is(e.target) && container.has(e.target).length === 0){
        container.css("display","none");
        }
    });

    //댓글열기
    $(".cmt_btn").click(function(){
        $(this).toggleClass("cmt_btn_op");
        $("#bo_vc").toggle();
    });

});

function excute_good(href, $el, $tx)
{
    $.post(
        href,
        { js: "on" },
        function(data) {
            if(data.error) {
                alert(data.error);
                return false;
            }

            if(data.count) {
                $el.find("strong").text(number_format(String(data.count)));
                if($tx.attr("id").search("nogood") > -1) {
                    $tx.text("이 글을 비추천하셨습니다.");
                    $tx.fadeIn(200).delay(2500).fadeOut(200);
                } else {
                    $tx.text("이 글을 추천하셨습니다.");
                    $tx.fadeIn(200).delay(2500).fadeOut(200);
                }
            }
        }, "json"
    );
}
</script>
		</main>

		<!-- header 부분 시작 -->
		<%@ include file="../top/footer.jsp"%>
		<!-- header 부분 끝 -->

		<div id="gotop">
			<a href="javascript:;"><span class="hide">맨위로가기</span></a>
		</div>
	</div>


	<script src="https://bxgs.co.kr/js/sns.js"></script>
	<script src="https://bxgs.co.kr/theme/buzinga/js/css3-animate-it.js"></script>
	<link rel="stylesheet"
		href="https://bxgs.co.kr/theme/buzinga/css/animate.css">
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

<!-- 사용스킨 : theme/event -->