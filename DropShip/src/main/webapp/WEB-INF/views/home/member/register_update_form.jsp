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
    <title>회원정보수정 form</title>
    <link rel="stylesheet" href="../home/theme/buzinga/css/mobile_shop3816.css?ver=210618">
    <link rel="stylesheet" href="../home/js/font-awesome/css/font-awesome.min3816.css?ver=210618">
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
       /*  var g5_url = "https://bxgs.co.kr";
        var g5_bbs_url = "https://bxgs.co.kr/bbs";
        var g5_is_member = "1";
        var g5_is_admin = "";
        var g5_is_mobile = "1";
        var g5_bo_table = "";
        var g5_sca = "";
        var g5_editor = "";
        var g5_cookie_domain = "";
        var g5_theme_shop_url = "https://bxgs.co.kr/theme/buzinga/shop";
        var g5_shop_url = "https://bxgs.co.kr/shop"; */
    </script>
    <link rel="stylesheet" href="../../use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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



            <script src="https://bxgs.co.kr/js/jquery.register_form.js"></script>



            <section class="mypage">
                <div class="maxinner">

                    <!-- mypage_side_bar 시작 부분 -->
                    <%@ include file = "../top/mypage_side_bar.jsp" %>
                    <!-- mypage_side_bar 끝 부분 -->

                    <div class="mypage-con">
                        <div class="mypage-tit mt0">
                            <h3>회원정보 변경</h3>
                        </div>


                        <!----- 회원정보 입력 ----->
                        <section class="join">
                            <div class="maxinner">


                                <div class="join-form-wrap">
                                    <form name="registerUpdateform" id="fregisterform" action="register_update_form" method="post" enctype="multipart/form-data" autocomplete="off">
										<input type="hidden" name="id" value="${sessionMember_id}">
                                        <div class="form-box-wrap">
                                            <div class="form-box">
                                                <div class="left-con">
                                                    <label for="reg_mb_id"><span class="f-color">*</span>아이디</label>
                                                </div>
                                                <div class="right-con">
                                                    <div class="box-id">
                                                        <input type="text" name="member_login_id" value="${sessionMember_login_id}" id="reg_mb_id" class="inp-type01 half  readonly" minlength="3" maxlength="20" readonly placeholder="아이디">
                                                    </div>
                                                    <span id="msg_mb_id"></span>
                                                    <span class="sm-notice-txt">영문자, 숫자, _ 만 입력 가능. 최소 3자이상 입력하세요.</span>
                                                </div>
                                            </div>

                                            <div class="form-box">
                                                <div class="left-con">
                                                    <label for="reg_mb_name"><span class="f-color">*</span>이름</label>
                                                </div>
                                                <div class="right-con">
                                                    <input type="text" id="reg_mb_name" name="member_name" value="${mvo.getMember_name()}" readonly class="inp-type01 half  readonly" placeholder="이름">
                                                </div>
                                            </div>

                                            <div class="form-box">
                                                <div class="left-con">
                                                    <label for="reg_mb_email"><span class="f-color">*</span>E-mail</label>
                                                </div>
                                                <div class="right-con">
                                                    <%-- <input type="hidden" name="member_email" value="${mvo.getMember_email()}"> --%>
                                                    <input type="email" name="member_email" value="${mvo.getMember_email()}" id="reg_mb_email" required class="inp-type01 half email required" size="50" maxlength="100" placeholder="E-mail">
                                                </div>
                                            </div>

                                            <div class="form-box">
                                                <div class="left-con">
                                                    <label for="reg_mb_hp"><span class="f-color">*</span>휴대폰번호</label>
                                                </div>
                                                <div class="right-con">
                                                    <input type="text" name="member_phone" value="${mvo.getMember_phone()}" id="reg_mb_hp" class="inp-type01 half " maxlength="20" placeholder="휴대폰번호">
                                                </div>
                                            </div>


                                            <script>
                                                // 다음주소찾기
                                                function addressBtn() {
                                                    new daum.Postcode({
                                                        oncomplete: function(data) {
                                                            $("#reg_mb_zip").val(data.zonecode);
                                                            $("#reg_mb_addr1").val(data.address);
                                                        }
                                                    }).open();
                                                }
                                            </script>
                                            <div class="form-box align-top">
                                                <div class="left-con">
                                                    <span class="f-color">*</span>주소
                                                </div>
                                                <div class="right-con">
                                                    <div class="box-adress">
                                                        <span class="frm_label sound_only">주소필수</span>
                                                        <label for="reg_mb_zip" class="sound_only">우편번호<strong class="sound_only"> 필수</strong></label>
                                                        <input type="text" name="member_zip" value="${mvo.getMember_zip()}" id="reg_mb_zip" class="inp-type01 " size="5" maxlength="6" readonly placeholder="우편번호">
                                                        <button type="button" class="btnset btn-type03 btn-fill-brown" onclick="addressBtn()">우편번호 검색</button><br>
                                                    </div>
                                                    <div class="box-adress-inp">
                                                        <label for="reg_mb_addr1" class="sound_only">주소<strong class="sound_only"> 필수</strong></label>
                                                        <input type="text" name="member_road" value="${mvo.getMember_road()}" id="reg_mb_addr1" class="inp-type01 " size="50" readonly placeholder="기본주소"><br>
                                                        <label for="reg_mb_addr2" class="sound_only">상세주소</label>
                                                        <input type="text" name="member_addr" value="${mvo.getMember_addr()}" id="reg_mb_addr2" class="inp-type01 " size="50" placeholder="상세주소">
                                                    </div>
                                                   <!--  <input type="hidden" name="mb_addr3" value="">
                                                    <input type="hidden" name="mb_addr_jibeon" value=""> -->
                                                </div>
                                            </div>

                                            <!-- <div class="form-box">
                        <div class="left-con">
                            <span class="f-color">*</span> 메일 수신
                        </div>
                        <div class="right-con">
                            <ul class="box-mailing">
                                <li class="chk-box type-radio">
                                    <input type="radio" name="mb_mailling" value="1" id="reg_mb_mailling1" required  class="selec_chk">
                                    <label for="reg_mb_mailling1">예</label>
                                </li>
                                <li class="chk-box type-radio">
                                    <input type="radio" name="mb_mailling" value="0" id="reg_mb_mailling2" required checked class="selec_chk">
                                    <label for="reg_mb_mailling2">아니오</label>
                                </li>
                            </ul>
                        </div>
                    </div> -->

                                            <!--
                    <div class="form-box">
                        <div class="left-con">
                            <span class="f-color">*</span> SNS 관리
                        </div>
                        <div class="right-con">
                            <ul class="box-sns-manage">
                                                            </ul>
                        </div>
                    </div>    
-->


                                            <!-- <div class="form-box">
                        <div class="left-con">
                            <span class="f-color">*</span>자동등록방지
                        </div>
                        <div class="right-con">
                            
<script>var g5_captcha_url  = "https://bxgs.co.kr/plugin/kcaptcha";</script>
<script src="https://bxgs.co.kr/plugin/kcaptcha/kcaptcha.js"></script>
<fieldset id="captcha" class="captcha">
<legend><label for="captcha_key">자동등록방지</label></legend>
<img src="https://bxgs.co.kr/plugin/kcaptcha/img/dot.gif" alt="" id="captcha_img"><input type="text" name="captcha_key" id="captcha_key"  class="captcha_box required" size="6" maxlength="6">
<button type="button" id="captcha_mp3"><span></span>숫자음성듣기</button>
<button type="button" id="captcha_reload"><span></span>새로고침</button>
<span id="captcha_info">자동등록방지 숫자를 순서대로 입력하세요.</span>
</fieldset>                        </div>
                    </div> -->
                                        </div>

                                        <div class="btn-confirm-wrap">
                                            <a href="/" class="btnset btn-type04">취소</a>
                                            <button type="button" id="btn_submit" onclick="updateBtn()" class="btnset btn-type04 btn-line-brown" accesskey="s">수정</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </section>



                    </div>
                </div>
            </section>

		<script>
		  
		// 회원수정버튼
		  function updateBtn(){
			  // 정규표현식
			  //var nNamePattern = /^[a-zA-Z가-힣]{2,8}$/; // 닉네임
			  var phonePattern = /^[0-9]{8,12}$/; // 핸드폰
			  var adressPattern = /^[0-9]{5,}$/; // 우편번호			 
			  var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9-]+\.(com|net|edu)$/; //이메일 (com, net, edu만 사용가능)
			  //'^[a-zA-Z0-9+-_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$'
			  // id부분
			  /* var id = $("#reg_mb_id").val();
			  if(id==""){
				  alert("아이디를 입력하세요!");
				  $("#reg_mb_id").focus();
				  return false;
			  }
			  if(!idPattern.test(id)){
				  alert("아이디는 5자리이상 11자리이하 영문,숫자만 입력 가능합니다.");
				  $("#reg_mb_id").focus();
				  return false;
			  } */
			  
			  // 이름부분
			  /* var name = $("#reg_mb_name").val();
			  if(name==""){
				  alert("이름을 입력하셔야 합니다.");
				  $("#reg_mb_name").focus();
				  return false;
			  }
			  if(!namePattern.test(name)){
				  alert("이름을 제대로 입력해주세요.");
				  $("#reg_mb_name").focus();
				  return false;
			  } */
			  
			  /* // 닉네임 부분
			  var nName = $("#reg_mb_nName").val();
			  if(nName==""){
				  alert("닉네임을 입력하셔야 합니다.");
				  $("#reg_mb_nName").focus();
				  return false;
			  }
			  if(!nNamePattern.test(nName)){
				  alert("닉네임을 제대로 입력해주세요");
				  $("#reg_mb_nName").focus();
				  return false;
			  } */
			  
			  // 휴대폰 부분
			  var phone = $("#reg_mb_hp").val();
			  if(phone==""){
				  alert("휴대폰 번호를 입력하셔야 합니다.");
				  $("#reg_mb_hp").focus();
				  return false;
			  }
			  if(!phonePattern.test(phone)){
				  alert("휴대폰번호를 제대로 입력해주세요.");
				  $("#reg_mb_hp").focus();
				  return false;
			  }
			  
			  // 주소부분
			  var adress = $("#reg_mb_zip").val();
			  if(adress==""){
				  alert("주소를 입력하셔야 합니다.");
				  $("#reg_mb_zip").focus();
				  return false;
			  }
			  if(!adressPattern.test(adress)){
				  alert("주소를 제대로 입력해주세요.");
				  $("#reg_mb_zip").focus();
				  return false;
			  } 
			  
			  var adress2 = $("#reg_mb_addr2").val();
			  if(adress2==""){
				  alert("상세주소를 입력하셔야 합니다.");
				  $("#reg_mb_addr2").focus();
				  return false;
			  }
			  
			  // 이메일 부분
			  var email = $("#reg_mb_email").val();
			  if(email==""){
				  alert("이메일 주소를 입력하셔야 합니다.");
				  $("#reg_mb_email").focus();
				  return false;
			  }
			  if(!emailPattern.test(email)){
				  alert("이메일 주소를 올바르게 입력하세요.");
				  $("#reg_mb_email").focus();
				  return false;
			  } 
			  
			  registerUpdateform.submit();
		  }//joinBtn()
		  
		</script>





        </main>

        <!-- header 부분 시작 -->
        <%@ include file ="../top/footer.jsp" %>
        <!-- header 부분 끝 -->

        <div id="gotop">
            <a href="javascript:;"><span class="hide">맨위로가기</span></a>
        </div>
    </div>


    <script src="/home/js/sns.js"></script>
    <script src="/home/theme/buzinga/js/css3-animate-it.js"></script>
    <link rel="stylesheet" href="/home/theme/buzinga/css/animate.css">
    <script src="/home/theme/buzinga/js/base.js"></script>
    <script src="/home/theme/buzinga/js/sub.js"></script>

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