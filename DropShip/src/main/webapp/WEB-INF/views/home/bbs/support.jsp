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
    <link rel="shortcut icon" href="/home/img/favicon.ico" />
    <title>제휴협찬문의</title>
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
        var g5_is_member = "";
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
                    <span class="sub-txt">제휴협찬 신청해주시면 검토 진행 후 연락 드리겠습니다.</span>
                    <h2 class="sub-tit">제휴협찬문의</h2>
                </div>
            </section>


            <section class="support">
                <div class="maxinner">

                    <form name="" action="" method="">
                        <fieldset>
                            <legend>문의양식</legend>
                            <div class="support-form">
                                <div class="left">
                                    <div class="imgbox" style="background-image:url('/home/img/sub/support-img01.jpg')"><span class="hide">배경이미지</span></div>
                                </div>
                                <div class="right">
                                    <div class="form-box-wrap">
                                        <div class="form-box write-opt">
                                            <div class="left-con">
                                                <span class="f-color">*</span>문의내용
                                            </div>
                                            <div class="right-con">
                                                <div class="chk-box type-radio">
                                                    <input type="radio" id="sp-cate01" name="sp-cate" required value="">
                                                    <label for="sp-cate01">제휴문의</label>
                                                </div>
                                                <div class="chk-box type-radio">
                                                    <input type="radio" id="sp-cate02" name="sp-cate" required value="">
                                                    <label for="sp-cate02">협찬문의</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-box">
                                            <div class="left-con">
                                                <label for="sp-name"><span class="f-color">*</span>이름</label>
                                            </div>
                                            <div class="right-con">
                                                <input type="text" id="sp-name" name="" required class="inp-type01">
                                            </div>
                                        </div>
                                        <div class="form-box">
                                            <div class="left-con">
                                                <label for="sp-hp"><span class="f-color">*</span>연락처</label>
                                            </div>
                                            <div class="right-con">
                                                <input type="text" id="sp-hp" name="" required class="inp-type01">
                                            </div>
                                        </div>
                                        <div class="form-box">
                                            <div class="left-con">
                                                <label for="sp-email"><span class="f-color">*</span>이메일</label>
                                            </div>
                                            <div class="right-con">
                                                <input type="text" id="sp-email" name="" required class="inp-type01">
                                            </div>
                                        </div>
                                        <div class="form-box">
                                            <div class="left-con">
                                                <label for="sp-subject"><span class="f-color">*</span>제목</label>
                                            </div>
                                            <div class="right-con">
                                                <input type="text" id="sp-subject" name="" required class="inp-type01">
                                            </div>
                                        </div>
                                        <div class="form-box">
                                            <div class="left-con">
                                                <label for="sp-content"><span class="f-color">*</span>내용</label>
                                            </div>
                                            <div class="right-con">
                                                <textarea name="" id="sp-content" cols="30" rows="10" required class="textarea-type01"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="support-agree">
                                <div class="left">
                                    <div class="chk-box">
                                        <input type="checkbox" id="sp-agree1" name="" value="" required>
                                        <label for="sp-agree1">개인정보처리방침 <span class="f-color">(필수)</span></label>
                                    </div>
                                </div>
                                <div class="right">
                                    <a href="javascript:;" class="btnset btn-type01 btn-pop-open" data-popnum="01">
                                        <svg height="45" width="160">
                                            <rect height="45" width="160"></rect>
                                        </svg>
                                        <span>내용보기</span>
                                    </a>
                                </div>
                            </div>
                            <div class="btnwrap">
                                <button type="submit" class="btnset btn-type01">
                                    <svg height="50" width="180">
                                        <rect height="50" width="180"></rect>
                                    </svg>
                                    <span>Submit</span>
                                </button>
                            </div>
                        </fieldset>
                    </form>

                </div>
            </section>


            <div class="pop-wrap pop01" id="pop-personal">
                <div class="pop-inner">
                    <div class="pop-tit-wrap">
                        <h3 class="pop-tit">DropShip쇼핑몰 개인정보처리방침</h3>
                    </div>
                    <div class="pop-con-wrap">
                        <div class="scroll-box">
                            <dl>
                                <dt>1. 개인정보의 처리 목적</dt>
                                <dd>
                                    <dl>
                                        <dt>
                                            <DropShip 갤러리>( 이하 ‘DropShip’) 은(는) 다음의 목적을 위하여 개인정보를 처리하고 있으며, 다음의 목적 이외의 용도로는 이용하지 않습니다.
                                        </dt>
                                        <dd>
                                            - 고객 가입의사 확인, 고객에 대한 서비스 제공에 따른 본인식별/인증, 회원자격 유지/관리, 물품 또는 서비스 공급에 따른 금액결제, 물품 또는 서비스의 공급/배송 등
                                        </dd>
                                    </dl>
                                </dd>
                            </dl>
                            <dl>
                                <dt>2. 개인정보의 처리 및 보유 기간</dt>
                                <dd>① ‘DropShip’은(는) 정보주체로부터 개인정보를 수집할 때 동의 받은 개인정보 보유/이용기간 또는 법령에 따른 개인정보 보유/이용기간 내에서 개인정보를 처리/보유합니다.</dd>
                                <dd>
                                    ② 구체적인 개인정보 처리 및 보유 기간은 다음과 같습니다.<br>
                                    ☞ 아래 예시를 참고하여 개인정보 처리업무와 개인정보 처리업무에 대한 보유기간 및 관련 법령, 근거 등을 기재합니다.
                                    <dl>
                                        <dt>[예시]</dt>
                                        <dd>
                                            - 고객 가입 및 관리 : 서비스 이용계약 또는 회원가입 해지시까지, 다만 채권/채무관계 잔존시에는 해당 채권/채무관계 정산시까지<br>
                                            전자상거래에서의 계약/청약철회, 대금결제, 재화 등 공급기록 : 5년
                                        </dd>
                                    </dl>
                                </dd>
                            </dl>
                            <dl>
                                <dt>3. 개인정보의 제3자 제공에 관한 사항</dt>
                                <dd>① ‘DropShip’은(는) 정보주체의 동의, 법률의 특별한 규정 등 개인정보 보호법 제17조 및 제18조에 해당하는 경우에만 개인정보를 제3자에게 제공합니다.</dd>
                                <dd>
                                    ② ‘DropShip’은(는) 다음과 같이 개인정보를 제3자에게 제공하고 있습니다.<br>
                                    <dl>
                                        <dt>
                                            <DropShip 갤러리>
                                        </dt>
                                        <dd>
                                            - 개인정보를 제공받는 자 : DropShip<br>
                                            - 제공받는 자의 개인정보 이용목적 : 이름, 이메일, 핸드폰번호, 생년월일, 주소<br>
                                            - 제공받는 자의 보유/이용기간: 3년
                                        </dd>
                                    </dl>
                                </dd>
                            </dl>
                            <dl>
                                <dt>4. 개인정보처리 위탁</dt>
                                <dd>
                                    ① <DropShip 갤러리>(‘DropShip’)은(는) 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.
                                        <dl>
                                            <dt>
                                                <DropShip 갤러리>
                                            </dt>
                                            <dd>
                                                - 위탁받는 자 (수탁자) : <br>
                                                - 위탁하는 업무의 내용 : <br>
                                                - 위탁기간 :
                                            </dd>
                                        </dl>
                                </dd>
                                <dd>② <DropShip 갤러리>(‘DropShip’)은(는) 위탁계약 체결시 개인정보 보호법 제25조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적/관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리/감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.</dd>
                                <dd>③ 위탁업무의 내용이나 수탁자가 변경될 경우에는 지체없이 본 개인정보 처리방침을 통하여 공개하도록 하겠습니다.</dd>
                            </dl>
                            <dl>
                                <dt>5. 정보주체와 법정대리인의 권리·의무 및 그 행사방법</dt>
                                <dd>이용자는 개인정보주체로써 다음과 같은 권리를 행사할 수 있습니다.</dd>
                                <dd>
                                    ① 정보주체는 ‘DropShip’ 에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.<br>
                                    1. 개인정보 열람요구<br>
                                    2. 오류 등이 있을 경우 정정 요구<br>
                                    3. 삭제요구<br>
                                    4. 처리정지 요구
                                </dd>
                            </dl>
                            <dl>
                                <dt>6. 처리하는 개인정보의 항목 작성</dt>
                                <dd>
                                    ① <DropShip 갤러리>(‘DropShip’)은(는) 다음의 개인정보 항목을 처리하고 있습니다.<br>
                                        <dl>
                                            <dt>
                                                <DropShip 갤러리>
                                            </dt>
                                            <dd>
                                                - 필수항목 : 아이디, 비밀번호, 이름, 이메일, 핸드폰번호, 생년월일, 주소, 이벤트 정보 수신여부<br>
                                                - 선택항목 :
                                            </dd>
                                        </dl>
                                </dd>
                            </dl>
                            <dl>
                                <dt>7. 개인정보의 파기</dt>
                                <dd>
                                    <DropShip 갤러리>(‘DropShip’)은(는) 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체없이 해당 개인정보를 파기합니다.
                                        파기의 절차, 기한 및 방법은 다음과 같습니다.
                                        <dl>
                                            <dt>- 파기절차</dt>
                                            <dd>
                                                이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및 기타 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다.
                                                이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다.
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>- 파기기한</dt>
                                            <dd>
                                                이용자의 개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성,
                                                해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.
                                            </dd>
                                        </dl>
                                </dd>
                            </dl>
                            <dl>
                                <dt>8. 개인정보 자동 수집 장치의 설치·운영 및 거부에 관한 사항</dt>
                                <dd>① ‘DropShip’은 개별적인 맞춤서비스를 제공하기 위해 이용정보를 저장하고 수시로 불러오는 ‘쿠기(cookie)’를 사용합니다.</dd>
                                <dd>
                                    ② 쿠키는 웹사이트를 운영하는데 이용되는 서버(https)가 이용자의 컴퓨터 브라우저에게 보내는 소량의 정보이며 이용자들의 PC 컴퓨터내의 하드디스크에 저장되기도 합니다.<br>
                                    가. 쿠키의 사용 목적 : 이용자가 방문한 각 서비스와 웹 사이트들에 대한 방문 및 이용형태, 인기 검색어, 보안접속 여부, 등을 파악하여 이용자에게 최적화된 정보 제공을 위해 사용됩니다.<br>
                                    나. 쿠키의 설치·운영 및 거부 : 웹브라우저 상단의 도구>인터넷 옵션>개인정보 메뉴의 옵션 설정을 통해 쿠키 저장을 거부 할 수 있습니다.<br>
                                    다. 쿠키 저장을 거부할 경우 맞춤형 서비스 이용에 어려움이 발생할 수 있습니다.
                                </dd>
                            </dl>
                            <dl>
                                <dt>9. 개인정보 보호책임자 작성</dt>
                                <dd>
                                    ① ‘DropShip’은(는) 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.
                                    <dl>
                                        <dt>개인정보 보호책임자</dt>
                                        <dd>
                                            성명 : 유수영<br>
                                            직책 : 부장<br>
                                            직급 : 부장<br>
                                            연락처 : <a href="mailto:gbaexang@gmail.com">gbaexang@gmail.com</a><br>
                                            ※ 개인정보 보호 담당부서로 연결됩니다.
                                        </dd>
                                    </dl>
                                    <dl>
                                        <dt>개인정보 보호 담당부서</dt>
                                        <dd>
                                            부서명 : 책임자와 동일<br>
                                            담당자 : 유수영<br>
                                            연락처 : <a href="mailto:gbaexang@gmail.com">gbaexang@gmail.com</a><br>
                                        </dd>
                                    </dl>
                                </dd>
                                <dd>
                                    ② 정보주체께서는 ‘DropShip’ 의 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다. ‘DropShip’은(는) 정보주체의 문의에 대해 지체 없이 답변 및 처리해드릴 것입니다.
                                </dd>
                            </dl>
                            <dl>
                                <dt>10. 개인정보 처리방침 변경</dt>
                                <dd>
                                    ① 이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다.
                                </dd>
                            </dl>
                            <dl>
                                <dt>11. 개인정보의 안전성 확보 조치</dt>
                                <dd>
                                    ‘DropShip’ 은(는) 개인정보보호법 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 하고 있습니다.
                                    <dl>
                                        <dt>1. 정기적인 자체 감사 실시</dt>
                                        <dd>개인정보 취급 관련 안정성 확보를 위해 정기적(분기 1회)으로 자체 감사를 실시하고 있습니다.</dd>
                                    </dl>
                                    <dl>
                                        <dt>2. 개인정보 취급 직원의 최소화 및 교육</dt>
                                        <dd>개인정보를 취급하는 직원을 지정하고 담당자에 한정시켜 최소화 하여 개인정보를 관리하는 대책을 시행하고 있습니다.</dd>
                                    </dl>
                                    <dl>
                                        <dt>3. 내부관리계획의 수립 및 시행</dt>
                                        <dd>개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다.</dd>
                                    </dl>
                                    <dl>
                                        <dt>4. 해킹 등에 대비한 기술적 대책</dt>
                                        <dd>‘DropShip‘ 은 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신·점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적/물리적으로 감시 및 차단하고 있습니다.</dd>
                                    </dl>
                                    <dl>
                                        <dt>5. 개인정보의 암호화</dt>
                                        <dd>이용자의 개인정보는 비밀번호는 암호화 되어 저장 및 관리되고 있어, 본인만이 알 수 있으며 중요한 데이터는 파일 및 전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을 사용하고 있습니다.</dd>
                                    </dl>
                                    <dl>
                                        <dt>6. 접속기록의 보관 및 위변조 방지</dt>
                                        <dd>개인정보처리시스템에 접속한 기록을 최소 6개월 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능 사용하고 있습니다.</dd>
                                    </dl>
                                    <dl>
                                        <dt>7. 개인정보에 대한 접근 제한</dt>
                                        <dd>개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여,변경,말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</dd>
                                    </dl>
                                    <dl>
                                        <dt>8. 문서보안을 위한 잠금장치 사용</dt>
                                        <dd>개인정보가 포함된 서류, 보조저장매체 등을 잠금장치가 있는 안전한 장소에 보관하고 있습니다.</dd>
                                    </dl>
                                    <dl>
                                        <dt>9. 비인가자에 대한 출입 통제</dt>
                                        <dd>개인정보를 보관하고 있는 물리적 보관 장소를 별도로 두고 이에 대해 출입통제 절차를 수립, 운영하고 있습니다.</dd>
                                    </dl>
                                </dd>
                            </dl>
                            <dl>
                                <dt>12. 개인정보 열람청구</dt>
                                <dd>
                                    ① 정보주체는 개인정보 보호법 제35조에 따른 개인정보의 열람 청구를 아래의 부서에 할 수 있습니다. ‘DropShip‘은(는) 정보주체의 개인정보 열람청구가 신속하게 처리되도록 노력하겠습니다.
                                    <dl>
                                        <dt>개인정보 열람청구 접수·처리 부서</dt>
                                        <dd>
                                            부서명 : 책임자와 동일<br>
                                            담당자 : 유수영<br>
                                            연락처 : <a href="mailto:gbaexang@gmail.com">gbaexang@gmail.com</a><br>
                                        </dd>
                                    </dl>
                                </dd>
                                <dd>
                                    ② 정보주체께서는 제1항의 열람청구 접수․처리부서 이외에, 행정안전부의 ‘개인정보보호 종합지원 포털’ 웹사이트(<a href="https://www.privacy.go.kr/" target="_blank">www.privacy.go.kr</a>)를 통하여서도 개인정보 열람청구를 하실 수 있습니다.<br>
                                    행정안전부 개인정보보호 종합지원 포털 → 개인정보 민원 → 개인정보 열람등 요구 (본인확인을 위하여 아이핀(I-PIN)이 있어야 함)
                                </dd>
                            </dl>
                            <dl>
                                <dt>13. 정보주체의 권익침해에 대한 구제방법</dt>
                                <dd>
                                    아래의 기관은 갤러리케이 과는 별개의 기관으로서, ‘DropShip‘의 자체적인 개인정보 불만처리, 피해구제 결과에 만족하지 못하시거나 보다 자세한 도움이 필요하시면 문의하여 주시기 바랍니다.
                                    <dl>
                                        <dt>개인정보 침해신고센터 (한국인터넷진흥원 운영)</dt>
                                        <dd>
                                            - 소관업무 : 개인정보 침해사실 신고, 상담 신청<br>
                                            - 홈페이지 : <a href="https://privacy.kisa.or.kr/main.do" target="_blank">privacy.kisa.or.kr</a><br>
                                            - 전화 : (국번없이) 118<br>
                                            - 주소 : (58324) 전남 나주시 진흥길 9(빛가람동 301-2) 3층 개인정보침해신고센터
                                        </dd>
                                    </dl>
                                    <dl>
                                        <dt>개인정보 분쟁조정위원회</dt>
                                        <dd>
                                            - 소관업무 : 개인정보 분쟁조정신청, 집단분쟁조정 (민사적 해결)<br>
                                            - 홈페이지 : <a href="https://www.kopico.go.kr/main/main.do" target="_blank">www.kopico.go.kr</a><br>
                                            - 전화 : (국번없이) 1833-6972<br>
                                            - 주소 : (03171)서울특별시 종로구 세종대로 209 정부서울청사 4층
                                        </dd>
                                    </dl>
                                    <dl>
                                        <dt>대검찰청 사이버범죄수사단</dt>
                                        <dd>02-3480-3573 (<a href="https://www.spo.go.kr/site/spo/main.do" target="_blank">www.spo.go.kr</a>)</dd>
                                    </dl>
                                    <dl>
                                        <dt>경찰청 사이버안전국</dt>
                                        <dd>182 (<a href="https://cyberbureau.police.go.kr/prevention/sub4_4.jsp?mid=020505" target="_blank">cyberbureau.police.go.kr</a>)</dd>
                                    </dl>
                                </dd>
                            </dl>
                        </div>
                    </div>
                    <button type="button" class="btnset btn-pop-close"><span class="hide">팝업창닫기</span></button>
                </div>
            </div>
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