<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">

<!-- Mirrored from bxgs.co.kr/shop/personalpayform.php?pp_id=2022051815414028&page=1 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:05:26 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="shortcut icon" href="../home/img/favicon.ico" />
<title>개인결제view</title>
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
var g5_url       = "../index.html";
var g5_bbs_url   = "https://bxgs.co.kr:443/bbs/";
var g5_is_member = "";
var g5_is_admin  = "";
var g5_is_mobile = "1";
var g5_bo_table  = "";
var g5_sca       = "";
var g5_editor    = "";
var g5_cookie_domain = "";
var g5_theme_shop_url = "https://bxgs.co.kr:443/theme/buzinga/shop/";
var g5_shop_url = "https://bxgs.co.kr:443/shop/";


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
                    <span class="sub-txt">성함과 금액을 확인하신 후 결제 부탁드립니다.</span>
                <h2 class="sub-tit">개인결제 view</h2>
    </div>
</section>


<form name="forderform" id="forderform" method="post" action="https://bxgs.co.kr/shop/personalpayformupdate.php" autocomplete="off">
<input type="hidden" name="pp_id" value="2022051815414028">

        <input type="hidden" name="req_tx"          value="pay">
    <input type="hidden" name="site_cd"         value="T0000">
    <input type="hidden" name="site_name"       value="DropShip">
    <input type="hidden" name="def_site_cd"     value="T0000">

    <!-- <input type="hidden" name="KCP_PAY_MODULE"  value="kcp_web" > -->
    <input type="hidden" name="pay_method"  value="">
    <input type="hidden" name="ordr_idxx"   value="2022051815414028">
    <input type="hidden" name="good_name"   value="SORO님 개인결제">
    <input type="hidden" name="good_mny"    value="1500000">
    <input type="hidden" name="buyr_name"   value="">
    <input type="hidden" name="buyr_mail"   value="">
    <input type="hidden" name="buyr_tel1"   value="">
    <input type="hidden" name="buyr_tel2"   value="">

    <input type="hidden" name="rcvr_name"     value="">
    <input type="hidden" name="rcvr_tel1"     value="">
    <input type="hidden" name="rcvr_tel2"     value="">
    <input type="hidden" name="rcvr_mail"     value="">
    <input type="hidden" name="rcvr_zipx"     value="">
    <input type="hidden" name="rcvr_add1"     value="">
    <input type="hidden" name="rcvr_add2"     value="">

    <input type="hidden" name="payco_direct"   value="">      <!-- PAYCO 결제창 호출 -->
    <input type="hidden" name="naverpay_direct" value="A" >    <!-- NAVERPAY 결제창 호출 -->
        <input type="hidden" name="kakaopay_direct" value="A" >    <!-- KAKAOPAY 결제창 호출 -->

    <input type="hidden" name="quotaopt"    value="12">

    <!-- 필수 항목 : 결제 금액/화폐단위 -->
    <input type="hidden" name="currency"    value="WON">


    <!-- PLUGIN 설정 정보입니다(변경 불가) -->
    <input type="hidden" name="module_type"     value="01">
    <!-- 복합 포인트 결제시 넘어오는 포인트사 코드 : OK캐쉬백(SCSK), 베네피아 복지포인트(SCWB) -->
    <input type="hidden" name="epnt_issu"       value="">
<!--
      ※ 필 수
          필수 항목 : Payplus Plugin에서 값을 설정하는 부분으로 반드시 포함되어야 합니다
          값을 설정하지 마십시오
-->
    <input type="hidden" name="res_cd"          value="">
    <input type="hidden" name="res_msg"         value="">
    <input type="hidden" name="tno"             value="">
    <input type="hidden" name="trace_no"        value="">
    <input type="hidden" name="enc_info"        value="">
    <input type="hidden" name="enc_data"        value="">
    <input type="hidden" name="ret_pay_method"  value="">
    <input type="hidden" name="tran_cd"         value="">
    <input type="hidden" name="bank_name"       value="">
    <input type="hidden" name="bank_issu"       value="">
    <input type="hidden" name="use_pay_method"  value="">

    <!--  현금영수증 관련 정보 : Payplus Plugin 에서 설정하는 정보입니다 -->
    <input type="hidden" name="cash_tsdtime"    value="">
    <input type="hidden" name="cash_yn"         value="">
    <input type="hidden" name="cash_authno"     value="">
    <input type="hidden" name="cash_tr_code"    value="">
    <input type="hidden" name="cash_id_info"    value="">

    <!-- 2012년 8월 18일 정자상거래법 개정 관련 설정 부분 -->
    <!-- 제공 기간 설정 0:일회성 1:기간설정(ex 1:2012010120120131)  -->
    <!--
        2012.08.18 부터 개정 시행되는 '전자상거래 등에서의 소비자보호에 관한 법률'에 따른 코드 변경
        이용기간이 제한되는 컨텐츠 상품이나 정기 과금 상품 등에 한하여 '용역의 제공기간'을
        표기/적용하여야 하며 이와 무관한 실물 배송상품 등의 결제에는 해당되지 않습니다.
        0 : 일반결제
        good_expr의 나머지 적용 방식에 대해서는 KCP에서 제공하는 매뉴얼을 참고해 주세요.
    -->
    <input type="hidden" name="good_expr" value="0">

    <!-- 가맹점에서 관리하는 고객 아이디 설정을 해야 합니다.(필수 설정) -->
	<input type="hidden" name="shop_user_id"    value=""/>
	<!-- 복지포인트 결제시 가맹점에 할당되어진 코드 값을 입력해야합니다.(필수 설정) -->
    <input type="hidden" name="pt_memcorp_cd"   value=""/>

    <!-- 에스크로 항목 -->

    <!-- 에스크로 사용 여부 : 반드시 Y 로 세팅 -->
    <input type="hidden" name="escw_used" value="Y">

    <!-- 에스크로 결제처리 모드 : 에스크로: Y, 일반: N, KCP 설정 조건: O -->
    <input type="hidden" name="pay_mod" value="N">

    <!-- 배송 소요일 : 예상 배송 소요일을 입력 -->
    <input type="hidden" name="deli_term" value="03">

    <!-- 장바구니 상품 개수 : 장바구니에 담겨있는 상품의 개수를 입력 -->
    <input type="hidden" name="bask_cntx" value="1">

    <!-- 장바구니 상품 상세 정보 (자바 스크립트 샘플(create_goodInfo()) 참고) -->
    <input type="hidden" name="good_info" value="">



<input type="hidden" name="kcp_noint"       value="N">

    <input type="hidden" name="wish_vbank_list" value="">
    <input type="hidden" name="disp_tax_yn"     value="N">
    <input type="hidden" name="site_logo"       value="">

    <input type="hidden" name="skin_indx"      value="1">


    <div class="pc-personal-wrap">
        <div class="maxinner">
            <section class="pesonal sod_left"><!-- id="sod_frm_pay" -->
                <h3>개인결제정보</h3>

                <div class="tbl_frm01 tbl_wrap">
                    <table>
                        <tbody>
                            <tr>
                                <th>결제금액</th>
                                <td class="left_price"><strong>1,500,000</strong> 원</td>
                            </tr>
                            <tr>
                                <th><label for="pp_name"><span class="f-color">*</span> 이름</label></th>
                                <td><input type="text" name="pp_name" value="SORO" id="pp_name" required class="required inp-type01"></td>
                            </tr>
                            <tr>
                                <th><label for="pp_hp"><span class="f-color">*</span> 핸드폰번호</label></th>                                
                                <td><input type="text" name="pp_hp" value="" id="pp_hp" required class="required inp-type01"></td>
                            </tr>
                            <tr>
                                <th><label for="pp_email"><span class="f-color">*</span> 이메일</label></th>
                                <td><input type="text" name="pp_email" value="" id="pp_email" required class="required inp-type01" size="30"></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </section>

            <div class="sod_right" id="personal_pay">
                <h2>결제수단</h2>
                            
                <ul class="pay_way chk_box">
                    <li>
                                        </li>
                    
                    <li>
                                        </li>
                    
                    <li>
                                        </li>
                
                    <li>
                                        </li>
                </ul>

                <div class="empty-content"><img src="../home/img/ico/ico-information-big.png" alt="알림"><p>결제수단이 없습니다.<br>운영자에게 문의해주세요.</p></div>                
<div id="display_pay_button" class="btn_confirm">
    <input type="button" value="주문하기" onclick="forderform_check(this.form);" class="btn_submit">
    <a href="javascript:history.go(-1);" class="btn01">취소하기</a>
</div>
<div id="display_pay_process" style="display:none">
    <img src="img/loading.gif" alt="">
    <span>주문완료 중입니다. 잠시만 기다려 주십시오.</span>
</div>                            </div>
        </div>
    </div>
</form>

<script>
function forderform_check(f)
{
    var settle_case = document.getElementsByName("pp_settle_case");
    var settle_check = false;
    var settle_method = "";
    for (i=0; i<settle_case.length; i++)
    {
        if (settle_case[i].checked)
        {
            settle_check = true;
            settle_method = settle_case[i].value;
            break;
        }
    }
    if (!settle_check)
    {
        alert("결제방식을 선택하십시오.");
        return false;
    }

    var tot_price = 1500000;

    if (document.getElementById("pp_settle_iche")) {
        if (document.getElementById("pp_settle_iche").checked) {
            if (tot_price < 150) {
                alert("계좌이체는 150원 이상 결제가 가능합니다.");
                return false;
            }
        }
    }

    if (document.getElementById("pp_settle_card")) {
        if (document.getElementById("pp_settle_card").checked) {
            if (tot_price < 1000) {
                alert("신용카드는 1000원 이상 결제가 가능합니다.");
                return false;
            }
        }
    }

    if (document.getElementById("pp_settle_hp")) {
        if (document.getElementById("pp_settle_hp").checked) {
            if (tot_price < 350) {
                alert("휴대폰은 350원 이상 결제가 가능합니다.");
                return false;
            }
        }
    }

    // pay_method 설정
        switch(settle_method)
    {
        case "계좌이체":
            f.pay_method.value = "010000000000";
            break;
        case "가상계좌":
            f.pay_method.value = "001000000000";
            break;
        case "휴대폰":
            f.pay_method.value = "000010000000";
            break;
        case "신용카드":
            f.pay_method.value = "100000000000";
            break;
        default:
            f.pay_method.value = "무통장";
            break;
    }
    
    // 결제정보설정
        f.buyr_name.value = f.pp_name.value;
    f.buyr_mail.value = f.pp_email.value;
    f.buyr_tel1.value = f.pp_hp.value;
    f.buyr_tel2.value = f.pp_hp.value;
    f.rcvr_name.value = f.pp_name.value;
    f.rcvr_tel1.value = f.pp_hp.value;
    f.rcvr_tel2.value = f.pp_hp.value;
    f.rcvr_mail.value = f.pp_email.value;

    if(f.pay_method.value != "무통장") {
        jsf__pay( f );
    } else {
        f.submit();
    }
            }
</script>    </main>
        
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
<script src="../home/theme/buzinga/js/base.js"></script><script src="../home/theme/buzinga/js/sub.js"></script>

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

<!-- Mirrored from bxgs.co.kr/shop/personalpayform.php?pp_id=2022051815414028&page=1 by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:05:26 GMT -->
</html>
