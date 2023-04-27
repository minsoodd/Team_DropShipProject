<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="ko">

<c:if test="${sessionMember_id == null}">
	<script>
      alert("로그인 후 사용 해주시기 바랍니다");
      location.href = "login";
      
      return false;
	</script>
</c:if>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
    <meta name="HandheldFriendly" content="true">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="shortcut icon" href="/home/img/favicon.ico" />
    <title>자유게시판 - 글쓰기</title>
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
                    <span class="sub-txt">DropShip 쇼핑몰에 궁금한 내용을 남겨주세요.</span>
                    <h2 class="sub-tit">글쓰기</h2>
                </div>
            </section>


            <section id="board-write" class="board">
                <div class="maxinner">
                    <!-- 게시물 작성/수정 시작 { -->
                    <form name="write" id="write" action="doBoardWrite"  method="post" enctype="multipart/form-data" autocomplete="off">
                        <input type="hidden" name="member_id" value="${sessionMember_id}">
                        <input type="hidden" name="w" value="">
                        <input type="hidden" name="qa_id" value="0">
                        <input type="hidden" name="sca" value="">
                        <input type="hidden" name="stx" value="">
                        <input type="hidden" name="page" value="">
                        <input type="hidden" name="token" value="a65199a8af1a23701cf798a89157a1f1">
                        <input type="hidden" name="qa_html" value="0">

                        <div class="form-box-wrap">

                            <div class="form-box">
                                <div class="left-con">
                                    <label for="qa_subject"><span class="f-color">*</span>제목</label>
                                </div>
                                <div class="right-con">
                                    <input type="text" name="freeBoard_title" id="freeBoard_title" id="qa_subject" required class="inp-type01 required" maxlength="255" placeholder="제목">
                                </div>
                            </div>
                            
                            <div class="form-box">
                                <div class="left-con">
                                    <label for="qa_subject"><span class="f-color">*</span>글머리</label>
                                </div>
                                <div class="right-con">
                                    <select name="freeBoard_head" id="freeBoard_head" class="deco-select">
                                         <option name="freeBoard_head" id="freeBoard_head" value="0" >자유</option>
                                         <option name="freeBoard_head" id="freeBoard_head" value="1">후기</option>
                                         <option name="freeBoard_head" id="freeBoard_head" value="2">질답</option>
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
                                        <textarea id="qa_content" id="freeBoard_content" name="freeBoard_content" class="textarea-type01" maxlength="65536" style="width:100%;height:300px" placeholder="내용을 입력해주세요."></textarea>
                                        <span class="sound_only">웹 에디터 끝</span> </div>
                                </div>
                            </div>

                            <div class="form-box write-file">
                                <div class="left-con">
                                    첨부파일
                                </div>
                                <div class="right-con">
                                    <div class="file-upload">
                                        <div class="file-box">
                                            <div class="file-name" id="bf_file1">
                                                <p></p>
                                            </div>
                                            <div class="file-btn">
                                                <label for="file"><span class="hide">파일</span>찾아보기</label>
                                                <input type="file" name="file" id="freeBoard_file_name" title="파일첨부 1 :  용량 5,242,880 바이트 이하만 업로드 가능" class="inp-file uploadBtn">
                                            </div>
                                        </div>

                                    </div>
                                    <p class="form-info">* 첨부파일의 용량은 최대 5MB 를 넘을 수 없으며, 등록 가능한 확장자명은 jpg, gif, pdf 입니다.</p>
                                </div>
                            </div>
                        </div>
                        <div class="btnwrap">
                            <button type="button" id="btn_submit" class="btnset btn-type01" onclick="writeBtn()" accesskey="s">
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
	    function writeBtn(){
	    	if($("#freeBoard_title").val()==""){
	    		alert("제목을 입력하셔야 등록이 가능합니다.");
	    		$("#freeboard_title").focus();
	    		return;
	    	}
	    	
	    	if(confirm("게시글을 등록하시겠습니까?")){
	    		write.submit();
	    	} 
	    }
    
    	/* function html_auto_br(obj) {
            if (obj.checked) {
                result = confirm("자동 줄바꿈을 하시겠습니까?\n\n자동 줄바꿈은 게시물 내용중 줄바뀐 곳을<br>태그로 변환하는 기능입니다.");
                if (result)
                    obj.value = "2";
                else
                    obj.value = "1";
            } else
                obj.value = "";
        }

        function fwrite_submit(f) {
            var qa_content_editor = document.getElementById('qa_content');
            if (!qa_content_editor.value) {
                alert("내용을 입력해 주십시오.");
                qa_content_editor.focus();
                return false;
            }

            var subject = "";
            var content = "";
            $.ajax({
                url: g5_bbs_url + "/ajax.filter.php",
                type: "POST",
                data: {
                    "subject": f.qa_subject.value,
                    "content": f.qa_content.value
                },
                dataType: "json",
                async: false,
                cache: false,
                success: function(data, textStatus) {
                    subject = data.subject;
                    content = data.content;
                }
            });

            if (subject) {
                alert("제목에 금지단어('" + subject + "')가 포함되어있습니다");
                f.qa_subject.focus();
                return false;
            }

            if (content) {
                alert("내용에 금지단어('" + content + "')가 포함되어있습니다");
                if (typeof(ed_qa_content) != "undefined")
                    ed_qa_content.returnFalse();
                else
                    f.qa_content.focus();
                return false;
            }


            $.ajax({
                type: "POST",
                url: g5_bbs_url + "/ajax.write.token.php",
                data: {
                    'token_case': 'qa_write'
                },
                cache: false,
                async: false,
                dataType: "json",
                success: function(data) {
                    if (typeof data.token !== "undefined") {
                        token = data.token;

                        if (typeof f.token === "undefined")
                            $(f).prepend('<input type="hidden" name="token" value="">');

                        $(f).find("input[name=token]").val(token);
                    }
                }
            });

            document.getElementById("btn_submit").disabled = "disabled";

            return true;
        }
        var uploadFile = $('.uploadBtn');
        uploadFile.on('change', function() {
            if (window.FileReader) {
                var filename = $(this)[0].files[0].name;
            } else {
                var filename = $(this).val().split('/').pop().split('\\').pop();
            }
            $(this).parents('.file-upload').find('.file-name p').text(filename);
        }); */
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