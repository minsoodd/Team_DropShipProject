<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>DropShip Admin - 고객</title>
    <link rel="shortcut icon" href="admin/img/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="admin/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <script>

    </script>
</head>

<body class="sb-nav-fixed">
    <!-- navBar 부분 시작 -->
    <%@ include file ="include/navBar.jsp" %>
    <!-- navBar 부분 끝 -->
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <!-- sideMenu 부분 시작 -->
            <%@ include file ="include/sideMenu.jsp" %>
            <!-- sideMenu 부분 끝 -->
        </div>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">고객 관리</h1>
                    <div class="card mb-4">
                        <div class="card-body">고객 정보를 확인하는 페이지입니다.</div>
                    </div>
                </div>
                <table class="admin_customerTable">
                    <colgroup>
                        <col width="30%">
                        <col width="70%">
                    </colgroup>
                    <tr>
                        <th>회원 고유번호</th>
                        <td>
                            ${dropshipMemberVo.id}
                        </td>
                    </tr>
                    <tr>
                        <th>회원 로그인 아이디</th>
                        <td>
                            ${dropshipMemberVo.member_login_id }
                        </td>
                    </tr>
                    <tr>
                        <th>회원 이름</th>
                        <td>
                            ${dropshipMemberVo.member_name}
                        </td>
                    </tr>
                    <tr>
                        <th>회원 이메일</th>
                        <td>
                            ${dropshipMemberVo.member_email}
                        </td>
                    </tr>
                    <tr>
                        <th>회원 전화번호</th>
                        <td>
                            ${dropshipMemberVo.member_phone}
                        </td>
                    </tr>
                    <tr>
                        <th>회원 생년월일</th>
                        <td>
                            ${dropshipMemberVo.member_birth}
                        </td>
                    </tr>
                    <tr>
                        <th>회원 우편번호</th>
                        <td>
                            ${dropshipMemberVo.member_zip}
                        </td>
                    </tr>
                    <tr>
                        <th>회원 도로명주소</th>
                        <td>
                            ${dropshipMemberVo.member_road}
                        </td>
                    </tr>
                    <tr>
                        <th>회원 상세주소</th>
                        <td>
                            ${dropshipMemberVo.member_addr}
                        </td>
                    </tr>
                    <tr>
                        <th>회원 닉네임</th>
                        <td>
                            ${dropshipMemberVo.member_nname}
                        </td>
                    </tr>
                    <tr>
                        <th>회원 가입일</th>
                        <td>
                            ${dropshipMemberVo.member_reg_date}
                        </td>
                    </tr>
                </table><br>
				<span style="color:red; margin-left:24px;">※ 하단 주문 내역을 눌러 처리 상태를 변경할 수 있습니다.</span>
                <table class="memberInOrder">
                    <tr>
                        <th colspan="4">최근 주문 내역</th>
                    </tr>
                    <tr class="memberInOrder_td">
                        <td>받는 사람</td>
                        <td>주문 날짜</td>
                        <td>주문 금액</td>
                        <td>처리 상태</td>
                    </tr>
                   	<c:if test="${empty order_list}">
		                <tr>
	                        <td colspan="4">주문 내역이 없습니다.</td>
	                    </tr>
                   	</c:if>
                   	<c:if test="${not empty order_list}">
                   		<c:forEach items="${order_list}" var="ol">
	                    	<tr onClick="location.href='admin_orderView?id='+${ol.order_detail_id}" style="cursor:pointer;">
		                        <td>${ol.delivery_name}</td>
		                        <td><fmt:formatDate value="${ol.order_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
		                        <td>${ol.final_price}</td>
		                        <c:if test="${ol.order_status == '0'}">
	                            	<td>0. 입금 확인 중</td>
	                            </c:if>
	                            <c:if test="${ol.order_status == '1'}">
	                            	<td>1. 입금 완료</td>
	                            </c:if>
	                            <c:if test="${ol.order_status == '2'}">
	                            	<td>2. 상품 준비 중</td>
	                            </c:if>
	                            <c:if test="${ol.order_status == '3'}">
	                            	<td>3. 배송 중</td>
	                            </c:if>
	                            <c:if test="${ol.order_status == '4'}">
	                            	<td>4. 배송 완료</td>
	                            </c:if>
	                            <c:if test="${ol.order_status == '5'}">
	                            	<td>5. 주문 취소</td>
	                            </c:if>
	                            <c:if test="${ol.order_status == '6'}">
	                            	<td>6. 환불 완료</td>
	                            </c:if>
		                    </tr>
                  		</c:forEach>
                    </c:if>
                </table>
                <div class="button-wrapper">
                    <a href="dropship_memberList?page=${page}"><button type="button" style="border-radius:5px;">고객 리스트</button></a>
                </div>
            </main>
            <footer class="py-4 bg-light mt-auto">
                <div class="container-fluid px-4">
                    <div class="d-flex align-items-center justify-content-between small">
                        <div class="text-muted">Copyright &copy; Team DropShip ADMIN Project</div>
                        <div></div>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="admin/js/scripts.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
    <script src="admin/js/datatables-simple-demo.js"></script>
</body>

</html>