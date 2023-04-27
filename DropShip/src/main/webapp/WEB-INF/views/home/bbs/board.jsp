<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="ko">

<!-- Mirrored from bxgs.co.kr/bbs/qalist.php by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:03:37 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<meta name="HandheldFriendly" content="true">
<meta name="format-detection" content="telephone=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="shortcut icon" href="../home/img/favicon.ico" />
<title>자유게시판</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="../home/theme/buzinga/css/mobile_shop3816.css?ver=210618">
<link rel="stylesheet" href="../home/js/font-awesome/css/font-awesome.min3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/swiper.min3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/aos3816.css">
<link rel="stylesheet" href="../home/theme/buzinga/css/nice-select3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/js/owl.carousel3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/mobile/skin/qa/basic/style3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/common3816.css?ver=210618">
<link rel="stylesheet" href="../home/theme/buzinga/css/sub3816.css?ver=210618">
<link rel="stylesheet" href="../admin/css/styles_page.css">
<link rel="stylesheet"
	href="../../use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<script src="../home/js/jquery-1.12.4.min3816.js?ver=210618"></script>
<script src="../home/js/jquery-migrate-1.4.1.min3816.js?ver=210618"></script>
<script src="../home/js/common3816.js?ver=210618"></script>
<script src="../home/js/wrest3816.js?ver=210618"></script>
<script src="../home/js/placeholders.min3816.js?ver=210618"></script>
<script src="../home/theme/buzinga/js/swiper.min3816.js?ver=210618"></script>
<script src="../home/theme/buzinga/js/gsap-3.6.0.min3816.js?ver=210618"></script>
<script src="../home/theme/buzinga/js/aos3816.js?ver=210618"></script>
<script
	src="../home/theme/buzinga/js/jquery.nice-select3816.js?ver=210618"></script>
<script src="../home/theme/buzinga/js/jquery.sidr.min3816.js?ver=210618"></script>
<script src="../home/js/modernizr.custom.701113816.js?ver=210618"></script>
<script
	src="../home/theme/buzinga/js/owl.carousel.min3816.js?ver=210618"></script>
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

			<section class="sub-tit-wrap" data-aos="fade-up">
				<div class="maxinner">
					<span class="sub-txt">DropShip에서 다양한 이야기를 나누는 공간입니다.</span>
					<h2 class="sub-tit">자유게시판</h2>
				</div>
			</section>



			<!-- 게시판 목록 시작 -->
			<section id="board-list" class="board">
				<div class="maxinner">

					<div class="grid-list-opt">
						<div class="grid-opt-left">
							총 <strong class="f-color">${map.listCount}</strong>건
						</div>
					</div>

					<div class="grid-board-list">
						<form name="fqalist" id="fqalist"
							action="https://bxgs.co.kr/bbs/qadelete.php"
							onsubmit="return fqalist_submit(this);" method="post">
							<input type="hidden" name="stx" value=""> <input
								type="hidden" name="sca" value=""> <input type="hidden"
								name="page" value="1"> <input type="hidden" name="token"
								value="">

							<div class="tbstyle-board">
								<table>
									<caption>게시판 리스트</caption>
									<colgroup>
										<col class="col2" width="10%">
										<col class="col3" width="10%">
										<col class="col4 td-mb-hide" width="50%">
										<col class="col5 td-mb-hide" width="10%">
										<col class="col6" width="10%">
										<col class="col6" width="10%">
									</colgroup>
									<tbody>
										<tr>
											<td>글머리</td>
											<td>번호</td>
											<td>제목</td>
											<td>아이디</td>
											<td>조회수</td>
											<td>날짜</td>
										</tr>
										<c:forEach items="${map.list}" var="bvo">
											<c:if test="${bvo.freeBoard_ban==0}">
												<tr onClick="location.href='board_view?id=${bvo.id}&page=${map.page}'" style="cursor:pointer;">
													<c:if test="${bvo.freeBoard_head == 0}">
														<td class="td-num">자유</td>
													</c:if>
													<c:if test="${bvo.freeBoard_head == 1}">
														<td class="td-num">후기</td>
													</c:if>
													<c:if test="${bvo.freeBoard_head == 2}">
														<td class="td-num">질답</td>
													</c:if>
													<td class="td-num">${bvo.id}</td>
													<c:if test="${bvo.freeBoard_file_name != null }">
														<td class="td-subject">
															<a href="board_view?id=${bvo.id}&page=${map.page}">
																<c:forEach begin="1" end="${bvo.freeBoard_indent}">
															┕
														</c:forEach>${bvo.freeBoard_title} 💾
															</a>
														</td>
					                            	</c:if>	
													<c:if test="${bvo.freeBoard_file_name == null }">
														<td class="td-subject">
															<a href="board_view?id=${bvo.id}&page=${map.page}">
																<c:forEach begin="1" end="${bvo.freeBoard_indent}">
															┕
														</c:forEach>${bvo.freeBoard_title}
															</a>
														</td>
					                            	</c:if>
													
													<c:if test="${bvo.member_id==null}">
														<td class="td-name td-mb-hide">${bvo.admin_id}</td>
													</c:if>
													<c:if test="${bvo.member_id!=null}">
														<td class="td-name td-mb-hide">${bvo.member_name}</td>
													</c:if>
													<td class="td-name td-mb-hide">${bvo.freeBoard_hit}</td>
													<td class="td-date td-mb-hide"><fmt:formatDate
															value="${bvo.freeBoard_date}" pattern="yyyy.MM.dd" />
													</td>
												</tr>
											</c:if>
											<c:if test="${bvo.freeBoard_ban==1}">
												<td class="td-subject" colspan="6" style="text-align:center; color:red;">관리자에 의해 게시글을 볼 수 없습니다</td>
											</c:if>
										</c:forEach>
										<c:if test="${map.result == 'fail' or map.list.size()==0}">
											<tr>
												<td colspan="6">데이터가 없습니다.</td>
											</tr>
										</c:if>
									</tbody>
								</table>
							</div>
							<!-- 페이지 -->
							<!-- 하단 넘버링 부분!!! -->
							<nav class="pg_wrap">
								<!-- 첫 페이지로 이동  -->
								<c:if test="${map.page == 1}"><span  class=" pg_page pg_start"></span></c:if>
								<c:if test="${map.page != 1}">
									<a href="board?page=1"><span  class=" pg_page pg_start"></span></a>
								</c:if>
								<!-- 이전 페이지로 이동  -->
								<c:if test="${map.page > 1}">
									<a href="board?page=${map.page-1}"><span class="pg_page pg_prev"></span></a>
								</c:if>
								<c:if test="${map.page==1}">
									<span class="pg_page pg_prev"></span>
								</c:if>
								<!-- 하단 넘버링 반복문 -->
								<c:forEach begin="${map.startpage}" end="${map.endpage}" step="1" var="num">
									<c:if test="${map.page == num}">
										<span class="pg_current">${num}</span>
									</c:if>
									<c:if test="${map.page != num}">
										<a href="board?page=${num}">
											<span class="pg_page">${num}</span>
										</a>
									</c:if>
								</c:forEach>
								<!-- 다음 페이지로 이동 -->
								<c:if test="${map.page == map.maxpage}"><span class="pg_page pg_next"></span></c:if>
								<c:if test="${map.page < map.maxpage}">
									<a href="board?page=${map.page+1}">
										<span class="pg_page pg_next"></span>
									</a>
								</c:if>
								<!-- 끝 페이지로 이동 -->
								<c:if test="${map.page != map.maxpage}">
									<a href="board?page=${map.maxpage}">
										<span class="pg_page pg_end"></span>
									</a>
								</c:if>
								<c:if test="${map.page == map.maxpage}"><span class="pg_page pg_end"></span></c:if>
							</nav>
							<div class="board-btnwrap">
								<ul>
									<c:if test="${sessionMember_id != null }">
										<li><a href="board_write" class="btnset btn-type01">
												<svg height="40" width="130">
                                                <rect height="40"
														width="130"></rect>
                                            </svg> <span>글쓰기</span>
										</a></li>
									</c:if>
								</ul>
							</div>
						</form>
					</div>
				</div>
			</section>




		</main>

		<!-- footer 부분 시작 -->
		<%@ include file="../top/footer.jsp"%>
		<!-- footer 부분 끝 -->

		<div id="gotop">
			<a href="javascript:;"><span class="hide">맨위로가기</span></a>
		</div>
	</div>


	<script src="../home/js/sns.js"></script>
	<script src="../home/theme/buzinga/js/css3-animate-it.js"></script>
	<link rel="stylesheet" href="../home/theme/buzinga/css/animate.css">
	<script src="../home/theme/buzinga/js/base.js"></script>
	<script src="../home/theme/buzinga/js/sub.js"></script>

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

<!-- Mirrored from bxgs.co.kr/bbs/qalist.php by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:03:38 GMT -->

</html>