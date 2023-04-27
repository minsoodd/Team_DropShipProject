<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>DropShip Admin - 작품 관리</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="shortcut icon" href="admin/img/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="admin/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <script>
    
    	// 익명 아티스트 이미 만들어졌는지 여부 확인용 숫자. 얘가 1이 되고 나면 익명아티스트가 다시 안 만들어지게 체크할 용도.
    	var anonymousArtistMadeCount = 0;
    
    	var anonymousArtistId = 0;
    	
    	
    	// 아티스트 고유번호 확인 버튼
        function checkArtistBtn() {
    		
        	// 작가미상으로 할건지 체크
    		if($("#artist_name").val().length < 1) {
    			
	    		if(anonymousArtistMadeCount == 1) {	// 이미 익명 아티스트를 만든 적이 있다면 :
	    			alert("작가미상의 아티스트를 더 만드실 수 없습니다.");
	    			$("#artist_id").val(anonymousArtistId);	// 전에 만들었던 익명 아티스트의 id를 input에 넣기
	    			return;
	    		}
	    		
    			if(confirm("아티스트 이름이 입력되지 않았습니다. 작가미상으로 진행하시겠습니까?")){
    				$.ajax({
					    url: "createUnknownArtist",
					    // createUnknownArtist으로 가면 서버에서 익명작가 한명 만들고 그 익명작가의 id를 전달받게 됨
					    type: "post",
					    success: function(id) { // 만들어진 익명 작가의 id(artist_seq.currval) 받아옴
					    	anonymousArtistMadeCount = 1;	// 익명 작가가 1명 만들어졌으니 더 안만들어지도록 체크할 용도
					    	anonymousArtistId = id;
					        $("#artist_id").val(anonymousArtistId);
					    },
					    error: function() {
					        alert("익명 작가 생성 실패");
					    }
					});
    				return;
    			} else {
	    			return;
    			}
    		}// 작가미상여부 체크
    		
    		// 아티스트 조회
            $.ajax({
                url: "checkArtistId",
                type: "post",
                data: {artist_name: $("#artist_name").val()}, // 기본타입전송 -  String으로 보낼 것.
                success: function(cnt) {
                    if (cnt == 0) { 
                        alert("등록된 작가가 없습니다. 작가 정보를 먼저 등록해주세요.\n 작가 추가 페이지로 이동합니다.");
                        location.href="admin_artistAdd";
                    } else { 
                        alert("작가 발견!!")
                        $("#artist_id").val(cnt);
                    }
                },
                error: function() {
                    alert("아티스트 조회 실패");
                }
            }) //ajax
            
            
        } //checkArtisBtn() 아티스트 고유번호 확인 버튼
        
        // 작품 등록 버튼
        function workAddBtn(){
        	if (!validCheck()) return;
        	workAddFrm.submit();
        	alert("작품 등록이 완료됐습니다!");
        }// workAddBtn()
        
       	//방어코드 모아놓은 함수
        function validCheck(){
    		if ($("#work_name").val().length < 1) {
		        alert("작품 이름을 입력해주세요.");
		        $("#work_name").focus();
		        return false;
		    }
		    if ($("#artist_id").val().length < 1) {
		        alert("아트스트 이름 입력후 아티스트 고유번호 확인을 해주세요.");
		        $("#artist_id").focus();
		        return false;
		    }
		    if (!$("input[name='work_genre']").is(":checked")) {
		        alert("장르를 선택해주세요.");
		        return false;
		    }
		    if (!$("input[name='work_subject']").is(":checked")) {
		        alert("주제를 선택해주세요.");
		        return false;
		    }
		    if ($("#work_img_file").val() == "") {
		        alert("작품 이미지 파일을 첨부해주세요.");
		        $("#work_img_file").focus();
		        return false;
		    }
		    if ($("#work_content").val().length < 1) {
		        alert("작품 설명을 입력해주세요.");
		        $("#work_content").focus();
		        return false;
		    }
		    if (!$("input[name='work_isBest']").is(":checked")) {
		        alert("베스트 작품 여부를 선택해주세요.");
		        return false;
		    }
		    if ($("#work_price").val().length < 1) {
		        alert("작품 가격을 입력해주세요.");
		        $("#work_price").focus();
		        return false;
		    }
    		if (!$("input[name='work_available']").is(":checked")) {
		        alert("노출 여부를 선택해주세요.");
		        return false;
		    }
    		return true;
        }//validCheck()
        
    </script>
</head>

<body class="sb-nav-fixed">
    <c:if test="${result == 0}">
        <script>
            alert("ID 또는 PW가 일치하지 않습니다. 다시 로그인해주세요.");
            location.href = "admin_login";
        </script>
    </c:if>
    <c:if test="${result == 1}">
        <script>
            alert("로그인되었습니다");
        </script>
    </c:if>
    <c:if test="${sessionAdminLoginId==null}">
        <script>
            alert("관리자만 접근할 수 있습니다!");
            location.href = "admin_login";
        </script>
    </c:if>
    <!-- navBar 부분 시작 -->
    <%@ include file="include/navBar.jsp"%>
    <!-- navBar 부분 끝 -->
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <!-- sideMenu 부분 시작 -->
            <%@ include file="include/sideMenu.jsp"%>
            <!-- sideMenu 부분 끝 -->
        </div>
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">작품 관리</h1>
                    <div class="card mb-4">
                        <div class="card-body">DropShip <span style="color:red;">작품을 등록하는 메뉴</span>입니다. 각 항목에 맞게 데이터를 입력해 주세요.</div>
                    </div>
                </div>
                <form action="admin_workAdd" name="workAddFrm" method="post" enctype="multipart/form-data">
                    <table class="admin_memberAddTableDiv">
                    	<!-- 작품 등록하는 관리자의 고유번호를 hidden으로 보냄-->
                    	<input type="hidden" id="admin_id" name="admin_id" value=${sessionAdminId}>  
                        <tr>
                            <th>작품 이름</th>
                            <td><input type="text" name="work_name" id="work_name" style="width: 100%;" required></td>
                        </tr>
                        <tr>
                            <th>아티스트</th>
                            <td>
	                            <input type="text" id="artist_name" placeholder="아티스트 이름" style="width: 100%;" > 
	                            <input type="button" id="checkArtist" onclick="checkArtistBtn()" value="아티스트 고유번호 확인"> 
	                            <!-- artist고유번호만 입력됨. -->
	                            <input type="text" name="artist_id" id="artist_id" style="width: 100%;" placeholder="아티스트 고유번호 확인 버튼을 눌러주세요" required readonly>
                            </td>
                        </tr>
                        <tr>
						    <th>장르</th>
						    <td>
						        <label for="portrait">초상화</label>
						        <input type="radio" id="portrait" name="work_genre" value="초상화">
						        <label for="abstract">추상화</label>
						        <input type="radio" id="abstract" name="work_genre" value="추상화">
						        <label for="landScape">풍경</label>
						        <input type="radio" id="landScape" name="work_genre" value="풍경">
						        <label for="stillLife">정물</label>
						        <input type="radio" id="stillLife" name="work_genre" value="정물">
						        <label for="typography">타이포그래피</label>
						        <input type="radio" id="typography" name="work_genre" value="타이포그래피"><br>
						        <label for="illustration">일러스트</label>
						        <input type="radio" id="illustration" name="work_genre" value="일러스트">
						        <label for="poster">포스터</label>
						        <input type="radio" id="poster" name="work_genre" value="포스터">
						        <label for="popArt">팝아트</label>
						        <input type="radio" id="popArt" name="work_genre" value="팝아트">
						        <label for="hyper">초현실</label>
						        <input type="radio" id="hyper" name="work_genre" value="초현실">
						        <label for="cartoon">카툰</label>
						        <input type="radio" id="cartoon" name="work_genre" value="카툰">
<!-- 						    	나중에 장르 수동으로 입력받으면 새 장르도 입력될 수 있도록     -->
<!-- 						        <input type="text" name="work_genre" id="work_genre"  placeholder="그 외 장르를 입력해주세요(라디오버튼 체크 안할때만)"  style="width: 80%;" required> -->
						    </td>
						</tr>
                        <tr>
						  <th>주제</th>
						  <td>
						    <label for="spring">봄</label>
						    <input type="radio" id="spring" name="work_subject" value="봄">
						    <label for="summer">여름</label>
						    <input type="radio" id="summer" name="work_subject" value="여름">
						    <label for="fall">가을</label>
						    <input type="radio" id="fall" name="work_subject" value="가을">
						    <label for="winter">겨울</label>
						    <input type="radio" id="winter" name="work_subject" value="겨울">
						    <label for="animals">동물</label>
						    <input type="radio" id="animals" name="work_subject" value="동물"><br>
						    <label for="plants">식물</label>
						    <input type="radio" id="plants" name="work_subject" value="식물">
						    <label for="city">도시</label>
						    <input type="radio" id="city" name="work_subject" value="도시">
						    <label for="kids">어린이</label>
						    <input type="radio" id="kids" name="work_subject" value="어린이">
						    <label for="indoor">실내</label>
						    <input type="radio" id="indoor" name="work_subject" value="실내">
<!-- 					    	나중에 주제 수동으로 입력받으면 새 주제도 입력될 수 있도록     -->
<!-- 						    <input type="text" name="work_subject" id="work_subject" placeholder="그 외 주제를 입력해주세요(라디오버튼 체크 안할때만)" style="width: 80%;" required> -->
						  </td>
						</tr>
<!--                         <tr> -->
<!--                             <th>작품 이미지 url</th> -->
<!--                             <td><input type="url" name="work_img_url" id="work_img_url" value="일단 사진첨부로 할 건데, 이미지 url만 적어도 가능할 수 있게 하는 방안도 생각중이라 일단 만들어놨습니다" style="width: 100%;" required></td> -->
<!--                         </tr> -->
                        <tr>
                            <th>작품 사진 첨부</th>
                            <td><input type="file" name="file" id="work_img_file"></td>
                        </tr>
                        <tr>
                            <th>작품 설명</th>
                            <td><textarea id="work_content" name="work_content" cols="50" rows="10" style="width: 100%;" required></textarea></td>
                        </tr>
                        <tr>
                            <th>베스트 체크</th>
                            <td>
                            	<label for="best">베스트</label>
	                            <input type="radio" id="best" name="work_isBest" value="1"> 
	                            <label for="notBest">베스트 X</label>
	                            <input type="radio" id="notBest" name="work_isBest" value="0">
                            </td>
                        </tr>
                        <tr>
                            <th>작품 원가</th>
                            <td><input type="text" name="work_price" id="work_price" style="width: 100%;" required></td>
                        </tr>
                        <tr>
                            <th>전시 위치</th>
                            <td><input type="url" name="work_display_position" id="work_display_position" style="width: 100%;"  placeholder="적어도 되고 귀찮으면 안적어도 됨" required></td>
                        </tr>
                        <tr>
                            <th>작품 노출 상태</th>
                            <td>
	                            <label for="available">사용</label>
	                            <input type="radio" id="available" name="work_available" value="1"> <!-- 사용(디폴트) : 1, 정지 : 0 -->
	                            <label for="unavailable">정지</label>
	                            <input type="radio" id="unavailable" name="work_available" value="0"> 
                            </td>
                        </tr>
                    </table>
                    <br>
                    <div class="admin_noticeBoard_div">
                        <button type="button" class="admin_noticeBoard_button" onclick="workAddBtn()" style="margin: 0 0 0 130px; color: red; border-radius: 5px;">작품 등록</button>
                        <button type="button" class="admin_noticeBoard_button" onclick="location.href='admin_workList'" style="margin: 0 auto; border-radius: 5px;">작품 리스트</button>
                    </div>
                </form>
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