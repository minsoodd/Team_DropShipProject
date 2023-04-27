<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
    <meta name="HandheldFriendly" content="true">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="shortcut icon" href="/home/img/favicon.ico" />
    <title>ReView 쓰기</title>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="stylesheet" href="../home/theme/buzinga/css/mobile_shop3816.css?ver=210618">
    <link rel="stylesheet" href="../home/js/font-awesome/css/font-awesome.min3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/swiper.min3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/aos3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/nice-select3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/js/owl.carousel3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/mobile/skin/qa/basic/style3816.css?ver=210618">
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

            <section class="sub-tit-wrap" data-aos="fade-up">
                <div class="maxinner">
                    <span class="sub-txt">DropShip 쇼핑몰 작품에 대한 리뷰를 남겨주세요.</span>
                    <h2 class="sub-tit">ReView 쓰기</h2>
                </div>
            </section>


            <section id="board-write" class="board">
                <div class="maxinner">
                    <!-- 게시물 작성/수정 시작 { -->
                    <form name="workReview" id="workReview" action="../myshop/mypage"  method="post" enctype="multipart/form-data" autocomplete="off">
    					<input type="hidden" name="work_id" value="${param.work_id}">
                        <input type="hidden" name="member_id" value="${param.member_id}">
						
                        <div class="form-box-wrap">

                            <div class="form-box">
                                <div class="left-con">
                                    <label for="qa_subject"><span class="f-color">*</span>제목</label>
                                </div>
                                <div class="right-con">
                                    <input type="text" name="review_title" id="review_title" required class="inp-type01 required" maxlength="30" placeholder="제목">
                                </div>
                            </div>
                            
                            <div class="form-box">
                                <div class="left-con">
                                    <label for="qa_subject"><span class="f-color">*</span>별점</label>
                                </div>
                                <div class="right-con">
                                    <select name="review_rate" id="review_rate" class="deco-select">
                                         <option name="rate" id="rate" value="5">5</option>
                                         <option name="rate" id="rate" value="4">4</option>
                                         <option name="rate" id="rate" value="3">3</option>
                                         <option name="rate" id="rate" value="2">2</option>
                                         <option name="rate" id="rate" value="1">1</option>
                                     </select>
                                </div>
                            </div>

                            <div class="form-box">
                                <div class="left-con">
                                    <label for="qa_content"><span class="f-color">*</span>내용</label>
                                </div>
                                <div class="right-con">
                                    <div class="wr_content">
                                        <span class="sound_only">웹에디터 시작</span>
                                        <textarea id="review_content" name="review_content" class="textarea-type01" maxlength="199" style="width:100%;height:300px" placeholder="내용을 입력해주세요."></textarea>
                                        <span class="sound_only">웹 에디터 끝</span> </div>
                                </div>
                            </div>

                        </div>
                        <div class="btnwrap">
                            <button type="button" id="btn_submit" class="btnset btn-type01" onclick="work_ReviewBtn()" accesskey="s">
                                <svg height="50" width="180">
                                    <rect height="50" width="180"></rect>
                                </svg>
                                <span>Submit</span>
                            </button>
                        </div>
                    </form>
                </div>
    </div>
	
	
	<script>
		
		function work_ReviewBtn(){
			
			//제목부분
			var title = $("#review_title").val();
			if(title==""){
				alert("제목을 입력하셔야 합니다.");
				$("#review_title").focus();
				return false;
			}
			
			//내용부분
			var content = $("#review_content").val();
			if(content ==""){
				alert("제목을 입력하셔야 합니다.");
				$("#review_content").focus();
				return false;
			}
			workReview.submit();		
		}//function
	
	
	</script>
	
	
	
    
    </section>
    <!-- } 게시물 작성/수정 끝 -->
    </main>

    <!-- footer 부분 시작 -->
    <%@ include file = "../top/footer.jsp" %>
    <!-- footer 부분 끝 -->

    <div id="gotop">
        <a href="javascript:;"><span class="hide">맨위로가기</span></a>
    </div>
    </div>


    <script src="https://bxgs.co.kr/js/sns.js"></script>
    <script src="https://bxgs.co.kr/theme/buzinga/js/css3-animate-it.js"></script>
    <link rel="stylesheet" href="../home/theme/buzinga/css/animate.css">
    <script src="https://bxgs.co.kr/theme/buzinga/js/base.js"></script>
    <script src="https://bxgs.co.kr/theme/buzinga/js/sub.js"></script>
</body>

</html>