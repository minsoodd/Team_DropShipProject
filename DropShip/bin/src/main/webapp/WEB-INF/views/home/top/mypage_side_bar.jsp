<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="mypage-nav">
	    <h2><a href="../myshop/mypage">MYPAGE</a></h2>
	    <div class="mypage-nav-depth">
	        <h3>쇼핑정보</h3>
	        <ul>
	            <li><a href="../myshop/orderinquiry">주문목록/배송조회</a></li>
	            <li><a href="../myshop/cart">장바구니</a></li>
	            <li><a href="../myshop/my_wishlist?member_id=${sessionMember_id}">찜리스트</a></li>
	        </ul>
	    </div>
	    
	    <div class="mypage-nav-depth">
	        <h3>AI</h3>
	        <ul>
	            <li><a href="../myshop/my_ai_work">내가 생성한 그림</a></li>
	        </ul>
	    </div>
	    
	    <div class="mypage-nav-depth">
	        <h3>혜택관리</h3>
	        <ul>
	            <li ><a href="../myshop/my_coupon">쿠폰</a></li>
	            <li ><a href="../myshop/my_mileage">마일리지</a></li>
	        </ul>
	    </div>
	    
	    <div class="mypage-nav-depth">
	        <h3>회원정보</h3>
	        <ul>
	            <li ><a href="../member/register_update_pwcheck">회원정보 변경</a></li>
	            <li ><a href="../member/register_delete">회원탈퇴</a></li>
	        </ul>
	    </div>
	</div>