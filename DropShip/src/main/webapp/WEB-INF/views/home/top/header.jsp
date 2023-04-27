<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header id="header">
    <h1 class="logo">
        <a href="/"><span class="hide">DropShip</span></a>
    </h1>

    <div class="sitemap-wrap">
        <a href="javascript:;" class="btn-sitemap-open"><span class="hide">전체 사이트맵 열기</span></a>
        <div class="sitemap">
            <div class="inner">
                <h2 class="sitemap-logo"><a href="/"><span class="hide">DropShip</span></a></h2>
                <nav class="all-menu-wrap">
                    <h2 class="hide">DropShip 사이트맵</span></h2>
                    <ul class="all-menu">
                        <li>
                            <a href="shop/picture_list">Product</a>
                            <ul class="depth">
                                <li><a href="../shop/best_list">베스트 작품</a></li>
                                <li><a href="../shop/painting_list">그림 작품</a></li>
                                <li><a href="../shop/artist_list">작가별</a></li>
                                <li><a href="../ai/image_generate">AI 그림생성</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="sub/about">About DropShip</a>
                            <ul class="depth">
                                <li><a href="../bxabout/about">회사소개</a></li>
                                <li><a href="javascript:alert('준비중입니다.');">갤러리</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="../bbs/board8497?bo_table=notice">Community</a>
                            <ul class="depth">
                                <li><a href="../bbs/notice">공지사항</a></li>
                                <li><a href="../event/all_event">이벤트</a></li>
                                <li><a href="../bbs/board">자유게시판</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="../bbs/faq">Service</a>
                            <ul class="depth">
                                <li><a href="../bbs/support">제휴협찬문의</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                <nav class="info-menu-wrap">
                    <h2 class="hide">로그인 관련 메뉴</h2>
                    <ul class="info-menu">
                    	<c:if test="${sessionMember_login_id == null}">
	                        <li><a href="../member/login">로그인</a></li>
                    	</c:if>
                    	<c:if test="${sessionMember_login_id != null }">
	                        <li><a href="../member/logout">로그아웃</a></li>
                    	</c:if>
						<c:if test="${sessionMember_login_id == null }">
	                        <li><a href="../bbs/register_intro">회원가입</a></li>	<!-- 이거 안됨 해결해야ㅑㅑㅑㅑㅑㅑㅑㅑㅑㅑㅑㅑㅑㅑㅑㅑ -->
						</c:if>
						<c:if test="${sessionMember_login_id != null }">
                        	<li><a href="../myshop/mypage?member_id=${sessionMember_id}">마이페이지</a></li>
						</c:if>
                    </ul>
                </nav>
                <a href="javascript:;" class="btn-sitemap-close"><span class="hide">전체 사이트맵 닫기</span></a>
            </div>
        </div>
    </div>

    <nav class="gnb-wrap">
        <h2 class="hide">대메뉴</h2>
        <ul class="gnb">
            <li><a href="../shop/best_list">베스트 작품</a></li>
            <li><a href="../shop/painting_list">그림 작품</a></li>
            <li><a href="../shop/artist_list">작가별</a></li>
            <li><a href="../ai/image_generate">AI 그림생성</a></li>
        </ul>
    </nav>

    <nav class="gnb-info-wrap">
        <h2 class="hide">마이메뉴</h2>
        <ul class="gnb-info">

            <c:if test="${sessionMember_login_id == null }">
                <li><a href="../member/login">로그인</a></li>
            </c:if>
            <c:if test="${sessionMember_login_id != null }">
                <li><a href="../member/logout">로그아웃</a></li>
            </c:if>
            <c:if test="${sessionMember_login_id == null}">
                <li><a href="../member/register_intro">회원가입</a></li>
            </c:if>
            <c:if test="${sessionMember_login_id != null }">
                <li><a href="../myshop/mypage?member_id=${sessionMember_id}">마이페이지</a></li>
            </c:if>
            <c:if test="${sessionMember_login_id == null}">
	            <li><a href="../member/login">주문조회</a></li>
            </c:if>
            <c:if test="${sessionMember_login_id != null}">
	            <li><a href="../myshop/orderinquiry">주문조회</a></li>
            </c:if>
            <c:if test="${sessionMember_login_id != null}">
            <li><a href="../myshop/cart">장바구니<span class="basket-num">${sessionCartCount}</span></a></li>
            </c:if>
            <li><a href="../bbs/board">자유게시판</a></li>
        </ul>
    </nav>

    <!-- 검색부분 -->
    <div class="all-search-wrap">
        <a href="javascript:;" class="btn-all-search-open"><span class="hide">검색창 열기</span></a>
        <div class="all-search">
            <fieldset id="hd_sch">
                <legend>쇼핑몰 전체검색</legend>
                <div class="sch-word-box">
                
                
                
<!--                     <form name="searchHeader" action="search" id="sch_str" method="get"> -->
<!--                         <label for="sch_str" class="sound_only">검색어<strong class="sound_only"> 필수</strong></label> -->
<!--                         <input type="text" name="searchWord" value="" id="sch_str" required placeholder="Search..." autocomplete="off"> -->
<!--                         <button type="submit" id="sch_submit" value="검색"><span class="sound_only">검색</span></button> -->
<!--                     </form> -->



                    <form name="search" action="../bxabout/search" id="search" method="post">
                        <label for="sch_str" class="sound_only">검색어<strong class="sound_only"> 필수</strong></label>
                        <input type="text" name="searchWord" id="sch_str" required placeholder="Search..." autocomplete="off">
                        <button type="submit" id="sch_submit" value="검색"><span class="sound_only">검색</span></button>
                    </form>
                
                
                	<!-- <form action="searchNotice" name="searchNotice" id="searchNotice" method="get">
                         <label for="sfl" class="sound_only">검색대상</label>
                         <div class="sch-box">
                             <input type="text" name="searchWord" id="searchWord"  placeholder="검색어를 입력해주세요." required id="stx" class="inp-type01" size="15" minlength="1" maxlength="20">
                             <button type="button" id="searchBtn" class="sch-btn" />
                         </div>
                     </form> -->
					
                
                
                
                
                
                
                
                
                
                </div>
                <div class="sch-word-wrap">
                    <div class="sch-recent-word">
                        <h2>최근검색어</h2>
                        <ul>
                            <!-- <li class="sch-word-empty">최근검색어가 없습니다.</li>-->
                            <li>
                                <a href="#" class="recent-word">#클로드 모네</a>
                                <span class="recent-date">2022.03.14</span>
                                <button type="button" class="recent-delete"><span class="hide">삭제</span></button>
                            </li>
                            <li>
                                <a href="#" class="recent-word">#빈센트 반 고흐</a>
                                <span class="recent-date">2022.03.14</span>
                                <button type="button" class="recent-delete"><span class="hide">삭제</span></button>
                            </li>
                            <li>
                                <a href="#" class="recent-word">#정원의 여인들</a>
                                <span class="recent-date">2022.03.14</span>
                                <button type="button" class="recent-delete"><span class="hide">삭제</span></button>
                            </li>
                        </ul>
                    </div>
                    <div class="sch-popular-word">
                        <h2>인기검색어</h2>
                        <ul>
                            <!-- <li class="sch-word-empty">인기검색어가 없습니다.</li>-->
                            <li><a href="#">1. 클로드 모네</a></li>
                            <li><a href="#">2. 정원의 여인들</a></li>
                            <li><a href="#">3. 빈센트 반 고흐</a></li>
                            <li><a href="#">4. 해바라기</a></li>
                            <li><a href="#">5. 폴 고갱</a></li>
                            <li><a href="#">6. 생 라자르 역</a></li>
                            <li><a href="#">7. 황색의 그리스도</a></li>
                            <li><a href="#">8. 파블로 피카소</a></li>
                            <li><a href="#">9. 아비뇽의 아가씨들</a></li>
                        </ul>
                    </div>
                </div>
                <a href="javascript:;" class="btn-all-search-close"><span class="hide">검색창 닫기</span></a>
            </fieldset>
        </div>

       <script>
            function search_submit(f) {
                if (f.q.value.length < 2) {
                    alert("검색어는 두글자 이상 입력하십시오.");
                    f.q.select();
                    f.q.focus();
                    return false;
                }
                return true;
            }
        </script>
    </div>
</header>