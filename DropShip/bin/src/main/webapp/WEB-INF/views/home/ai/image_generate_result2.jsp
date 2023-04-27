<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="ko">

<c:if test="${sessionMember_id == null || sessionMember_id == ''}">
	<script>
      alert("AI 그림생성은 회원 전용 서비스입니다.");
      location.href = "../member/login";
	</script>
</c:if>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
    <meta name="HandheldFriendly" content="true">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="shortcut icon" href="/home/img/favicon.ico" />
    <title>AI 그림 생성</title>
    <link rel="stylesheet" href="../home/theme/buzinga/css/mobile_shop3816.css?ver=210618">
    <link rel="stylesheet" href="../home/js/font-awesome/css/font-awesome.min3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/swiper.min3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/aos3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/nice-select3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/js/owl.carousel3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/mobile/skin/qa/basic/style3816.css?ver=210618">
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
    <style>
    	#btn_generate {
		    width: 550px;
		    margin: 50px auto;
		    text-align: center;
		}
		#generated_work_show {
		    margin: 30px auto;
		    text-align: center;
		}
		.btnwrap button {
		  margin-right: 35px;
		}
		#overlay {
		display: none;
		  position: fixed;
		  top: 0;
		  left: 0;
		  width: 100%;
		  height: 100%;
		  background-color: rgba(0, 0, 0, 0.5);
		  z-index: 999;
		}
		#spinner {
		display: none;
		   position: absolute;
		  top: 50%;
		  left: 50%;
		  transform: translate(-50%, -50%);
		  border: 8px solid #f3f3f3; /* gray border */
		  border-top: 8px solid #3498db; /* blue border */
		  border-radius: 50%;
		  width: 60px;
		  height: 60px;
		  animation: spin 1s linear infinite; /* animation */
		}
		@keyframes spin {
		  0% { transform: rotate(0deg); }
		  100% { transform: rotate(360deg); }
		}
		#spinner-text {
		display: none; 
		  position: absolute;
		  top: 45%;
		  left: 45%;
		  transform: translate(-10%, -50%); 
		  color: white;
		  font-size: 24px;
		}
		#translateBtn, #generateBtn { margin-left: 200px; margin-top: 20px; display: flex; justify-content: center; align-items: center; width: 180px; height: 50px; }
		#translateBtn span, #generateBtn span { display: inline-block; text-align: center; }
		#description {margin-top : 30px;}
    </style>
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
                    <span class="sub-txt">DALL-E2 AI를 사용하여 그림을 직접 만들어보세요</span>
                    <h2 class="sub-tit">AI 그림생성</h2>
                </div>
            </section>

            <section id="board-write" class="board">
                <div class="maxinner">
                    <!-- ai form태그 -->
                    <form action="<c:url value='/ai/image_generate' />" name="generateFrm" method="post">
                    	<input type="hidden" name="member_nName" value="${member_nName}"/>
                    	<input type="hidden" name="work_img_url" value="${imageUri}"/>
						<div id="generated_work_show">
							<div id="description">
							    <h1>제목 : ${generate_work_name} </h1>	<!-- input으로 입력했던 제목 넣기 -->
							    <h2>작가 : ${member_nName} </h2>
							    <h2>사용한 프롬프트 : ${prompt} </h2>
							    <h2>작품 설명 : ${generate_work_content} </h2>
							    <br>
		                    </div>	
						    <img src="${imageUri}" alt="DALL-E가 그린 그림" />
						</div>

                        <div class="form-box-wrap">

                            <div class="form-box">
                                <div class="left-con">
                                    <label for="generate_work_name"><span class="f-color">*</span>제목</label>
                                </div>
                                <div class="right-con">
                                    <input type="text" name="generate_work_name" id="generate_work_name" id="qa_subject"  required 
                                    class="inp-type01 required" maxlength="255" placeholder="제목" value="${generate_work_name}">
                                </div>
                            </div>
                            
                            <div class="form-box">
                                <div class="left-con">
                                    <label for="qa_subject"><span class="f-color">*</span>프롬프트</label>
                                </div>
                                <div class="right-con">
						            <input type="text" name="prompt"  required autofocus id="qa_subject" value="${prompt}" required 
						            class="inp-type01 required" maxlength="255" placeholder="제작할 이미지를 적어주세요"/><!-- name="prompt" 바꾸면 안됨 -->
						        </div>
                            </div>

							<button type="button" id="translateBtn" class="btnset btn-type01"  accesskey="s">
                                <svg height="50" width="180">
                                    <rect height="50" width="180"></rect>
                                </svg>
                                <span>한영 번역하기</span>
                            </button>

                            <div class="form-box">
                                <div class="left-con">
                                    <label for="qa_content"><span class="f-color">*</span>작품 설명</label>
                                </div>
                                <div class="right-con">
                                    <div class="wr_content">
                                        <span class="sound_only">웹에디터 시작</span>
                                        	<textarea id="qa_content" name="generate_work_content" class="textarea-type01" 
                                        	maxlength="65536" style="width:100%;height:300px" placeholder="제작할 이미지의 내용을 입력해주세요.">${generate_work_content}</textarea>
                                        <span class="sound_only">웹 에디터 끝</span> 
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-box">
                                <div class="left-con">
                                    <label for="price"><span class="f-color">*</span>가격</label>
                                </div>
                                <div class="right-con">
                                    <input type="text" name="price" id="price"  required 
                                    class="inp-type01 required" maxlength="255" placeholder="가격 (1천만원 미만의 숫자만 입력해주세요.)" >
                                </div>
                            </div>
                            
                            <div class="form-box">
                                <div class="left-con">
                                    <label for="genre"><span class="f-color">*</span>장르</label>
                                </div>
                                <div class="right-con">
                                    <input type="text" name="genre" id="genre"  required 
                                    class="inp-type01 required" maxlength="255" placeholder="장르 (한글로 입력해주세요.)"  >
                                </div>
                            </div>
                            
                            <div class="form-box">
                                <div class="left-con">
                                    <label for="subject"><span class="f-color">*</span>주제</label>
                                </div>
                                <div class="right-con">
                                    <input type="text" name="subject" id="subject"  required 
                                    class="inp-type01 required" maxlength="255" placeholder="주제 (한글로 입력해주세요.)" >
                                </div>
                            </div>
                            
                            <div id="btn_generate">
						        <button type="button" id="generateBtn" class="btnset btn-type01"  accesskey="s">
	                                <svg height="50" width="180">
	                                    <rect height="50" width="180"></rect>
	                                </svg>
	                                <span>그림 다시 생성하기</span>
	                            </button>
	                        </div>
                        </div>
					</form>
						
					<div id="generated_work_show">
						<!-- 이미지가 존재하면  -->
	                    <c:if test="${imageUri ne null}">
						    
		                    <!-- 하단 버튼들 -->
		                    <div class="btnwrap">
		                        <button type="button" id="btn_submit" class="btnset btn-type01" accesskey="s">
		                            <svg height="50" width="180">
		                                <rect height="50" width="180"></rect>
		                            </svg>
		                            <span>바로 구매하기</span>
		                        </button>
		                        <button type="button" id="submitWorkBtn" class="btnset btn-type01" accesskey="s">
		                            <svg height="50" width="180">
		                                <rect height="50" width="180"></rect>
		                            </svg>
		                            <span>작품 등록하기</span>
		                        </button>
			                    <button type="button" id="backHomeBtn" class="btnset btn-type01" accesskey="s">
			                        <svg height="50" width="180">
			                            <rect height="50" width="180"></rect>
			                        </svg>
			                        <span>홈으로 이동하기</span>
			                    </button>
		                    </div>
						</c:if>
                    <div>
                    
                    <div id="overlay">
					  <div id="spinner"></div>
					  <div id="spinner-text">AI가 그림을 생성중입니다...</div>
					</div>
                    
                    <script>
                   		$(function() {
                   			
                   			// '생성하기 버튼' 클릭시
							$("#generateBtn").click(function() {
							    if ($("#generate_work_name").val() == "") {
							        alert("제목을 입력해주세요.");
							        return;
							    }
							    if ($("#qa_subject").val() == "") {
							        alert("프롬프트를 입력해주세요.");
							        return;
							    }
							    if (/^[a-zA-Z0-9\s,'.]+$/.test($("#qa_subject").val()) == false) {
							    	alert("프롬프트에 한글 또는 특수문자(쉼표, 마침표, 작은따옴표 제외)를 넣으실 수 없습니다.");
							        $("#qa_subject").focus();
							        return;
							    }
							    if ($("#qa_content").val() == "") {
									alert("sdfdsf : " + $("#qa_content").val()); 
							        alert("작품 설명을 입력해주세요.");
							        return;
							    }
								$("#loading-spinner").css("display", "block");	// 스피너 보이게 함
								$("#overlay").show();	// 회색 화면 보이게 함
							    $("#spinner").show();	// 스피너 보이게 함
							    $("#spinner-text").show();	// 'AI가 그림을 생성중입니다...' 보이게 함
							    generateFrm.submit(); 	// form으로 데이터 전송 submit
							});// '생성하기 버튼' 클릭시
							
							
							// '한영 번역하기' 버튼 클릭시
							$("#translateBtn").click(function(){
							    if ($("#qa_subject").val() == "") {	// 프롬프트가 비어있을 때
							        alert("번역할 데이터가 없습니다.");
							        $("#qa_subject").focus();
							        return;
							    }
							    if (/^[a-zA-Z0-9\s,'.]+$/.test($("#qa_subject").val()) == true) {	// 프롬프트가 이미 영어일 때
								        alert("프롬프트가 이미 영어입니다.");
							        return;
							    }
							    $.ajax({
					                url: 'translate',
					                type: "POST",
					                data: {'koreanInput': $("#qa_subject").val()},
					                success: function(englishOutput) {
					                	$("#qa_subject").val(englishOutput);
					                },
					                error: function() {
					                    alert("번역기 오류입니다. 다음에 이용해주세요");
					                }
					            }); //ajax
							}); // 한영 번역하기 버튼 클릭시
							
							
							// 작품 등록 버튼 클릭 시
							$('#submitWorkBtn').click(function() {
								var formData = $('form[name="generateFrm"]').serialize();
								
								if ($("#generate_work_name").val() == "" || $("#qa_content").val() == "" || $("#price").val() == "" || $("#genre").val() == "" || $("#subject").val() == "") {
							        alert("제목, 작품 설명, 가격, 장르, 주제 모두를 입력해주세요.");
							        return;
							    } else {
									if(!$.isNumeric($("#price").val())) { // 가격은 숫자로만 입력받게
								        alert("가격은 숫자로만 입력해주세요.");
								        return;
								    }
									if(parseInt($("#price").val()) >= 10000000) { // 가격 10,000,000원 이상 입력받지 못하게
								        alert("가격은 천만원 이상 넘기실 수 없습니다.");
										return;
									}
									// 장르와 주제는 한글로만 입력받고 특수문자 입력 안되게
								    if(!/^[가-힣\s]+$/.test($("#genre").val()) || !/^[가-힣\s]+$/.test($("#subject").val())) { 
								        alert("장르와 주제는 한글 단어로만 입력해주세요.");
								        return;
								    }
							    }
								
								if(confirm("생성하신 작품을 사이트에 등록하시겠습니까?")) {
									$.ajax({
						                url: 'register_ai_work',
						                type: "POST",
						                data: formData,
						                success: function(successOrFail) {
						                	if(successOrFail == 1) {
						                		alert("작품 등록이 완료됐습니다!")
						                		// 마이페이지에 '내가 생성한 그림' 페이지로 이동시키면 좋을 듯. 추후 구현예정
						                	} else {
						                		alert("서버 문제로 인하여 작품 등록이 완료되지 못했습니다..")
						                	}
						                },
						                error: function() {
						                    alert("ajax 작품 등록 실패");
						                }
						            }); //ajax
								} else {
									return;
								}
								
							}); // submitWorkBtn()
							
							
							// 뒤로가기 버튼 클릭
							$('#backHomeBtn').click(function() {
							  location.href="/"
							});

	                    	
                    	});	//jQuery 시작
                    </script>
                    
                </div>
   		 	</div>
   	   </section>
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