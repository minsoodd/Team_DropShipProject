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
<link rel="shortcut icon" href="../home/img/favicon.ico" />
<title>회원탈퇴</title>
<link rel="stylesheet" href="../home/theme/buzinga/css/mobile_shop3816.css?ver=210618">
<link rel="stylesheet" href="../js/font-awesome/css/font-awesome.min3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/swiper.min3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/aos3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/nice-select3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/js/owl.carousel3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/mobile/skin/member/basic/style3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/common3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/sub3816.css?ver=210618">
<!--[if lte IE 8]>
<script src="https://bxgs.co.kr/js/html5.js"></script>
<![endif]-->
<script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "https://bxgs.co.kr";
var g5_bbs_url   = "https://bxgs.co.kr/bbs";
var g5_is_member = "1";
var g5_is_admin  = "";
var g5_is_mobile = "1";
var g5_bo_table  = "";
var g5_sca       = "";
var g5_editor    = "";
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
                        <div class="mypage-confirm">
                            <div id="mb_confirm" class="mbskin">
                                <div class="mypage-tit mt0">
                                    <h3>회원탈퇴</h1>
                                </div>
                                <div class="mypage-confirm-box">
                                    <h4>비밀번호 재확인</h4>
                                    <p>회원님의 정보를 안전하게 보호하기 위해 비밀번호를 한번 더 확인합니다.</p>

                                    <form name=deleteFrm action="register_delete" method="post">
                                        <input type="hidden" name="mb_id" value="">
                                        <input type="hidden" name="w" value="u">

                                        <fieldset>
                                            <label for="mb_confirm_id" class="hide">회원아이디</label>
                                            <input type="text" name="member_login_id" id="mb_confirm_id" value="${sessionMember_login_id}" readonly="readonly" class="inp-type01">
                                            <label for="mb_confirm_pw" class="hide">패스워드</label>
                                            <input type="password" name="member_pw" id="mb_confirm_pw" placeholder="비밀번호" class="inp-type01" size="15" maxLength="20">
                                            <div class="btn-confirm-wrap">
                                                <a href="/" class="btnset btn-type04">취소</a>
                                                <input type="button" value="확인" onclick="pwBtn()" class="btnset btn-type04 btn-line-brown">
                                            </div>
                                        </fieldset>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

			<script>
				function pwBtn(){
					pw = $("#mb_confirm_pw").val();
					if(pw==""){
						alert("비밀번호를 입력해주세요.");
						$("#mb_confirm_pw").focus();
						return false;
					}
					deleteFrm.submit();
				}//pwBtn	
			
			</script>
	
	
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
<script src="https://bxgs.co.kr/theme/buzinga/js/base.js"></script><script src="https://bxgs.co.kr/theme/buzinga/js/sub.js"></script>