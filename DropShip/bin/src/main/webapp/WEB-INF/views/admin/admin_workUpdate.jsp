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
    <title>DropShip Admin - 작품수정</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="shortcut icon" href="admin//img/favicon.ico" />
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link href="admin/css/styles.css" rel="stylesheet" />
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
    <style>
		#workImage {width: 200px; height: 200px; text-align: center; 
			display: block; margin: 0 auto;}
	</style>
    <script>
        // 아티스트 고유번호 확인 메소드
        function checkArtistBtn() {
        	
        	if($("#artist_name").val().length < 1) {
    			alert("아티스트 이름을 입력해주세요.");
    			return;
    		}
        	
            $.ajax({
                url: "checkArtistId",
                type: "post",
                data: {artist_name: $("#artist_name").val()}, // 기본타입전송 -  String으로 보낼 것. // 기본타입전송 -  String으로 보낼 것.
                success: function(cnt) {
                    if (cnt == 0) {
                        alert("등록된 작가가 없습니다. 작가 정보를 먼저 등록해주세요.\n 작가 추가 페이지로 이동합니다.");
                        location.href = "admin_artistAdd";
                    } else {
                        alert("작가 발견!!")
                        $("#artist_id").val(cnt);
                    }
                },
                error: function() {
                    alert("실패");
                }
            }) //ajax
        } //checkArtisBtn()

        // 작품 수정 버튼 클릭
        function workUpdateBtn() {
        	if (!validCheck()) return;
        	workUpdateFrm.submit();
            alert("작품 수정이 완료됐습니다!");
        } // workUpdateBtn()
        
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
// 		    if ($("#work_img_file").val() == "") {
// 		        alert("작품 이미지 파일을 첨부해주세요.");
// 		        $("#work_img_file").focus();
// 		        return false;
// 		    }
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
                    <h1 class="mt-4">작품 수정</h1>
                    <div class="card mb-4">
                        <div class="card-body">작품 정보를 수정할 수 있습니다.</div>
                    </div>
                </div>
                <form action="admin_workUpdate" name="workUpdateFrm" method="post" enctype="multipart/form-data">
                    <table class="admin_memberAddTableDiv">
                        <!-- 작품 등록하는 관리자의 고유번호를 hidden으로 보냄-->
                        <input type="hidden" id="admin_id" name="admin_id" value=${sessionAdminId}>
                        <!-- 작품id hidden으로 보냄-->
                        <input type="hidden" id="id" name="id" value=${workVo.getId()}>
                        <!-- 원래 파일명 hidden으로 보냄-->
                        <input type="hidden" name="original_file" value="${workVo.getWork_img_url()}">
                        <tr>
                            <th>작품 이름</th>
                            <td>
                                <input type="text" name="work_name" id="work_name" style="width: 100%;" value="${workVo.getWork_name()}" required>
                            </td>
                        </tr>
                        <tr>
                            <th>아티스트 이름</th>
                            <td>
                                <input type="text" id="artist_name" placeholder="아티스트 이름" style="width: 100%;" value="${workVo.getArtist_name()}">
                                <input type="button" id="checkArtist" onclick="checkArtistBtn()" value="아티스트 고유번호 확인">
                                <!-- artist고유번호만 입력됨. -->
                                <input type="text" name="artist_id" id="artist_id" style="width: 100%;" placeholder="아티스트 고유번호 확인 버튼을 눌러주세요" required readonly>
                            </td>
                        </tr>
                        <tr>
                            <th>장르</th>
                            <td>
                                <label for="portrait">초상화</label>
                                <input type="radio" id="portrait" name="work_genre" value="초상화" <c:if test="${workVo.getWork_genre() == '초상화'}">checked</c:if>>
                                <label for="abstract">추상화</label>
                                <input type="radio" id="abstract" name="work_genre" value="추상화" <c:if test="${workVo.getWork_genre() == '추상화'}">checked</c:if>>
                                <label for="landScape">풍경</label>
                                <input type="radio" id="landScape" name="work_genre" value="풍경" <c:if test="${workVo.getWork_genre() == '풍경'}">checked</c:if>>
                                <label for="stillLife">정물</label>
                                <input type="radio" id="stillLife" name="work_genre" value="정물" <c:if test="${workVo.getWork_genre() == '정물'}">checked</c:if>>
                                <label for="typography">타이포그래피</label>
                                <input type="radio" id="typography" name="work_genre" value="타이포그래피" <c:if test="${workVo.getWork_genre() == '타이포그래피'}">checked</c:if>><br>
                                <label for="illustration">일러스트</label>
                                <input type="radio" id="illustration" name="work_genre" value="일러스트" <c:if test="${workVo.getWork_genre() == '일러스트'}">checked</c:if>>
                                <label for="poster">포스터</label>
                                <input type="radio" id="poster" name="work_genre" value="포스터" <c:if test="${workVo.getWork_genre() == '포스터'}">checked</c:if>>
                                <label for="popArt">팝아트</label>
                                <input type="radio" id="popArt" name="work_genre" value="팝아트" <c:if test="${workVo.getWork_genre() == '팝아트'}">checked</c:if>>
                                <label for="hyper">초현실</label>
                                <input type="radio" id="hyper" name="work_genre" value="초현실" <c:if test="${workVo.getWork_genre() == '초현실'}">checked</c:if>>
                                <label for="cartoon">카툰</label>
                                <input type="radio" id="cartoon" name="work_genre" value="카툰" <c:if test="${workVo.getWork_genre() == '카툰'}">checked</c:if>>
                            </td>
                        </tr>
                        <tr>
                            <th>주제</th>
                            <td>
                                <label for="spring">봄</label>
                                <input type="radio" id="spring" name="work_subject" value="봄" <c:if test="${workVo.getWork_subject() == '봄'}">checked</c:if>>
                                <label for="summer">여름</label>
                                <input type="radio" id="summer" name="work_subject" value="여름" <c:if test="${workVo.getWork_subject() == '여름'}">checked</c:if>>
                                <label for="fall">가을</label>
                                <input type="radio" id="fall" name="work_subject" value="가을" <c:if test="${workVo.getWork_subject() == '가을'}">checked</c:if>>
                                <label for="winter">겨울</label>
                                <input type="radio" id="winter" name="work_subject" value="겨울" <c:if test="${workVo.getWork_subject() == '겨울'}">checked</c:if>>
                                <label for="animals">동물</label>
                                <input type="radio" id="animals" name="work_subject" value="동물" <c:if test="${workVo.getWork_subject() == '동물'}">checked</c:if>><br>
                                <label for="plants">식물</label>
                                <input type="radio" id="plants" name="work_subject" value="식물" <c:if test="${workVo.getWork_subject() == '식물'}">checked</c:if>>
                                <label for="city">도시</label>
                                <input type="radio" id="city" name="work_subject" value="도시" <c:if test="${workVo.getWork_subject() == '도시'}">checked</c:if>>
                                <label for="kids">어린이</label>
                                <input type="radio" id="kids" name="work_subject" value="어린이" <c:if test="${workVo.getWork_subject() == '어린이'}">checked</c:if>>
                                <label for="indoor">실내</label>
                                <input type="radio" id="indoor" name="work_subject" value="실내" <c:if test="${workVo.getWork_subject() == '실내'}">checked</c:if>>
                                <!-- 나중에 주제 수동으로 입력받으면 새 주제도 입력될 수 있도록 -->
                                <!-- <input type="text" name="work_subject" id="work_subject" placeholder="그 외 주제를 입력해주세요(라디오버튼 체크 안할때만)" style="width: 80%;" required> -->
                            </td>
                        </tr>
<!--                         <tr> -->
<!--                             <th>작품 이미지 url</th> -->
<!--                             <td><input type="url" name="work_img_url" id="work_img_url" value="일단 사진첨부로 할 건데, 이미지 url만 적어도 가능할 수 있게 하는 방안도 생각중이라 일단 만들어놨습니다" style="width: 100%;" required></td> -->
<!--                         </tr> -->
                        <tr>
							<th>기존 작품사진 파일</th>
							<td>${workVo.getWork_img_url()}</td>
						</tr>
						<tr>
							<th>기존 이미지</th>
							<td><img src="admin/img/work/${workVo.getWork_img_url()}" id="workImage"></td>
						</tr>
                        <tr>
                            <th>작가 사진 첨부</th>
                            <td><input type="file" name="file" id="work_img_file"></td>
                        </tr>
                        <tr>
                            <th>작품 설명</th>
                            <td>
                            	<textarea id="work_content" name="work_content" cols="50" rows="10" style="width: 100%;" 
                            	required>${workVo.getWork_content()}</textarea>
                            </td>
                        </tr>
                        <tr>
                            <th>베스트 체크</th>
                            <td>
                                <label for="best">베스트</label>
                                <input type="radio" id="best" name="work_isBest" value="1"
                                <c:if test="${workVo.getWork_isBest() == 1}">checked</c:if>>
                                <label for="notBest">베스트 X</label>
                                <input type="radio" id="notBest" name="work_isBest" value="0"
                                <c:if test="${workVo.getWork_isBest() == 0}">checked</c:if>>
                            </td>
                        </tr>
                        <tr>
                            <th>작품 원가</th>
                            <td>
                            	<input type="text" name="work_price" id="work_price" style="width: 100%;" value="${workVo.getWork_price()}" required>
                            </td>
                        </tr>
                        <tr>
                            <th>전시 위치</th>
                            <td><input type="url" name="work_display_position" id="work_display_position" style="width: 100%;" placeholder="옵션" value="${workVo.getWork_display_position()}" required></td>
                        </tr>
                        <tr>
                            <th>작품 노출 상태</th>
                            <td>
                                <label for="available">사용</label>
                                <input type="radio" id="available" name="work_available" value="1"
                                <c:if test="${workVo.getWork_isBest() == 1}">checked</c:if>> <!-- 사용(디폴트) : 1, 정지 : 0 -->
                                <label for="unavailable">정지</label>
                                <input type="radio" id="unavailable" name="work_available" value="0"
                                <c:if test="${workVo.getWork_isBest() == 0}">checked</c:if>>
                            </td>
                        </tr>
                    </table>
                    <br>
                    <div class="admin_noticeBoard_div">
                        <button type="button" class="admin_noticeBoard_button" onclick="workUpdateBtn()" style="margin: 0 0 0 130px; color: red; border-radius: 5px;">작품 수정</button>
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