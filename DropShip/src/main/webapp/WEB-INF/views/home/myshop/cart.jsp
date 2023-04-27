<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">

<!-- Mirrored from bxgs.co.kr/shop/cart.php by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2023 07:03:43 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
    <meta name="HandheldFriendly" content="true">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <link rel="shortcut icon" href="../home/img/favicon.ico" />
    <title>장바구니</title>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="stylesheet" href="../home/theme/buzinga/css/mobile_shop3816.css?ver=210618">
    <link rel="stylesheet" href="../home/js/font-awesome/css/font-awesome.min3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/swiper.min3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/aos3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/nice-select3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/js/owl.carousel3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/common3816.css?ver=210618">
    <link rel="stylesheet" href="../home/theme/buzinga/css/sub3816.css?ver=210618">
    <!--[if lte IE 8]>
<script src="https://bxgs.co.kr/js/html5.js"></script>
<![endif]-->
    <script>
        // 자바스크립트에서 사용하는 전역변수 선언
        var g5_url = "../index.html";
        var g5_bbs_url = "https://bxgs.co.kr:443/bbs/";
        var g5_is_member = "";
        var g5_is_admin = "";
        var g5_is_mobile = "1";
        var g5_bo_table = "";
        var g5_sca = "";
        var g5_editor = "";
        var g5_cookie_domain = "";
        var g5_theme_shop_url = "https://bxgs.co.kr:443/theme/buzinga/shop/";
        var g5_shop_url = "https://bxgs.co.kr:443/shop/";
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
        <%@ include file ="../top/header.jsp" %>
        <!-- header 부분 끝 -->

        <main id="contents">

            <section class="sub-tit-wrap" data-aos="fade-up">
                <div class="maxinner">
                    <h2 class="sub-tit">장바구니</h2>
                </div>
            </section>


            <!-- 장바구니 시작 { -->
            <script src="../home/js/shop.js"></script>
            <script src="../home/js/shop.override.js"></script>

            <div id="sod_bsk" class="od_prd_list">
                <div class="maxinner">
                    <form name="frmcartlist" id="sod_bsk_list" class="2017_renewal_itemform" method="post" action="https://bxgs.co.kr/shop/cartupdate.php">
                                    <input type="hidden" name="selectedWorksId" value="">
                                    <input type="hidden" name="selectedOptionsId" value=""> <!-- 이름 checked로 바꾸는게 좋을듯  -->
                        <div class="tbl_order">
                            <table>
                                <caption>장바구니 리스트</caption>
                                <thead>
                                    <tr>
                                        <th scope="col" class="chk-box">
                                            <input type="checkbox" name="ct_all" value="1" id="ct_all" checked="checked" class="selec_chk">
                                            <label for="ct_all"><b class="sound_only">상품 전체</b></label>
                                        </th>
                                        <th scope="col">Product</th>
                                        <th scope="col">Unit price</th>
                                        <th scope="col">Quantity</th>
                                        <!--<th scope="col">포인트</th>-->
                                        <!--<th scope="col">배송비</th>-->
                                        <th scope="col">Subtotal</th>
                                    </tr>
                                </thead>
                                <tbody>
                                	<c:if test="${isEmptyCart != 'Empty'}">
	                                	<c:forEach items="${optionVoList}" var="optionVo" varStatus="loop">
		                                    <tr>
		                                        <td data-title="No" class="td_chk chk-box">
		                                            <input type="checkbox" name="ct_chk[]" value="${optionVo.id}" id="ct_chk_${optionVo.id}" checked="checked" class="selec_chk">
		                                            <label for="ct_chk_${optionVo.id}"><span></span><b class="sound_only">상품</b></label>
	                                                <input type="hidden" name="work_id" value="${workVoList[loop.index].id}">
	                                                <input type="hidden" name="option_id" value="${optionVo.id}">
		                                        </td>
		                                        <td data-title="Product" class="td_prd">
		                                            <div class="sod_img"><a href="/shop/painting_item?work_id=${workVoList[loop.index].id}&artist_id=${workVoList[loop.index].artist_id}" style="background-image:url(/admin/img/work/${workVoList[loop.index].work_img_url})"><span class="hide">제품이미지</span></a></div>
		                                            <div class="sod_name">
		                                                <input type="hidden" name="it_id[]" value="${workVoList[loop.index].id}">
	<%-- 	                                                <input type="hidden" name="it_name[${workVoList[loop.index].id}]" value="${workVoList[loop.index].work_name}"> --%>
		                                                <a href="/shop/painting_item?work_id=${workVoList[loop.index].id}&artist_id=${workVoList[loop.index].artist_id}" class="prd_name"><strong>${workVoList[loop.index].work_name}</strong><span>${artistVoList[loop.index].artist_korean_name}</span><span class="price_txt"></span>
		                                                    <div class="sod_opt_txt">
		                                                        <c:choose>
		                                                            <c:when test="${optionVo.option_size == 0}">
		                                                                <p>사이즈 : 20.0cm x 35.7cm<span class="price_txt">(+${optionVo.option_size_added_price})</span></p>
		                                                            </c:when>
		                                                            <c:when test="${optionVo.option_size == 1}">
		                                                                <p>사이즈 : 25.0cm x 44.6cm<span class="price_txt">(+${optionVo.option_size_added_price})</span></p>
		                                                            </c:when>
		                                                        </c:choose>
		
		                                                        <c:choose>
		                                                            <c:when test="${optionVo.option_media == 1}">
		                                                                <p>미디어 : 캔버스<span class="price_txt">(+${optionVo.option_selected_price - optionVo.option_size_added_price - optionVo.option_frame_added_price - optionVo.option_matt_added_price - workVo.work_price})</span></p>
		                                                            </c:when>
		                                                            <c:when test="${optionVo.option_media == 2}">
		                                                                <p>미디어 : 파인아트<span class="price_txt">(+${optionVo.option_selected_price - optionVo.option_size_added_price - optionVo.option_frame_added_price - optionVo.option_matt_added_price - workVo.work_price})</span></p>
		                                                            </c:when>
		                                                        </c:choose>
		
		                                                        <c:choose>
		                                                            <c:when test="${optionVo.option_mattier == 1}">
		                                                                <p>리터치 : 없음<span class="price_txt">(+0)</span></p>
		                                                            </c:when>
		                                                            <c:when test="${optionVo.option_mattier == 2}">
		                                                                <p>리터치 : 선택<span class="price_txt">(+0)</span></p>
		                                                            </c:when>
		                                                        </c:choose>
		
		                                                        <c:choose>
		                                                            <c:when test="${optionVo.option_frame == 1}">
		                                                                <p>프레임 : 캔버스판넬<span class="price_txt">(+0)</span></p>
		                                                            </c:when>
		                                                            <c:when test="${optionVo.option_frame == 2}">
		                                                                <p>프레임 : 래핑캔버스<span class="price_txt">(+0)</span></p>
		                                                            </c:when>
		                                                            <c:when test="${optionVo.option_frame == 3}">
		                                                                <p>프레임 : 띄움<span class="price_txt">(+${optionVo.option_frame_added_price})</span></p>
		                                                            </c:when>
		                                                            <c:when test="${optionVo.option_frame == 4}">
		                                                                <p>프레임 : 원목 띄움<span class="price_txt">(+${optionVo.option_frame_added_price})</span></p>
		                                                            </c:when>
		                                                            <c:when test="${optionVo.option_frame == 5}">
		                                                                <p>프레임 : 올림우드<span class="price_txt">(+${optionVo.option_frame_added_price})</span></p>
		                                                            </c:when>
		                                                            <c:when test="${optionVo.option_frame == 6}">
		                                                                <p>프레임 : 앤틱D실버<span class="price_txt">(+0)</span></p>
		                                                            </c:when>
		                                                            <c:when test="${optionVo.option_frame == 7}">
		                                                                <p>프레임 : 원목베이지<span class="price_txt">(+${optionVo.option_frame_added_price})</span></p>
		                                                            </c:when>
		                                                            <c:when test="${optionVo.option_frame == 8}">
		                                                                <p>프레임 : 관화이트<span class="price_txt">(+${optionVo.option_frame_added_price})</span></p>
		                                                            </c:when>
		                                                            <c:when test="${optionVo.option_frame == 9}">
		                                                                <p>프레임 : 관우드<span class="price_txt">(+${optionVo.option_frame_added_price})</span></p>
		                                                            </c:when>
		                                                            <c:when test="${optionVo.option_frame == 10}">
		                                                                <p>프레임 : 관블랙<span class="price_txt">(+${optionVo.option_frame_added_price})</span></p>
		                                                            </c:when>
		                                                        </c:choose>
		                                                        <p>매트(여백) :
		                                                            <c:choose>
		                                                                <c:when test="${optionVo.option_matt == 1}">
		                                                                    없음<span class="price_txt">(+0)</span>
		                                                                </c:when>
		                                                                <c:when test="${optionVo.option_matt == 2}">
		                                                                    2cm<span class="price_txt">(+10000)</span>
		                                                                </c:when>
		                                                                <c:when test="${optionVo.option_matt == 3}">
		                                                                    3cm<span class="price_txt">(+20000)</span>
		                                                                </c:when>
		                                                                <c:when test="${optionVo.option_matt == 4}">
		                                                                    6cm<span class="price_txt">(+30000)</span>
		                                                                </c:when>
		                                                                <c:when test="${optionVo.option_matt == 5}">
		                                                                    11cm<span class="price_txt">(+40000)</span>
		                                                                </c:when>
		                                                            </c:choose>
		                                                        </p>
		                                                    </div>
		                                                </a> </div>
		                                        </td>
		                                        <td data-title="Unit price" class="td_numbig">${workVoList[loop.index].work_price} 원</td>
		                                        <td data-title="Quantity" class="td_num">${optionVo.option_quantity}</td>
		                                        
		                                        <input type="hidden" name="option_quantity[]" value="${optionVo.option_quantity}">
		                                        <!--<td class="td_numbig">6,000</td>-->
		                                        <!--<td class="td_dvr">선불</td>-->
		                                        <td data-title="Subtotal" class="td_numbig text_right"><span id="sell_price_0" class="total_prc">${optionVo.option_selected_price}원 * ${optionVo.option_quantity}개 <br><br> ${optionVo.option_selected_price * optionVo.option_quantity}</span> 원</td>
		                                    </tr>
	                                    </c:forEach>
                                    </c:if>
                                    <!-- 장바구니 담긴 상품 없을 때. -->
                                    <c:if test="${isEmptyCart == 'Empty'}">
	                                     <tr>
	                                         <td colspan="5" class="empty-content"><img src="../home/img/ico/ico-information-big.png" alt="알림">
	                                             <p>장바구니에 담긴 상품이 없습니다.</p>
	                                         </td>
	                                     </tr>
                                    </c:if>
                                </tbody>
                            </table>
                            <div class="btn_cart_del">
                                <button type="button" onclick="return form_check('seldelete');">선택삭제</button>
<!--                                 <button type="button" onclick="return form_check('seldelete');">선택삭제</button> -->
                                <button type="button" onclick="return form_check('alldelete');">장바구니 비우기</button>
                            </div>
                        </div>

                        <div id="sod_bsk_tot">
		                    <c:if test="${isEmptyCart != 'Empty'}">
	                            <ul>
	                                <li class="sod_bsk_cos">
	                                    <span>총 상품금액</span>
	                                    <strong>${cart_total_price}</strong>
	                                    <em>원</em>
	                                </li>
	                                <li class="sod_bsk_dvr">
	                                    <i>+</i>
	                                    <span>배송비</span>
	                                    <strong>2000</strong>
	                                    <em>원</em>
	                                </li>
	                                <!--
				                    <li class="sod_bsk_pt">
				                        <i>+</i>
				                        <span>포인트</span>
				                        <strong>6,000</strong>
				                        <em>원</em>
				                    </li>
				                    -->
	                                <li class="sod_bsk_cnt">
	                                    <i>=</i>
	                                    <span>총 결제금액</span>
	                                    <strong>${cart_total_price + 2000}</strong>
	                                    <em>원</em>
	                                </li>
	                            </ul>
		                    </c:if>
                        </div>
                        <div id="sod_bsk_act">
                            <div class="btn-confirm-wrap">
                                <input type="hidden" name="url" value="./orderform.php">
                                <input type="hidden" name="records" value="1">
                                <input type="hidden" name="act" value="">
                                <a href="/shop/painting_list" class="btnset btn-type04">쇼핑 계속하기</a>
                                <button type="button" onclick="return form_check('buy');" class="btnset btn-type04 btn-line-brown">선택상품 주문</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <script>
                $(function() {
                    var close_btn_idx;

                    // 선택사항수정
                    $(".mod_options").click(function() {
                        var it_id = $(this).closest("tr").find("input[name^=it_id]").val();
                        var $this = $(this);
                        close_btn_idx = $(".mod_options").index($(this));

                        $.post(
                            "cartoption.html", {
                                it_id: it_id
                            },
                            function(data) {
                                $(".mod_option_wrap").remove();
                                $this.after("<div class=\"mod_option_wrap\"><div id=\"mod_option_frm\"></div></div>");
                                $("#mod_option_frm").html(data);
                                price_calculate();
                            }
                        );
                    });

                    // 모두선택
                    $("input[name=ct_all]").click(function() {
                        if ($(this).is(":checked"))
                            $("input[name^=ct_chk]").attr("checked", true);
                        else
                            $("input[name^=ct_chk]").attr("checked", false);
                    });

                    // 옵션수정 닫기
                    $(document).on("click", "#mod_option_close", function() {
                        $(".mod_option_wrap").remove();
                        $(".mod_options").eq(close_btn_idx).focus();
                    });
                    $("#win_mask").click(function() {
                        $(".mod_option_wrap").remove();
                        $(".mod_options").eq(close_btn_idx).focus();
                    });

                });

                function fsubmit_check(f) {
                    if ($("input[name^=ct_chk]:checked").length < 1) {
                        alert("구매하실 상품을 하나이상 선택해 주십시오.");
                        return false;
                    }

                    return true;
                }

                var selectedWorksId = [];
                var selectedOptionsId = [];
                function form_check(act) {
                	selectedWorksId = [];
                	selectedOptionsId = [];
                    var f = document.frmcartlist;
                    var cnt = f.records.value;
                    
                    if (act == "buy") {
                    	
                        if ($("input[name^=ct_chk]:checked").length < 1) {
                            alert("주문하실 상품을 하나이상 선택해 주십시오.");
                            return false;
                        }
                        f.act.value = act;
                        selectedWorkAndOptionId(act);
                        f.action = "../myshop/order_form";
                        f.submit();
                        
                    } else if (act == "alldelete" || act == "seldelete") {	// '선택삭제' 누르든 '장바구니 비우기' 누르든
                    	
                    	if(act == "seldelete"){	// 만약 '선택삭제' 누른 거면
	                        if ($("input[name^=ct_chk]:checked").length < 1) {	// 선택 하나라도 돼있는지 체크
	                            alert("삭제하실 상품을 하나이상 선택해 주십시오.");
	                            return false;	
	                        }
                    	} else {	//	만약 '장바구니 비우기' 누른 거면
                    		$("input[name^=ct_chk]").each(function(){	// 모든 작품 선택
	                    		$(this).prop("checked", true);
                    		});
                    	}
                        f.act.value = act;
                        selectedWorkAndOptionId(act);
                        
                     	// 삭제할 때 ajax 통해서 서버로 option_id리스트를 보냄. 삭제할 때 work_id는 필요없음. 주문할 땐 work_id들 필요함
						$.ajax({	
							url : "../myshop/deleteCart",
							data : {"option_id_array" : JSON.stringify(selectedOptionsId)},
							type : "POST",
							success : function(result){
								alert(result);
								location.href = "cart";
							}, 
							error : function(){
								alert("ajax실패");
							}
						}); // ajax
                    } // act 관련 if
                    return true;
                } // form_check()
                
                // 체크된 작품들의 work_id리스트와 option_id리스트를 각각 만들어서 input에 value로 넣기
                function selectedWorkAndOptionId(act){	
            	    $('input[name="ct_chk[]"]').each(function() {	// 체크박스 다 돌아
            	    	if ($(this).is(':checked')) {	// 체크되어있니?
               	        	var option_id= $(this).closest('tr').find('input[name="option_id"]').val(); 
              	        	selectedOptionsId.push(option_id); /* option_id는 삭제, 주문에 모두 필요. 체크된 작품의 option_id들을 배열에 집어넣기 */
            	    		if (act === "buy") {	// '주문하기' 버튼을 누른거니? (주문에만 work_id가 추가적으로 필요)
            	    			var work_id = $(this).closest('tr').find('input[name="work_id"]').val(); 
            	    	        selectedWorksId.push(work_id);	// '주문하기' 버튼 누른거면 work_id를 배열에 담아
                	        } 
            	    	}
                 	 });
            	    $('input[name="selectedWorksId"]').val(selectedWorksId);
            	    $('input[name="selectedOptionsId"]').val(selectedOptionsId);
                } // selectedWorkAndOptionId
            </script>
            <!-- } 장바구니 끝 -->

        </main>

        <!-- header 부분 시작 -->
        <%@ include file ="../top/footer.jsp" %>
        <!-- header 부분 끝 -->

        <div id="gotop">
            <a href="javascript:;"><span class="hide">맨위로가기</span></a>
        </div>
    </div>


    <script src="../home/js/sns.js"></script>
    <script src="../home/theme/buzinga/js/css3-animate-it.js"></script>
    <link rel="stylesheet" href="../home/theme/buzinga/css/animate.css">
    <script src="../home/theme/buzinga/js/base.js"></script>
    <script src="../home/theme/buzinga/js/sub.js"></script>

</body>

</html>