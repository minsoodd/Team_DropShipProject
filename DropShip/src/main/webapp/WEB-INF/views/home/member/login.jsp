<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">

<!-- Mirrored from bxgs.co.kr/bbs/login.php by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:03:38 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
    <meta name="HandheldFriendly" content="true">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="shortcut icon" href="../home/img/favicon.ico" />
    <title>로그인 페이지</title>
    <link rel="stylesheet" href="../home/theme/buzinga/css/mobile_shop3816.css?ver=210618">
    <link rel="stylesheet" href="../home/js/font-awesome/css/font-awesome.min3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/swiper.min3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/aos3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/nice-select3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/js/owl.carousel3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/mobile/skin/member/basic/style3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/common3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/sub3816.css?ver=210618">
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

            <section class="sub-tit-wrap">
                <div class="maxinner">
                    <h2 class="sub-tit">LOGIN</h2>
                </div>
            </section>

            <section class="login">
                <div class="maxinner">
                    <div class="login-wrap">
                        <div class="left-con">
                            <div class="login-tab">
                                <ul>
                                    <li class="on">
                                        <a href="javascript:;">회원로그인</a>
                                    </li>
                                    <li>
<!--                                         <a href="javascript:;">비회원 주문조회</a> -->
                                    </li>
                                </ul>
                            </div>
                            <div class="login-con-wrap">
                                <div class="login-con">
                                    <form name=loginFrm id="flogin" action="login" method="post">
                                        <input type="hidden" name="url" value="https%3A%2F%2Fbxgs.co.kr">
                                        <div class="login-box">
                                            <label for="login_id" class="sound_only">아이디<strong class="sound_only"> 필수</strong></label>
                                            <input type="text" name="member_login_id" id="login_id" placeholder="아이디" class="inp-type01 " maxLength="20">
                                            <label for="login_pw" class="sound_only">비밀번호<strong class="sound_only"> 필수</strong></label>
                                            <input type="password" name="member_pw" id="login_pw" placeholder="비밀번호" class="inp-type01 " maxLength="20">
                                            <div class="chk-box">
                                                <input type="checkbox" name="auto_login" id="login_auto_login" class="selec-chk">
                                                <label for="login_auto_login">아이디 저장</label>
                                            </div>
                                            <button type="button" class="btnset btn-submit" onclick="loginBtn()">LOGIN</button>
                                        </div>
                                    </form>
                                </div>
                                <script>
                                    function loginBtn() {
                                        id = $('#login_id').val();
                                        pw = $('#login_pw').val();
                                        if (id == "") {
                                            alert("아이디를 입력하셔야 합니다.!");
                                            $("#login_id").focus();
                                            return false;
                                        } else if (pw == "") {
                                            alert("비밀번호를 입력하셔야 합니다!");
                                            $("#login_pw").focus();
                                            return flase;
                                        }
                                        loginFrm.submit();
										

                                    } //loginBtn
                                    
                                    $(document).ready(function() {  // 아이디, 비밀번호 입력하고 엔터키 누르면 로그인 버튼실행
                                        $("#login_id, #login_pw").on("keypress", function(event) {
                                          if (event.keyCode === 13) {
                                            loginBtn();
                                          }
                                        });
                                      });
                                </script>

                                <div class="login-con">
                                    <div id="mb_login_od_wr">
<!--                                         <h3 class="hide">비회원 주문조회</h3> -->
<!--                                         <div id="mb_login_od"> -->
<!--                                             <form name="forderinquiry" method="post" action="https://bxgs.co.kr/shop/orderinquiry.php" autocomplete="off"> -->
<!--                                                 <label for="od_id" class="od_id sound_only">주문번호<strong class="sound_only"> 필수</strong></label> -->
<!--                                                 <input type="text" name="od_id" value="" id="od_id" placeholder="주문번호" required class="inp-type01 required" size="20"> -->
<!--                                                 <label for="id_pwd" class="od_pwd sound_only">비밀번호<strong class="sound_only"> 필수</strong></label> -->
<!--                                                 <input type="password" name="od_pwd" size="20" id="od_pwd" placeholder="비밀번호" required class="inp-type01 required"> -->
<!--                                                 <p class="sm-txt-information">주문번호 분실 시 고객센터(02-123-4567)로 별도 문의 해주세요.</p> -->
<!--                                                 <button type="submit" class="btnset btn-submit">주문조회하기</button> -->
<!--                                             </form> -->
<!--                                         </div> -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="right-con">
                            <div class="login-etc">
                                <h3>DropShip쇼핑몰 신규 회원가입</h3>
                                <p>DropShip쇼핑몰 회원가입 후 다양한 혜택과 소식을 만나보세요.</p>
                                <a href="register_intro" class="btnset btn-type03 btn-line-brown">회원가입</a>
                            </div>
<!--                             <div class="login-etc"> -->
<!--                                 <h3>아이디/비밀번호 찾기</h3> -->
<!--                                 <p>간단한 정보를 입력 후 정보를 찾을 수 있습니다.</p> -->
<!--                                 <a href="javascript:;" class="btnset btn-type03 btn-pop-open" data-popnum="01">아이디/비밀번호 찾기</a> -->
<!--                             </div> -->
                        </div>
                    </div>
                </div>
            </section>

            <!-- 회원정보 찾기 팝업창 -->
            <div class="pop-wrap pop01" id="pop-password-lost">
                <div class="pop-inner">
                    <div class="pop-tit-wrap">
                        <h3 class="pop-tit">회원정보 찾기</h3>
                    </div>
                    <div class="pop-con-wrap">
                        <form name="fpasswordlost" action="https://bxgs.co.kr/bbs/password_lost2.php" onsubmit="return fpasswordlost_submit(this);" method="post" autocomplete="off">
                            <div class="info-fs-mail">
                                <h4>이메일 기입</h4>
                                <div class="info-fs-box">
                                    <input type="email" id="mb_email" name="mb_email" placeholder="가입시 등록한 이메일를 입력하세요." required class="inp-type01 email">

                                    <script>
                                        var g5_captcha_url = "https://bxgs.co.kr:443/plugin/kcaptcha/";
                                    </script>
                                    <script src="../plugin/kcaptcha/kcaptcha.js"></script>
                                    <fieldset id="captcha" class="captcha">
                                        <legend><label for="captcha_key">자동등록방지</label></legend>
                                        <img src="../plugin/kcaptcha/img/dot.gif" alt="" id="captcha_img"><input type="text" name="captcha_key" id="captcha_key" required class="captcha_box required" size="6" maxlength="6">
                                        <button type="button" id="captcha_mp3"><span></span>숫자음성듣기</button>
                                        <button type="button" id="captcha_reload"><span></span>새로고침</button>
                                        <span id="captcha_info">자동등록방지 숫자를 순서대로 입력하세요.</span>
                                    </fieldset>
                                    <p class="sm-txt-information">이메일 아이디 분실 시 고객센터( 02-123-4567)로 별도 문의 해주세요.</p>
                                </div>
                            </div>
                            <div class="btn-confirm-wrap">
                                <a href="javascript:;" class="btnset btn-type04 btn-pop-close2">취소</a>
                                <button type="submit" class="btnset btn-type04 btn-line-brown">정보찾기</button>
                            </div>
                        </form>
                    </div>
                    <button type="button" class="btnset btn-pop-close"><span class="hide">팝업창닫기</span></button>
                </div>
            </div>


            <script>
                $(function() {
                    /*===== TAB MENU CLICK FUNCTION ===== */
                    /* 로그인 css보이게 하기 */
                    var logTabNum = $('.login-tab .on').index();
                    if (logTabNum > -1) {
                        $('.login-con-wrap').find('.login-con').eq(logTabNum).show();
                    }

                    $('.login-tab li a').on('click', function(e) {
                        e.preventDefault();
                        logTabNum = $(this).parent().index();
                        $('.login-tab li').removeClass('on');
                        $(this).parent().addClass('on');
                        $('.login-con-wrap').find('.login-con').hide();
                        $('.login-con-wrap').find('.login-con').eq(logTabNum).show();
                    });
                });
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

</body>

</html>