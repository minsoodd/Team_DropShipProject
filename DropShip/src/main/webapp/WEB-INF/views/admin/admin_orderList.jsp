<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="Content-Language" content="ko">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>DropShip Admin - 작품 주문 관리</title>
    <link rel="shortcut icon" href="admin/img/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="admin/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    
    <style>
    	.f-color { color:#c9ab81 !important; }
  		.mypage-tit { margin:0 30px; }
		.mypage-tit h3 { display:inline-block; font-size:20px; color:#333333; font-family: 'Noto Serif KR', 'EB Garamond', 'Noto Sans KR', 'Malgun Gothic', dotum, sans-serif; line-height:5px; }
		.mypage-tit p { display:inline-block; margin-left:15px; font-size:16px; color:#666666; line-height:26px; }
    	.mypage-progress ul { width:1200px; display:flex; justify-content:center; margin-left:24px; padding:5px 5px; border:1px solid #ddd; }
		.mypage-progress ul li { flex:1; position:relative; padding:0 2%; font-size:16px; color:#333; text-align:center; line-height:26px; list-style: none;}
		.mypage-progress ul li::after { content:""; position:absolute; right:-5.5px; top:20px; width:11px; height:19px; background:url(../home/img/bu/bu-mypage-progress.png) no-repeat center; }
		.mypage-progress ul li:last-child::after { display:none; }
		.mypage-progress ul li span { display:flex; justify-content:center; align-items:center; margin:0 auto 5px; width:60px; height:60px; background:#f8f8f8; border-radius:50%; font-size:18px; color:#666666; font-family: 'EB Garamond', 'Noto Sans KR', 'Noto Serif KR', 'Malgun Gothic', dotum, sans-serif; }
    </style>
    
    
    
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
                    <h1 class="mt-4">주문 현황</h1>
                    <div class="card mb-4">
                        <div class="card-body">DropShip 고객 주문 현황 확인 페이지입니다. <span style="color:blue;">입금 완료된 주문</span>을 눌러 배송처리를 진행해 주세요.</div>
                    </div>
                </div>
                
                <div class="mypage-progress">
                     <div class="mypage-tit">
                         <h3>진행 중인 주문: 총 <strong style="color:blue;">${map.listCount} 건</strong>의 주문이 있습니다.</h3>
                     </div>
                     <ul>
                         <c:if test="${orderStatusCountMap['0'] != null}">
                             <li><span class="f-color">
                                     <c:out value="${orderStatusCountMap['0']}" /></span>입금 확인 중</li>
                         </c:if>
                         <c:if test="${orderStatusCountMap['0'] == null}">
                             <li><span class="">0</span>입금 확인 중</li>
                         </c:if>
                         <c:if test="${orderStatusCountMap['1'] != null}">
                             <li><span class="f-color">${orderStatusCountMap['1']}</span>입금 완료</li>
                         </c:if>
                         <c:if test="${orderStatusCountMap['1'] == null}">
                             <li><span class="">0</span>입금 완료</li>
                         </c:if>
                         <c:if test="${orderStatusCountMap['2'] != null}">
                             <li><span class="f-color">${orderStatusCountMap['2']}</span>상품 준비 중</li><!-- 갯수 있을땐 class="f-color" -->
                         </c:if>
                         <c:if test="${orderStatusCountMap['2'] == null}">
                             <li><span class="">0</span>상품 준비 중</li><!-- 갯수 있을땐 class="f-color" -->
                         </c:if>
                         <c:if test="${orderStatusCountMap['3'] != null}">
                             <li><span class="f-color">${orderStatusCountMap['3']}</span>배송 중</li>
                         </c:if>
                         <c:if test="${orderStatusCountMap['3'] == null}">
                             <li><span class="">0</span>배송 중</li>
                         </c:if>
                         <c:if test="${orderStatusCountMap['4'] != null}">
                             <li><span class="f-color">${orderStatusCountMap['4']}</span>배송 완료</li>
                         </c:if>
                         <c:if test="${orderStatusCountMap['4'] == null}">
                             <li><span class="">0</span>배송 완료</li>
                         </c:if>
                         <c:if test="${orderStatusCountMap['5'] != null}">
                             <li><span class="f-color">${orderStatusCountMap['5']}</span>주문 취소</li>
                         </c:if>
                         <c:if test="${orderStatusCountMap['5'] == null}">
                             <li><span class="">0</span>주문 취소</li>
                         </c:if>
                         <c:if test="${orderStatusCountMap['6'] != null}">
                             <li><span class="f-color">${orderStatusCountMap['6']}</span>환불 완료</li>
                         </c:if>
                         <c:if test="${orderStatusCountMap['6'] == null}">
                             <li><span class="">0</span>환불 완료</li>
                         </c:if>
                     </ul>
                 </div>
                 
                <span style="padding-left:24px;">※ 최근 주문날짜 + 상태에 따라 정렬됩니다. || 주문을 선택해서 <span style="color:red;">상태값을 변경</span>할 수 있습니다.</span>
                <div class="select-container" style="width: 1200px; margin-left:24px; text-align: right;">
				    <select id="view-options" name="order_status" class="sort-list">
					    <option value="0">입금 확인 중</option>
					    <option value="1">입금 완료</option>
					    <option value="2">상품 준비 중</option>
					    <option value="3">배송 중</option>
					    <option value="4">배송 완료</option>
					    <option value="5">주문 취소</option>
					    <option value="6">환불 완료</option>
					</select>
			    </div>
			    <script>
			    $(function() {
			        $('#view-options').change(function() {
			            var option = $(this).val(); // 선택된 옵션의 값
			            $.ajax({
			                type: "POST",
			                url: "/viewData",
			                data: { option: option }, // 서버에 보낼 데이터
			                success: function(data) {
			                    console.log(data);

			                    // HTML 템플릿 생성 및 출력
			                    var html = "";
			                    data.forEach(function(data) {
			                        html += "<tr onClick=\"location.href='admin_orderView?id=" + data.id + "&page=" + data.page + "'\" style=\"cursor:pointer;\">";
			                        html += "<td>" + data.order_member_id + "</td>";
			                        html += "<td>" + data.member_name + "</td>";
			                        html += "<td>" + data.work_name + " || 작품ID: " + data.work_id + "</td>";
			                        html += "<td>" + data.final_price + " 원</td>";
			                        html += "<td>" + data.order_date + "</td>";

			                        switch (data.order_status.toString()) {
			                        case "0":
			                            html += "<td>0. 입금 확인 중</td>";
			                            break;
			                        case "1":
			                            html += "<td>1. 입금 완료</td>";
			                            break;
			                        case "2":
			                            html += "<td>2. 상품 준비 중</td>";
			                            break;
			                        case "3":
			                            html += "<td>3. 배송 중</td>";
			                            break;
			                        case "4":
			                            html += "<td>4. 배송 완료</td>";
			                            break;
			                        case "5":
			                            html += "<td>5. 주문 취소</td>";
			                            break;
			                        case "6":
			                            html += "<td>6. 환불 완료</td>";
			                            break;
			                        default:
			                            html += "<td>" + data.order_status + "</td>";
			                            break;
			                    	}

			                        html += "</tr>";
			                    });
			                    $("#tbody").empty().append(html);
			                  },
			                  error: function() {
			                    console.log("오류 발생!");
			                  }
			                });
			              });
			            });

			    </script>
                <div class="admin_orderListDiv">
                    <table class="admin_orderListTable">
                        <colgroup>
                            <col width="10%">
                            <col width="10%">
                            <col width="45%">
                            <col width="10%">
                            <col width="15%">
                            <col width="10%">
                        </colgroup>
                        <tr id="admin_orderListTableTr" style="background-color: #212529; color: #fff;">
                            <th>주문 고유번호</th>
                            <th>주문자명</th>
                            <th>주문 상품</th>
                            <th>결제 가격</th>
                            <th>주문 날짜</th>
                            <th>주문 상태</th>
                        </tr>
                        <!-- 반복문 forEach -->
                        <tbody id="tbody">
                        <c:forEach items="${map.list}" var="aol">
	                        <tr onClick="location.href='admin_orderView?id=${aol.id}&page=${map.page}'" style="cursor:pointer;">
                            	<td>${aol.order_member_id}</td>
	                            <td>${aol.member_name}</td>
	                            <td>${aol.work_name} || 작품ID: ${aol.work_id}</td>
	                            <td><fmt:formatNumber value="${aol.final_price}" type="number"/> 원</td>
	                            <td><fmt:formatDate value="${aol.order_date}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
	                            <c:if test="${aol.order_status == '0'}">
	                            	<td>0. 입금 확인 중</td>
	                            </c:if>
	                            <c:if test="${aol.order_status == '1'}">
	                            	<td>1. 입금 완료</td>
	                            </c:if>
	                            <c:if test="${aol.order_status == '2'}">
	                            	<td>2. 상품 준비 중</td>
	                            </c:if>
	                            <c:if test="${aol.order_status == '3'}">
	                            	<td>3. 배송 중</td>
	                            </c:if>
	                            <c:if test="${aol.order_status == '4'}">
	                            	<td>4. 배송 완료</td>
	                            </c:if>
	                            <c:if test="${aol.order_status == '5'}">
	                            	<td>5. 주문 취소</td>
	                            </c:if>
	                            <c:if test="${aol.order_status == '6'}">
	                            	<td>6. 환불 완료</td>
	                            </c:if>
	                        </tr>
                        </c:forEach>
                        </tbody>
						<!-- 반복문 forEach -->
                    </table>
                    <!--	PAGE 처리 부분		 -->
					<div class="bottom-paging">
						<ul class="page-numul" style="list-style:none;">
							<c:if test="${map.page == 1}"><li><span class="material-symbols-outlined">keyboard_double_arrow_left</span></li></c:if>
							<c:if test="${map.page != 1}">
							<a href="admin_orderList?page=1"><li><span class="material-symbols-outlined">keyboard_double_arrow_left</span></li></a>
							</c:if>
							
							<c:if test="${map.page == 1}"><li><span class="material-symbols-outlined">chevron_left</span></li></c:if>
							<c:if test="${map.page != 1}">
							<a href="admin_orderList?page=${map.page - 1}"><li><span class="material-symbols-outlined">chevron_left</span></li></a>
							</c:if>
							
							<c:forEach begin="${map.startPage}" end="${map.endPage}" step="1" var="number">
								<c:if test="${map.page == number}">
								<li class="page-num" id="page-on">
									<div id="page-number">${number}</div>
								</li>
								</c:if>
								<c:if test="${map.page != number}">
								<li class="page-num">
									<a href="admin_orderList?page=${number}"><div id="page-number">${number}</div></a>
								</li>
								</c:if>
							</c:forEach>
							
							<c:if test="${map.page == map.maxPage}"><li><span class="material-symbols-outlined">chevron_right</span></li></c:if>
							<c:if test="${map.page != map.maxPage}">
							<a href="admin_orderList?page=${map.page + 1}"><li><span class="material-symbols-outlined">chevron_right</span></li></a>
							</c:if>
							
							<c:if test="${map.page == map.maxPage}"><li><span class="material-symbols-outlined">keyboard_double_arrow_right</span></li></c:if>
							<c:if test="${map.page != map.maxPage}">
							<a href="admin_orderList?page=${map.maxPage}"><li><span class="material-symbols-outlined">keyboard_double_arrow_right</span></li></a>
							</c:if>
						</ul>
					</div>
					<!-- 	PAGE 처리 부분		 -->
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