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
<title>자유게시판</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
	href="../home/theme/buzinga/mobile/skin/qa/basic/style3816.css?ver=210618">
<link rel="stylesheet"
	href="../home/theme/buzinga/css/common3816.css?ver=210618">
<link rel="stylesheet"
	href="../home/theme/buzinga/css/sub3816.css?ver=210618">
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
        var g5_bo_table = "notice";
        var g5_sca = "";
        var g5_editor = "smarteditor2";
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
		<%@ include file="../top/header.jsp"%>
		<!-- header 부분 끝 -->
		<main id="contents">


			<script src="https://bxgs.co.kr/js/viewimageresize.js"></script>


			<section id="board-view" class="board">
				<div class="maxinner">
					<div class="board-con-tit">
						<span>자유게시판</span>
						<BR>
						
						<h2>[
							<c:if test="${map.boardVo.freeBoard_head=='0'}">
	                            <td class="deco-select">자유</td>
	                        </c:if>
	                        <c:if test="${map.boardVo.freeBoard_head=='1'}">
	                            <td class="deco-select">후기</td>
	                        </c:if>
	                        <c:if test="${map.boardVo.freeBoard_head=='2'}">
	                            <td class="deco-select">질답</td>
	                        </c:if>]
						 &nbsp;&nbsp; ${map.boardVo.freeBoard_title}</h2>
						<tr>
							<td class="td-date td-mb-hide"><fmt:formatDate value="${map.boardVo.freeBoard_date}" pattern="yyyy.MM.dd"/></td>
						</tr>
					</div>
					<div class="board-btnwrap">
						<ul>
							<li><button type="button" class="btnset btn-board-opt" onclick="updateBtn()">수정</button></li>
							<li><button type="button" class="btnset btn-board-opt" onclick="deleteBtn()">삭제</button></li>
						</ul>
					</div>
					<div class="board-con-wrap">
						<h3 class="hide">본문</h3>

						<div class="board-con">${map.boardVo.freeBoard_content}</div>
					</div>
					<div class="board-con-move">
						<ul>
						 
						
						<c:if test="${map.preBoardVo.getId() != null}">
                       <li class="prev">
                           <a href="board_view?id=${map.preBoardVo.getId()}" class="link-none">
                               <span style="cursor:pointer;">PREV</span>
                               <p style="cursor:pointer;">${map.preBoardVo.getFreeBoard_title()}</p>
                           </a>
                       </li>
                     </c:if>
                     <c:if test="${map.preBoardVo.getId() == null}">   
                       <li class="prev">
                           <a class="link-none">
                               <span style="color:#A0A0A0;">PREV</span>
                               <p style="color:#A0A0A0;">이전글이 없습니다.</p>
                           </a>
                       </li>
                     </c:if>  
                            
                            <li class="mid" ><a href="board??page=${page}"><span class="hide">목록으로</span></a></li>
                            
                            <c:if test="${map.nextBoardVo.getId() != null}">
                       <li class="next">
                           <a href="board_view?id=${map.nextBoardVo.getId()}" class="link-none">
                               <span style="cursor:pointer;">NEXT</span>
                               <p style="cursor:pointer;">${map.nextBoardVo.getFreeBoard_title()}</p>
                           </a>
                       </li>
                     </c:if>
                     <c:if test="${map.nextBoardVo.getId() == null}">   
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
			</section>

			<script>
				/* $(function() {
				    $("a.view_image").click(function() {
				        window.open(this.href, "large_image", "location=yes,links=no,toolbar=no,top=10,left=10,width=10,height=10,resizable=yes,scrollbars=no,status=no");
				        return false;
				    });
				
				    // 이미지 리사이즈
				    $("#bo_v_atc").viewimageresize();
				    
				    $(document).mouseup(function (e) {
				        var container = $("#bo_v_opt");
				        if (!container.is(e.target) && container.has(e.target).length === 0){
				        container.css("display","none");
				        }
				    });
				    
				    //게시글 옵션
				    $(".bo_v_opt").click(function(){
				        $("#bo_v_opt").fadeIn();
				    });
				}); */
				 function deleteBtn(){
					if(${sessionMember_id != map.boardVo.member_id}){
			            alert("타인의 계정은 접근할 수 없습니다!");
			            location.href = "board";
			            return false;
					}
					if(confirm("게시글을 삭제하시겠습니까?")) 
						location.href="board_delete?id=${map.boardVo.id}&page=${page}";
				} // deleteBtn()
				
				function updateBtn(){
					if(${sessionMember_id != map.boardVo.member_id}){
			            alert("타인의 계정은 접근할 수 없습니다!");
			            location.href = "board";
			            return false;
					}
					if(confirm("게시글을 수정하시겠습니까?")) 
						location.href="board_update?id=${map.boardVo.id}&page=${page}";
				}//update Btn()
			</script>
		</main>
		<!-- header 부분 시작 -->
		<%@ include file="../top/footer.jsp"%>
		<!-- header 부분 끝 -->
		<div id="gotop">
			<a href="javascript:;"><span class="hide">맨위로가기</span></a>
		</div>
	</div>
	<script src="..home/js/sns.js"></script>
	<script src="..home/theme/buzinga/js/css3-animate-it.js"></script>
	<link rel="stylesheet" href="../home/theme/buzinga/css/animate.css">
	<script src="..home/theme/buzinga/js/base.js"></script>
	<script src="..home/theme/buzinga/js/sub.js"></script>

</body>

</html>