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
<style>
    .tw-style {
        background-color: #f5f8fa;
        padding: 20px;
        border: 1px solid #e1e8ed;
        border-radius: 5px;
    }

    .tw-style h3 {
        font-size: 18px;
        font-weight: bold;
        margin-bottom: 10px;
    }

    .tw-style textarea {
        background-color: #fff;
        border: 1px solid #ccd6dd;
        border-radius: 5px;
        font-size: 14px;
        padding: 10px;
        width: 100%;
        min-height: 80px;
        margin-bottom: 10px;
        resize: vertical;
    }

    .tw-style input[type="password"] {
        border: 1px solid #ccd6dd;
        border-radius: 5px;
        font-size: 14px;
        padding: 5px 10px;
        width: 100%;
        margin-bottom: 10px;
    }

		.tw-style-input {
	    background-color: #fff;
	    border: 1px solid #ccd6dd;
	    border-radius: 5px;
	    font-size: 14px;
	    padding: 5px 10px;
	    width: 100%;
	    margin-bottom: 10px;
	}

	   .tw-style-button {
	    background-color: #1da1f2;
	    color: #fff;
	    font-size: 14px;
	    padding: 8px 16px;
	    border: none;
	    border-radius: 5px;
	    cursor: pointer;
	    margin-left: 5px;
	}

    .tw-style button:hover {
        background-color: #0c85d0;
    }
    
    /* 댓글 리스트  */
    
    .comment-list-wrap {
	    max-width: 100%;
	    margin: 0 auto;
	    border: 1px solid #e1e8ed;
	    border-radius: 5px;
	    background-color: #f5f8fa;
	    padding: 20px;
	}
	
	.comment-item {
	    display: flex;
	    flex-direction: row;
	    align-items: flex-start;
	    border-bottom: 1px solid #eee;
	    padding: 10px 0;
	}
	
	.comment-author {
	    font-weight: bold;
	    margin-right: 10px;
	}
	
	.comment-date {
	    font-size: 12px;
	    color: #999;
	    margin-left: auto;
	}
	
	.comment-content {
	    word-wrap: break-word;
	    white-space: pre-wrap;
	}
    
    .comment-edit-btn, .comment-delete-btn {
	    background-color: #1da1f2;
	    color: #fff;
	    font-size: 12px;
	    padding: 4px 8px;
	    border: none;
	    border-radius: 3px;
	    cursor: pointer;
	    margin-left: 5px;
	}
	
	.comment-edit-btn:hover, .comment-delete-btn:hover {
	    background-color: #0c85d0;
	}
    
</style>
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
							<li><button type="button" class="btnset btn-board-opt" onclick="replyBtn()">답글달기</button></li>
							<li><button type="button" class="btnset btn-board-opt" onclick="updateBtn()">수정</button></li>
							<li><button type="button" class="btnset btn-board-opt" onclick="deleteBtn()">삭제</button></li>
						</ul>
					</div>
					<div class="board-con-wrap">
						<h3 class="hide">본문</h3>

						<div class="board-con">${map.boardVo.freeBoard_content}</div>
					</div>
					
					<!-- 댓글 달기 -->
					<div class="comment-input-wrap tw-style">
					    <h3>댓글 달기</h3>
					    <div id="commentForm">
					        <input name="member_nName" type="hidden" value="${sessionMember_nName}">
					        <input name="member_id" type="hidden" value="${sessionMember_id}">
					        <input name="freeBoard_id" type="hidden" value="${map.boardVo.id}">
					        <textarea name="comment_content" placeholder="댓글을 입력하세요" required></textarea>
					        <input name="comment_pw" type="password" placeholder="댓글 비밀번호 (선택사항)">
					        <button id="submitComment">댓글 작성</button>
					    </div>
					</div>
					
					<!-- 댓글 목록 -->
					<div class="comment-list-wrap">
					    <h3>댓글 목록</h3>
					    <ul id="commentList">
					        <c:forEach items="${commentVoList}" var="commentVo">
					            <li class="comment-item" data-comment-id="${commentVo.id}">
					                <div class="comment-author">${commentVo.member_nName}</div>
					                <c:if test="${commentVo.comment_pw != null}">
						                <div class="comment-content">비밀글입니다.</div>
					                </c:if>
					                <c:if test="${commentVo.comment_pw == null}">
						                <div class="comment-content">${commentVo.comment_content}</div>
					                </c:if>
					                <div class="comment-date">${commentVo.formatted_comment_date}</div>
					                <button class="comment-edit-btn">수정</button>
					                <button class="comment-delete-btn">삭제</button>
					            </li>
					        </c:forEach>
					    </ul>
					</div>
					<script>
						// 댓글 작성 버튼 클릭
						$("#submitComment").on("click", function (e) {
				            // 폼 데이터를 JSON 형태로 변환.
				            const formData = {
				                freeBoard_id: $("input[name='freeBoard_id']").val(),
				                member_id: $("input[name='member_id']").val(),
				                comment_content: $("textarea[name='comment_content']").val(),
				                comment_pw: $("input[name='comment_pw']").val() 
				            };
				            const JsonizedFormData = JSON.stringify(formData);
	
				         	// 댓글 서버 저장
				            $.ajax({
				                url: "comment_create",
				                type: "POST",
				                data: JsonizedFormData,
				                dataType: "json",
				                contentType: "application/json; charset=utf-8",
				                success: function (commentVo) {
			                        location.href="board_view?id="+${id}+"&page="+${page}	         // 페이징 처리 하려면 리로딩 할 수 밖에 없을듯...? 리로딩할거면 ajax로 받아와서 위처럼 할 필요가 없음
				                },
				                error: function (request, status, error) {
				                    alert("댓글 작성에 실패했습니다.");
				                }
				            }); // 댓글 저장 ajax
				            
				            
// 				            // 댓글 서버 저장
// 				            $.ajax({
// 				                url: "comment_create",
// 				                type: "POST",
// 				                data: JSON.stringify(formData),
// 				                dataType: "json",
// 				                contentType: "application/json; charset=utf-8",
// 				                success: function (commentVo) {
// // 				                	console.log(commentVo)
// // 				                    if (commentVo.id) {
// // 						        		const commentElement = $('<li class="comment-item" data-comment-id="' + commentVo.id + '">' +
// // 				                                '<div class="comment-author">' + commentVo.member_nName + '</div>' +
// // 				                                '<div class="comment-content"></div>' +
// // 				                                '<div class="comment-date">' + commentVo.formatted_comment_date + '</div>' +
// // 				                                '<button class="comment-edit-btn">수정</button>' +
// // 				                                '<button class="comment-delete-btn">삭제</button>' +
// // 									                            '</li>');
// // 						        		$("#commentList").prepend(commentElement);
// // 						        		if(commentVo.comment_pw != null){	// 비번 걸려있으면
// // 						        			commentElement.find(".comment-content").text("비밀글입니다.");
// // 						        		} else {
// // 						        			commentElement.find(".comment-content").text(commentVo.comment_content);
// // 						        		}
	
// // 				                        // 댓글 입력 폼을 초기화
// // 				                        $("textarea[name='comment_content']").val('');
// // 				                        $("input[name='comment_pw']").val('');
// 				                        location.href="board_view?id="+${id}+"&page="+${page}	// 페이징 처리 하려면 리로딩 할 수 밖에 없을듯...? 리로딩할거면 ajax로 받아와서 위처럼 할 필요가 없음
// // 				                    } else {
// // 				                        alert("댓글 작성에 실패했습니다.");
// // 				                    }
// 				                },
// 				                error: function (request, status, error) {
// 				                    alert("댓글 작성에 실패했습니다.");
// 				                }
// 				            }); // ajax

				            
				        });	//  $("#submitComment").on("click")
				        
				        
				        
				     	// 댓글 수정
				        $("#commentList").on("click", ".comment-edit-btn", function () {	// 이벤트 처리를 상위(commentList)요소에 위임
				            const commentItem = $(this).closest(".comment-item");
				            const comment_id = commentItem.data("comment-id");
				            const comment_content = commentItem.find(".comment-content").text();
				            
				        	if(commentItem.find(".comment-author").text() != $("input[name='member_nName']").val()){
				        		alert("해당 회원만 댓글을 수정하실 수 있습니다.");
				        		return false;
				        	}

				        	// 해당 회원만 댓글을 수정할 수 있도록 확인
				            commentItem.find(".comment-content").html('<input type="text" class="edit-comment-input" value="' + comment_content + '"><button class="edit-comment-save tw-style-button">저장</button><button class="edit-comment-cancel tw-style-button">취소하기</button>');

				         	// 댓글 내용을 입력 필드와 저장 버튼으로 교체
				            commentItem.on("click", ".edit-comment-save", function () {
				                const updated_comment_content = commentItem.find(".edit-comment-input").val();

				                $.ajax({
				                    url: "comment_update",
				                    type: "POST",
				                    data: { comment_id: comment_id, comment_content: updated_comment_content },
				                    dataType: "json",
				                    success: function (updatedCommentVo) {
				                        if (updatedCommentVo) {
				                        	// 프론트엔드에서 댓글 업데이트
				                            commentItem.find(".comment-content").text(updatedCommentVo.comment_content);
				                            commentItem.find(".comment-date").text(updatedCommentVo.formatted_comment_date);

				                            // 입력 필드와 저장 버튼 제거
				                            commentItem.find(".edit-comment-input").remove();
				                            commentItem.find(".edit-comment-save").remove();
				                        } else {
				                            alert("Failed to update the comment.");
				                        }
				                    },
				                    error: function () {
				                        alert("Failed to update the comment.");
				                    }
				                }); // ajax
				            });// 수정된 댓글 저장
				            
				        	// 수정 취소
				            commentItem.on("click", ".edit-comment-cancel", function () {
				            	// 원래 댓글 내용을 복원하고 입력 필드와 버튼 제거
				                commentItem.find(".comment-content").text(comment_content);
				            });
				            
				        });  // 댓글 수정 버튼 클릭 이벤트
				        
				        
				     	// 댓글 삭제
				        $("#commentList").on("click", ".comment-delete-btn", function () {
				            const commentItem = $(this).closest(".comment-item");
				            const comment_id = commentItem.data("comment-id");

				            if(commentItem.find(".comment-author").text() != $("input[name='member_nName']").val()){
				        		alert("해당 회원만 댓글을 삭제하실 수 있습니다.");
				        		return false;
				        	}
				            
				            // 댓글 삭제 물어보기
				            const confirmDelete = confirm("정말로 댓글을 삭제하시겠습니까?");

				            if (confirmDelete) {
				            	// 서버에 댓글 삭제 요청 전송
				                $.ajax({
				                    url: "comment_delete",
				                    type: "POST",
				                    data: { comment_id: comment_id },
				                    dataType: "json",
				                    success: function (response) {
				                        if (response.success) {
				                            // 코멘트 지움
				                            commentItem.remove();
				                        } else {
				                            alert("Failed to delete the comment.");
				                        }
				                    },
				                    error: function () {
				                        alert("Failed to delete the comment.");
				                    }
				                }); // ajax
				            }
				        }); // 코멘트 삭제
				        
				        
				        
					</script>
					
					
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
				
				function replyBtn(){
					if(confirm("답글을 작성하시겠습니까?")) 
						location.href="board_reply?id=${map.boardVo.id}&page=${page}";
				}//replyBtn()
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