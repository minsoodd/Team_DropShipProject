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
<title>회원가입2 (정보 입력)</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
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
<!-- <script>
// 자바스크립트에서 사용하는 전역변수 선언
var g5_url       = "https://bxgs.co.kr";
var g5_bbs_url   = "https://bxgs.co.kr/bbs";
var g5_is_member = "";
var g5_is_admin  = "";
var g5_is_mobile = "1";
var g5_bo_table  = "";
var g5_sca       = "";
var g5_editor    = "";
var g5_cookie_domain = "";
var g5_theme_shop_url = "https://bxgs.co.kr/theme/buzinga/shop";
var g5_shop_url = "https://bxgs.co.kr/shop";


</script> -->
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
	                <h2 class="sub-tit">JOIN</h2>
	    </div>
	</section>
	
	
	<!-- <script src="https://bxgs.co.kr/js/jquery.register_form.js"></script> -->
	
	
	
	
	
	<!----- 회원정보 입력 ----->
	<section class="join">
	    <div class="maxinner">
	
	                <div class="join-step" data-aos="fade-up">
	            <ul>
	                <li>약관동의</li>
	                <li class="on">정보입력</li>
	                <li>가입완료</li>
	            </ul>
	        </div>
	        
	        <div class="join-form-wrap">
	            <form name="registerform" id="registerform" action="register_result" method="post">
	                <!-- <input type="hidden" name="w" value="">
	                <input type="hidden" name="url" value="%2Fbbs%2Fregister_form.php">
	                <input type="hidden" name="agree" value="1">
	                <input type="hidden" name="agree2" value="1">
	                <input type="hidden" name="cert_type" value="">
	                <input type="hidden" name="cert_no" value="">
	                <input type="hidden" name="mb_open" value="1"> 정보공개
	                <input type="hidden" name="mb_sms" value="0"> SMS 수신여부
	                <input type="hidden" name="mb_sex" value=""> -->
	
	                <div class="form-box-wrap">
	                
	                    <div class="form-box">
	                        <div class="left-con">
	                            <label for="reg_mb_id"><span class="f-color">*</span>아이디</label>
	                        </div>
	                        <div class="right-con">
	                            <div class="box-id">
	                                <input type="text" name="member_login_id"  id="reg_mb_id" class="inp-type01 half" minlength="5" maxlength="12"  placeholder="아이디">
	                                <input type="button" class="btnset btn-type03 btn-fill-brown" id="checkIdBtn" value="중복 확인">     
	                            </div>
	                            <span class="sm-notice-txt">아이디는 5~12자의 영문 소문자,숫자만 사용가능합니다.</span>
	                            <strong><span id="result_checkId" style="font-size:14px; color:red; display:none">※ ID 중복 확인을 진행해주세요.</span></strong>
	                        </div>
	                    </div>
						
						
	                    <div class="form-box">
	                        <div class="left-con">
	                            <label for="reg_mb_password"><span class="f-color">*</span>비밀번호</label>
	                        </div>
	                        <div class="right-con">
	                            <input type="password" name="member_pw" id="reg_mb_password" class="inp-type01 half " minlength="8" maxlength="16"   placeholder="비밀번호">
	                            <span class="sm-notice-txt">비밀번호는 8~16자 영문, 숫자, 특수문자를 포함하여 8자 이상으로 작성해주세요.</span>
	                        </div>
	                    </div>
	
	                    <div class="form-box">
	                        <div class="left-con">
	                            <label for="reg_mb_password_re"><span class="f-color">*</span>비밀번호 확인</label>
	                        </div>
	                        <div class="right-con">
	                            <input type="password" id="reg_mb_password_re" class="inp-type01 half " minlength="3" maxlength="20"   placeholder="비밀번호확인">
	                        </div>
	                    </div>
	
	                    <div class="form-box">
	                        <div class="left-con">
	                            <label for="reg_mb_name"><span class="f-color">*</span>이름</label>
	                        </div>
	                        <div class="right-con">
	                            <input type="text" id="reg_mb_name" name="member_name"  class="inp-type01 half"  placeholder="이름">
	                        </div>
	                    </div>
	                    
	                    <div class="form-box">
	                        <div class="left-con">
	                            <label for="reg_mb_name"><span class="f-color">*</span>닉네임</label>
	                        </div>
	                        <div class="right-con">
	                            <div class="box-id">
	                                <input type="text" name="member_nName"  id="reg_mb_nName" class="inp-type01 half" minlength="2" maxlength="8"  placeholder="닉네임">
	                                <input type="button" class="btnset btn-type03 btn-fill-brown" id="checkNicBtn" value="중복 확인">     
	                            </div>
	                            <span class="sm-notice-txt">닉네임은 한글, 영문를 포함해서 2~8자 이상으로 작성해주세요.</span>
	                            <strong><span id="result_checkNic" style="font-size:14px; color:red; display:none">※ 닉네임 중복 확인을 진행해주세요.</span></strong>
	                        </div>
	                    </div>
	
	                    <div class="form-box">
	                        <div class="left-con">
	                            <label for="reg_mb_email"><span class="f-color">*</span>E-mail</label>
	                        </div>
	                        <div class="right-con">
	                            <input type="hidden" name="old_email" value="">
	                            <input type="email" name="member_email" value="" id="reg_mb_email"  class="inp-type01 half email"  size="50" maxlength="100" placeholder="E-mail">
	                            <span class="sm-notice-txt">이메일주소는 끝에 .com, .net, .edu 로 끝나는 형식만 가능합니다.</span>
	                            
	                        </div>
	                    </div>
	
						<!-- <div class="form-box">
	                        <div class="left-con">
	                            <span class="f-color">*</span> 메일 수신
	                        </div>
	                        <div class="right-con">
	                            <ul class="box-mailing">
	                                <li class="chk-box type-radio">
	                                    <input type="radio" name="member_email" value="1" id="reg_mb_mailling1"  checked class="selec_chk">
	                                    <label for="reg_mb_mailling1">예</label>
	                                </li>
	                                <li class="chk-box type-radio">
	                                    <input type="radio" name="member_email" value="0" id="reg_mb_mailling2"  class="selec_chk">
	                                    <label for="reg_mb_mailling2">아니오</label>
	                                </li>
	                            </ul>
	                        </div>
	                    </div> -->
	                    
						<div class="form-box">
	                        <div class="left-con">
	                            <label for="reg_mb_hp"><span class="f-color">*</span>휴대폰번호</label>
	                        </div>
	                        <div class="right-con">
	                            <input type="text" name="member_phone" id="reg_mb_hp"  class="inp-type01 half"  maxlength="11" placeholder="휴대폰번호">
	                            <span class="sm-notice-txt">숫자만 입력해주세요.</span>
	                        </div>
	                    </div>
	                    
	                    <div class="form-box">
	                        <div class="left-con">
	                            <label for="reg_mb_1"><span class="f-color">*</span>생년월일</label>
	                        </div>
	                        <div class="right-con">
	                            <div class="box-birth" id="member_birth">
	                                <select name="mb_1" id="mb_1" class="deco-select" ></select>
	                                <span class="bar">년</span>
	                                <select name="mb_2" id="mb_2" class="deco-select" ></select>
	                                <span class="bar">월</span>
	                                <select name="mb_3" id="mb_3" class="deco-select" ></select>
	                                <span class="bar">일</span>
	                            </div>
	                        </div>
	                    </div>
	                    
						<script>
							// 다음주소찾기
							function addressBtn(){
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
	                                <input type="text" name="member_zip" value="" id="reg_mb_zip"  class="inp-type01 " size="5" maxlength="6" readonly placeholder="우편번호">
	                                <button type="button" class="btnset btn-type03 btn-fill-brown" onclick="addressBtn()">우편번호 검색</button><br>
	                            </div>
	                            <div class="box-adress-inp">
	                                <label for="reg_mb_addr1" class="sound_only">주소<strong class="sound_only"> 필수</strong></label>
	                                <input type="text" name="member_road" value="" id="reg_mb_addr1"  class="inp-type01 " size="50" readonly placeholder="기본주소"><br>
	                                <label for="reg_mb_addr2" class="sound_only">상세주소</label>
	                                <input type="text" name="member_addr" value="" id="reg_mb_addr2"  class="inp-type01 " size="50" placeholder="상세주소">
	                            </div>
	                            <input type="hidden" name="mb_addr3" value="">
	                            <input type="hidden" name="mb_addr_jibeon" value="">
	                        </div>
	                    </div>
	                    
	                    
	                    <!-- <div class="form-box">
	                        <div class="left-con">
	                            <span class="f-color">*</span>자동등록방지
	                        </div>
	                        <div class="right-con">
	                            
	<script>var g5_captcha_url  = "https://bxgs.co.kr/plugin/kcaptcha";</script>
	<script src="https://bxgs.co.kr/plugin/kcaptcha/kcaptcha.js"></script>
	<fieldset id="captcha" class="captcha">
	<legend><label for="captcha_key">자동등록방지</label></legend>
	<img src="https://bxgs.co.kr/plugin/kcaptcha/img/dot.gif" alt="" id="captcha_img"><input type="text" name="captcha_key" id="captcha_key"  class="captcha_box " size="6" maxlength="6">
	<button type="button" id="captcha_mp3"><span></span>숫자음성듣기</button>
	<button type="button" id="captcha_reload"><span></span>새로고침</button>
	<span id="captcha_info">자동등록방지 숫자를 순서대로 입력하세요.</span>
	</fieldset>                        </div>
	                    </div> -->
	                </div>
	
	                <div class="btn-confirm-wrap">
	                    <a href="/" class="btnset btn-type04">취소</a>
	                    <button type="button" id="btn_submit" class="btnset btn-type04 btn-line-brown" onclick="joinBtn()" accesskey="s">확인</button>
	                </div>
	            </form>
	        </div>
	    </div>
	</section>
	
	
		<script>
		  // 사이트 열리자마자 dup을 0으로 설정(중복확인 안누른 상태가 0). 눌렀으면 1
		  var dup = 0;
		  var dup2 = 0;
		  
		  $(function(){
	           
	           var now = new Date();
	           var year = now.getFullYear(); // 년
	           var month = (now.getMonth()+1); // 월
	           var date = now.getDate(); // 일
	           
	           // 년도 넣기
	           var htmlData="";
	           htmlData += "<option selected>선택</option>";
	           for(var i=1900;i<=year;i++){
	              htmlData +="<option value='"+i+"'>"+i+"</option>";
	           }
	           $("#mb_1").html(htmlData);
	           
	           // 월 넣기
	           htmlData="";
	           htmlData += "<option selected>선택</option>"; 
	           for(var i=1;i<=12;i++){
	              if(i<10){
	                   htmlData +="<option value='"+("0"+i)+"'>"+("0"+i)+"</option>";
	              }else if(i>9){
	                   htmlData +="<option value='"+i+"'>"+i+"</option>";
	              }
	           }
	           $("#mb_2").html(htmlData);
	           
	           // 일 넣기
	           htmlData="";
	           htmlData += "<option selected>선택</option>";
	           for(var i=1;i<=31;i++){
	              if(i<10){
	                 htmlData +="<option value='"+("0"+i)+"'>"+("0"+i)+"</option>";
	              }else if(i>9){
	                 htmlData +="<option value='"+i+"'>"+i+"</option>";
	              }
	           }
	           $("#mb_3").html(htmlData);
	           
	           
	        });//jquery
		  
		  
		  
		  
		  
		  
		  // 윤달 생년월일 안돼서 일단 주석처리해놈
// 		   $(function(){   
			  
// 			  var now = new Date();
// 			  var year = now.getFullYear(); // 년
			  
// 			  // 년도
// 			  var yearData="";
// 			  yearData += "<option selected>선택</option>";
// 			  for(var i=1900;i<=year;i++){
// 				  yearData +="<option value='"+i+"'>"+i+"</option>";
// 			  }
// 			  $("#mb_1").html(yearData);
			  
// 			  // 월
// 			  var monthData="";
// 			  monthData += "<option selected>선택</option>"; 
// 			  for(var i=1;i<=12;i++){
// 			      if(i<10){
// 			    	  monthData +="<option value='"+("0"+i)+"'>"+("0"+i)+"</option>";
// 			      }else if(i>9){
// 			    	  monthData +="<option value='"+i+"'>"+i+"</option>";
// 			      }
// 			  }
// 			  $("#mb_2").html(monthData);
			  
			  
// 			  $("#mb_3").html("<option selected>선택</option>");
			  
// 			// 월이 변경될 때 나오는 일
// 				$('#mb_2').on('change', function() {
// 				  var year = $("#mb_1").val();
// 				  var month = $("#mb_2").val();
// 				  var day = 0;
// 				  var dayData ="";
// 				  dayData = "<option selected>선택</option>"
				  
// 				  if ( month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12 ) { day = 31; }
// 				  else if ( month == 4 || month == 6 || month == 9 || month == 11 ) { day = 30; }
// 				  else if ( month == 2 ) {
// 				      if ( year % 400 == 0 || year % 4 == 0 && year % 100 != 0 ) { day = 29; }
// 				      else { day = 28; }
// 				  }
				  
				  
// 				  for ( var i = 1; i<= day; i++ ) {
// 				      if(i<10){
// 				          dayData += "<option value='"+("0"+i)+"'>"+("0"+i)+"</option>";
// 				      }else if(i>9){
// 				          dayData += "<option value='"+i+"'>"+i+"</option>";
// 				      }
// 				  }
				  
// 				  alert($("#mb_3").val());
// 				  alert(dayData);
// 				  $("#mb_3").html(dayData);
// 				});//function
			  
// 			});//제이쿼리 
		  
			
 		  
 		  
		  //(회원가입)확인버튼
		  function joinBtn(){
			  // 정규표현식
			  var idPattern = /^[a-zA-Z0-9]{5,12}$/; // id
			  var pwPattern = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*()<>?]).{8,16}$/; // pw
			  var namePattern = /^[가-힣]{1,10}$/; // 이름
			  var nNamePattern = /^[a-zA-Z가-힣]{2,8}$/; // 닉네임
			  var phonePattern = /^[0-9]{8,11}$/; // 핸드폰
			  var adressPattern = /^[0-9]{5,}$/; // 우편번호			 com, net, edu,
			  var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9-]+\.(com|net|edu)$/;
			  //'^[a-zA-Z0-9+-_.]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$'
			  
			  // id부분
			  var id = $("#reg_mb_id").val();
			  if(id==""){
				  alert("아이디를 입력하세요!");
				  $("#reg_mb_id").focus();
				  return false;
			  }
			  if(!idPattern.test(id)){
				  alert("아이디는 5자리이상 11자리이하 영문,숫자만 입력 가능합니다.");
				  $("#reg_mb_id").focus();
				  return false;
			  }
			  
		 	  // pw부분
			  var pw = $("#reg_mb_password").val();
			  if(pw==""){
				  alert("비밀번호를 입력하셔야 합니다.");
				  $("#reg_mb_password").focus();
				  return false;
			  }
			  if(!pwPattern.test(pw)){
				  alert("비밀번호는 8~16자 영문, 숫자, 특수문자가 1개씩 포함되어야 합니다.");
				  $("#reg_mb_password").focus();
				  return false;
			  }
			  
			  // pw확인부분
			  var pwcheck = $("#reg_mb_password_re").val();
			  if(pwcheck==""){
				  alert("비밀번호를 입력하셔야 합니다.");
				  $("#reg_mb_password_re").focus();
				  return false;
			  }
			  if(pw!=pwcheck){
			  	  alert("비밀번호가 일치하지않습니다 다시 입력해주세요.");
			  	$("#reg_mb_password_re").focus();
				  return false;
			  }
			  
			  // 이름부분
			  var name = $("#reg_mb_name").val();
			  if(name==""){
				  alert("이름을 입력하셔야 합니다.");
				  $("#reg_mb_name").focus();
				  return false;
			  }
			  if(!namePattern.test(name)){
				  alert("이름은 한글만 가능합니다.");
				  $("#reg_mb_name").focus();
				  return false;
			  }
			  
			  // 닉네임 부분
			  var nName = $("#reg_mb_nName").val();
			  if(nName==""){
				  alert("닉네임을 입력하셔야 합니다.");
				  $("#reg_mb_nName").focus();
				  return false;
			  }
			  if(!nNamePattern.test(nName)){
				  alert("닉네임을 한글,영문 2~8자로 입력해주세요");
				  $("#reg_mb_nName").focus();
				  return false;
			  }
			  
			  // 휴대폰 부분
			  var phone = $("#reg_mb_hp").val();
			  if(phone==""){
				  alert("휴대폰 번호를 입력하셔야 합니다.");
				  $("#reg_mb_hp").focus();
				  return false;
			  }
			  if(!phonePattern.test(phone)){
				  alert("휴대폰번호를 숫자로 11자로 입력해주세요.");
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
			  var email = $("#reg_mb_email").val();
			  if(email==""){
				  alert("이메일 주소를 입력하셔야 합니다.");
				  $("#reg_mb_email").focus();
				  return false;
			  }
			  if(!emailPattern.test(email)){
				  alert("이메일 주소조건을 확인해주세요");
				  $("#reg_mb_email").focus();
				  return false;
			  } 
			  // 아이디중복확인 버튼 안눌렀을 때
			  if(dup==0){
				  $("#result_checkId").show();
				  $("#reg_mb_id").focus();
				  return false;
			  }
			  // 닉네임중복확인 버튼 안눌렀을 때
			  if(dup2==0){
				  $("#result_checkNic").show();
				  $("#reg_mb_nName").focus();
				  return false;
			  }
			  registerform.submit();
		  }//joinBtn()
			
		  
		  	 
		  
		  
			 // ID중복확인 버튼
		 	 $(function(){
		 		// ID중복확인 버튼을 눌렀을 때
			 	$("#checkIdBtn").click(function(){
			 		dup = 1; // 중복확인 버튼 클릭-> dup을 0에서 1로 바꾸기. span 글자 보이게 할려고 사용
			 		let member_login_id = $("#reg_mb_id").val();
			 		var idPattern = /^[a-zA-Z0-9]{5,12}$/; // id
			 		if(member_login_id == ""){
			 			alert("아이디를 입력하세요.");
			 			$("#reg_mb_id").focus();
			 			dup = 0;
			 			return false;
			 		}
			 		if(!idPattern.test(member_login_id)){
					  	alert("아이디는 5자리이상 11자리이하 영문,숫자만 입력 가능합니다.");
					  	$("#reg_mb_id").focus();
					  	dup = 0;
					  	return false;
					}

			 		$.ajax({
			 			url: "memberCheckId", 
			 			type: 'post',		
			 			data: {"member_login_id":member_login_id}, 
			 			success: function(flag){
			 				
	 		 				if(flag == 0){ // 만약 성공할시
	 		 					result = "사용 가능한 아이디입니다.";
	 		 					$("#result_checkId").html(result).css("color","blue").show();
	 		 					$("#reg_mb_password").trigger("focus");
	 		 					dup = 1;
			 					
	 		 				}else{ // 만약 실패할시
	 		 					result = "이미 사용중인 아이디입니다.";
	 		 						$("#result_checkId").html(result).css("color","red").show();
	 		 						$("#reg_mb_id").val("").trigger("focus");
	 		 						dup = 0;
	 		 				}
			 			},	
						error : function(){alert("시스템오류입니다.");}		 			
			 		})//ajax
			 	});//checkIdBtn
			 	
			 // 아이디 입력 필드의 값이 변경될 때마다 중복확인 상태 초기화
			 	$("#reg_mb_id").on("change", function(){
			 	    dup = 0;
			 	    $("#result_checkId").hide();
			 	    $("#result_checkId").text("* ID 중복 확인을 진행해주세요.").css("color","red").show();
			 	  });//reg_mb_id
			 	
			 	
			 	
		 		// 닉네임 중복확인 버튼을 눌렀을 때
			 	$("#checkNicBtn").click(function(){
			 		dup2 = 1; // 중복확인 버튼 클릭-> dup을 0에서 1로 바꾸기. span 글자 보이게 할려고 사용
			 		let member_nName = $("#reg_mb_nName").val();
			 		var nNamePattern = /^[a-zA-Z가-힣]{2,8}$/; // 닉네임
			 		if(member_nName == ""){
			 			alert("닉네임을 입력하세요.");
			 			$("#member_nName").focus();
			 			dup2 = 0;
			 			return false;
			 		}
			 		if(!nNamePattern.test(member_nName)){
					  	alert("닉네임을 한글,영문 2~8자로 입력해주세요");
					  	$("#member_nName").focus();
					  	dup2 = 0;
					  	return false;
					}

			 		$.ajax({
			 			url: "memberCheckNic", 
			 			type: 'post',		
			 			data: {"member_nName":member_nName}, 
			 			success: function(flag){
			 				
	 		 				if(flag == 0){ // 만약 성공할시
	 		 					result = "사용 가능한 닉네임입니다.";
	 		 					$("#result_checkNic").html(result).css("color","blue").show();
	 		 					$("#reg_mb_email").trigger("focus");
	 		 					dup2 = 1;
			 					
	 		 				}else{ // 만약 실패할시
	 		 					result = "이미 사용중인 닉네임입니다.";
	 		 						$("#result_checkNic").html(result).css("color","red").show();
	 		 						$("#reg_mb_nName").val("").trigger("focus");
	 		 						dup2 = 0;
	 		 				}
			 			},	
						error : function(){alert("시스템오류입니다.");}		 			
			 		})//ajax
			 	});//checkIdBtn
			 	
			 // 아이디 입력 필드의 값이 변경될 때마다 중복확인 상태 초기화
			 	$("#reg_mb_nName").on("change", function(){
			 	    dup2 = 0;
			 	    $("#result_checkNic").hide();
			 	    $("#result_checkNic").text("* 닉네임 중복 확인을 진행해주세요.").css("color","red").show();
			 	  });
			 	
		 	 });//function
		  
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
</html>
