<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<div class="mypage-info">
    <div class="mypage-info-txt">
        <div class="img"><img src="/home/img/sub/mypage-info.png" alt=""></div>
        <div class="txt">
            <p><strong>${sessionMember_nName}</strong>님, 안녕하세요!</p>
            <p>고객님의 회원등급은<span class="f-color">개인회원 </span>입니다.</p>
        </div>
    </div>
    <div class="mypage-info-mile">
        <a href="../myshop/my_coupon" class="my-coupon">
            <h3>사용가능 쿠폰</h3>
            <span class="f-color"><strong>0</strong>장</span>
        </a>
        <a href="../myshop/my_mileage" class="my-point">
            <h3>적립금</h3>
            <span class="f-color"><strong>0P</strong></span>
        </a>
    </div>
</div>