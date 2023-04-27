// 전역 변수
var errmsg = "";
var errfld = null;

// 필드 검사
function check_field(fld, msg)
{
    if ((fld.value = trim(fld.value)) == "")
        error_field(fld, msg);
    else
        clear_field(fld);
    return;
}

// 필드 오류 표시
function error_field(fld, msg)
{
    if (msg != "")
        errmsg += msg + "\n";
    if (!errfld) errfld = fld;
    //fld.style.background = "#BDDEF7";
}

// 필드를 깨끗하게
function clear_field(fld)
{
    //fld.style.background = "#FFFFFF";
}

function trim(s)
{
    var t = "";
    var from_pos = to_pos = 0;

    for (i=0; i<s.length; i++)
    {
        if (s.charAt(i) == ' ')
            continue;
        else
        {
            from_pos = i;
            break;
        }
    }

    for (i=s.length; i>=0; i--)
    {
        if (s.charAt(i-1) == ' ')
            continue;
        else
        {
            to_pos = i;
            break;
        }
    }

    t = s.substring(from_pos, to_pos);
    //				alert(from_pos + ',' + to_pos + ',' + t+'.');
    return t;
}

// 자바스크립트로 PHP의 number_format 흉내를 냄
// 숫자에 , 를 출력
function number_format(data)
{

    var tmp = '';
    var number = '';
    var cutlen = 3;
    var comma = ',';
    var i;
    
    data = data + '';

    var sign = data.match(/^[\+\-]/);
    if(sign) {
        data = data.replace(/^[\+\-]/, "");
    }

    len = data.length;
    mod = (len % cutlen);
    k = cutlen - mod;
    for (i=0; i<data.length; i++)
    {
        number = number + data.charAt(i);

        if (i < data.length - 1)
        {
            k++;
            if ((k % cutlen) == 0)
            {
                number = number + comma;
                k = 0;
            }
        }
    }

    if(sign != null)
        number = sign+number;

    return number;
}

// 새 창
function popup_window(url, winname, opt)
{
    window.open(url, winname, opt);
}


// 폼메일 창
function popup_formmail(url)
{
    opt = 'scrollbars=yes,width=417,height=385,top=10,left=20';
    popup_window(url, "wformmail", opt);
}

// , 를 없앤다.
function no_comma(data)
{
    var tmp = '';
    var comma = ',';
    var i;

    for (i=0; i<data.length; i++)
    {
        if (data.charAt(i) != comma)
            tmp += data.charAt(i);
    }
    return tmp;
}

// 삭제 검사 확인
function del(href)
{
    if(confirm("한번 삭제한 자료는 복구할 방법이 없습니다.\n\n정말 삭제하시겠습니까?")) {
        var iev = -1;
        if (navigator.appName == 'Microsoft Internet Explorer') {
            var ua = navigator.userAgent;
            var re = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
            if (re.exec(ua) != null)
                iev = parseFloat(RegExp.$1);
        }

        // IE6 이하에서 한글깨짐 방지
        if (iev != -1 && iev < 7) {
            document.location.href = encodeURI(href);
        } else {
            document.location.href = href;
        }
    }
}

// 쿠키 입력
function set_cookie(name, value, expirehours, domain)
{
    var today = new Date();
    today.setTime(today.getTime() + (60*60*1000*expirehours));
    document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + today.toGMTString() + ";";
    if (domain) {
        document.cookie += "domain=" + domain + ";";
    }
}

// 쿠키 얻음
function get_cookie(name)
{
	var match = document.cookie.match(new RegExp('(^| )' + name + '=([^;]+)'));
	if (match) return unescape(match[2]);
	return "";
}

// 쿠키 지움
function delete_cookie(name)
{
    var today = new Date();

    today.setTime(today.getTime() - 1);
    var value = get_cookie(name);
    if(value != "")
        document.cookie = name + "=" + value + "; path=/; expires=" + today.toGMTString();
}

var last_id = null;
function menu(id)
{
    if (id != last_id)
    {
        if (last_id != null)
            document.getElementById(last_id).style.display = "none";
        document.getElementById(id).style.display = "block";
        last_id = id;
    }
    else
    {
        document.getElementById(id).style.display = "none";
        last_id = null;
    }
}

function textarea_decrease(id, row)
{
    if (document.getElementById(id).rows - row > 0)
        document.getElementById(id).rows -= row;
}

function textarea_original(id, row)
{
    document.getElementById(id).rows = row;
}

function textarea_increase(id, row)
{
    document.getElementById(id).rows += row;
}

// 글숫자 검사
function check_byte(content, target)
{
    var i = 0;
    var cnt = 0;
    var ch = '';
    var cont = document.getElementById(content).value;

    for (i=0; i<cont.length; i++) {
        ch = cont.charAt(i);
        if (escape(ch).length > 4) {
            cnt += 2;
        } else {
            cnt += 1;
        }
    }
    // 숫자를 출력
    document.getElementById(target).innerHTML = cnt;

    return cnt;
}

// 브라우저에서 오브젝트의 왼쪽 좌표
function get_left_pos(obj)
{
    var parentObj = null;
    var clientObj = obj;
    //var left = obj.offsetLeft + document.body.clientLeft;
    var left = obj.offsetLeft;

    while((parentObj=clientObj.offsetParent) != null)
    {
        left = left + parentObj.offsetLeft;
        clientObj = parentObj;
    }

    return left;
}

// 브라우저에서 오브젝트의 상단 좌표
function get_top_pos(obj)
{
    var parentObj = null;
    var clientObj = obj;
    //var top = obj.offsetTop + document.body.clientTop;
    var top = obj.offsetTop;

    while((parentObj=clientObj.offsetParent) != null)
    {
        top = top + parentObj.offsetTop;
        clientObj = parentObj;
    }

    return top;
}

function flash_movie(src, ids, width, height, wmode)
{
    var wh = "";
    if (parseInt(width) && parseInt(height))
        wh = " width='"+width+"' height='"+height+"' ";
    return "<object classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0' "+wh+" id="+ids+"><param name=wmode value="+wmode+"><param name=movie value="+src+"><param name=quality value=high><embed src="+src+" quality=high wmode="+wmode+" type='application/x-shockwave-flash' pluginspage='http://www.macromedia.com/shockwave/download/index.cgi?p1_prod_version=shockwaveflash' "+wh+"></embed></object>";
}

function obj_movie(src, ids, width, height, autostart)
{
    var wh = "";
    if (parseInt(width) && parseInt(height))
        wh = " width='"+width+"' height='"+height+"' ";
    if (!autostart) autostart = false;
    return "<embed src='"+src+"' "+wh+" autostart='"+autostart+"'></embed>";
}

function doc_write(cont)
{
    document.write(cont);
}

var win_password_lost = function(href) {
    window.open(href, "win_password_lost", "left=50, top=50, width=617, height=330, scrollbars=1");
}

$(document).ready(function(){
    $("#login_password_lost, #ol_password_lost").click(function(){
        win_password_lost(this.href);
        return false;
    });
});

/**
 * 포인트 창
 **/
var win_point = function(href) {
    var new_win = window.open(href, 'win_point', 'left=100,top=100,width=600, height=600, scrollbars=1');
    new_win.focus();
}

/**
 * 쪽지 창
 **/
var win_memo = function(href) {
    var new_win = window.open(href, 'win_memo', 'left=100,top=100,width=620,height=500,scrollbars=1');
    new_win.focus();
}

/**
 * 쪽지 창
 **/
var check_goto_new = function(href, event) {
    if( !(typeof g5_is_mobile != "undefined" && g5_is_mobile) ){
        if (window.opener && window.opener.document && window.opener.document.getElementById) {
            event.preventDefault ? event.preventDefault() : (event.returnValue = false);
            window.open(href);
            //window.opener.document.location.href = href;
        }
    }
}

/**
 * 메일 창
 **/
var win_email = function(href) {
    var new_win = window.open(href, 'win_email', 'left=100,top=100,width=600,height=580,scrollbars=1');
    new_win.focus();
}

/**
 * 자기소개 창
 **/
var win_profile = function(href) {
    var new_win = window.open(href, 'win_profile', 'left=100,top=100,width=620,height=510,scrollbars=1');
    new_win.focus();
}

/**
 * 스크랩 창
 **/
var win_scrap = function(href) {
    var new_win = window.open(href, 'win_scrap', 'left=100,top=100,width=600,height=600,scrollbars=1');
    new_win.focus();
}

/**
 * 홈페이지 창
 **/
var win_homepage = function(href) {
    var new_win = window.open(href, 'win_homepage', '');
    new_win.focus();
}

/**
 * 우편번호 창
 **/
var win_zip = function(frm_name, frm_zip, frm_addr1, frm_addr2, frm_addr3, frm_jibeon) {
    if(typeof daum === 'undefined'){
        alert("다음 우편번호 postcode.v2.js 파일이 로드되지 않았습니다.");
        return false;
    }

    var zip_case = 2;   //0이면 레이어, 1이면 페이지에 끼워 넣기, 2이면 새창

    var complete_fn = function(data){
        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

        // 각 주소의 노출 규칙에 따라 주소를 조합한다.
        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
        var fullAddr = ''; // 최종 주소 변수
        var extraAddr = ''; // 조합형 주소 변수

        // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
        if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
            fullAddr = data.roadAddress;

        } else { // 사용자가 지번 주소를 선택했을 경우(J)
            fullAddr = data.jibunAddress;
        }

        // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
        if(data.userSelectedType === 'R'){
            //법정동명이 있을 경우 추가한다.
            if(data.bname !== ''){
                extraAddr += data.bname;
            }
            // 건물명이 있을 경우 추가한다.
            if(data.buildingName !== ''){
                extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
            extraAddr = (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
        }

        // 우편번호와 주소 정보를 해당 필드에 넣고, 커서를 상세주소 필드로 이동한다.
        var of = document[frm_name];

        of[frm_zip].value = data.zonecode;

        of[frm_addr1].value = fullAddr;
        of[frm_addr3].value = extraAddr;

        if(of[frm_jibeon] !== undefined){
            of[frm_jibeon].value = data.userSelectedType;
        }
        
        setTimeout(function(){
            of[frm_addr2].focus();
        } , 100);
    };

    switch(zip_case) {
        case 1 :    //iframe을 이용하여 페이지에 끼워 넣기
            var daum_pape_id = 'daum_juso_page'+frm_zip,
                element_wrap = document.getElementById(daum_pape_id),
                currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
            if (element_wrap == null) {
                element_wrap = document.createElement("div");
                element_wrap.setAttribute("id", daum_pape_id);
                element_wrap.style.cssText = 'display:none;border:1px solid;left:0;width:100%;height:300px;margin:5px 0;position:relative;-webkit-overflow-scrolling:touch;';
                element_wrap.innerHTML = '<img src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-21px;z-index:1" class="close_daum_juso" alt="접기 버튼">';
                jQuery('form[name="'+frm_name+'"]').find('input[name="'+frm_addr1+'"]').before(element_wrap);
                jQuery("#"+daum_pape_id).off("click", ".close_daum_juso").on("click", ".close_daum_juso", function(e){
                    e.preventDefault();
                    jQuery(this).parent().hide();
                });
            }

            new daum.Postcode({
                oncomplete: function(data) {
                    complete_fn(data);
                    // iframe을 넣은 element를 안보이게 한다.
                    element_wrap.style.display = 'none';
                    // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
                    document.body.scrollTop = currentScroll;
                },
                // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분.
                // iframe을 넣은 element의 높이값을 조정한다.
                onresize : function(size) {
                    element_wrap.style.height = size.height + "px";
                },
                maxSuggestItems : g5_is_mobile ? 6 : 10,
                width : '100%',
                height : '100%'
            }).embed(element_wrap);

            // iframe을 넣은 element를 보이게 한다.
            element_wrap.style.display = 'block';
            break;
        case 2 :    //새창으로 띄우기
            new daum.Postcode({
                oncomplete: function(data) {
                    complete_fn(data);
                }
            }).open();
            break;
        default :   //iframe을 이용하여 레이어 띄우기
            var rayer_id = 'daum_juso_rayer'+frm_zip,
                element_layer = document.getElementById(rayer_id);
            if (element_layer == null) {
                element_layer = document.createElement("div");
                element_layer.setAttribute("id", rayer_id);
                element_layer.style.cssText = 'display:none;border:5px solid;position:fixed;width:300px;height:460px;left:50%;margin-left:-155px;top:50%;margin-top:-235px;overflow:hidden;-webkit-overflow-scrolling:touch;z-index:10000';
                element_layer.innerHTML = '<img src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" class="close_daum_juso" alt="닫기 버튼">';
                document.body.appendChild(element_layer);
                jQuery("#"+rayer_id).off("click", ".close_daum_juso").on("click", ".close_daum_juso", function(e){
                    e.preventDefault();
                    jQuery(this).parent().hide();
                });
            }

            new daum.Postcode({
                oncomplete: function(data) {
                    complete_fn(data);
                    // iframe을 넣은 element를 안보이게 한다.
                    element_layer.style.display = 'none';
                },
                maxSuggestItems : g5_is_mobile ? 6 : 10,
                width : '100%',
                height : '100%'
            }).embed(element_layer);

            // iframe을 넣은 element를 보이게 한다.
            element_layer.style.display = 'block';
    }
}

/**
 * 새로운 비밀번호 분실 창 : 101123
 **/
win_password_lost = function(href)
{
    var new_win = window.open(href, 'win_password_lost', 'width=617, height=330, scrollbars=1');
    new_win.focus();
}

/**
 * 설문조사 결과
 **/
var win_poll = function(href) {
    var new_win = window.open(href, 'win_poll', 'width=616, height=500, scrollbars=1');
    new_win.focus();
}

/**
 * 쿠폰
 **/
var win_coupon = function(href) {
    var new_win = window.open(href, "win_coupon", "left=100,top=100,width=700, height=600, scrollbars=1");
    new_win.focus();
}


/**
 * 스크린리더 미사용자를 위한 스크립트 - 지운아빠 2013-04-22
 * alt 값만 갖는 그래픽 링크에 마우스오버 시 title 값 부여, 마우스아웃 시 title 값 제거
 **/
$(function() {
    $('a img').mouseover(function() {
        $a_img_title = $(this).attr('alt');
        $(this).attr('title', $a_img_title);
    }).mouseout(function() {
        $(this).attr('title', '');
    });
});

/**
 * 텍스트 리사이즈
**/
function font_resize(id, rmv_class, add_class, othis)
{
    var $el = $("#"+id);

	if((typeof rmv_class !== "undefined" && rmv_class) || (typeof add_class !== "undefined" && add_class)){
		$el.removeClass(rmv_class).addClass(add_class);

		set_cookie("ck_font_resize_rmv_class", rmv_class, 1, g5_cookie_domain);
		set_cookie("ck_font_resize_add_class", add_class, 1, g5_cookie_domain);
	}

    if(typeof othis !== "undefined"){
        $(othis).addClass('select').siblings().removeClass('select');
    }
}

/**
 * 댓글 수정 토큰
**/
function set_comment_token(f)
{
    if(typeof f.token === "undefined")
        $(f).prepend('<input type="hidden" name="token" value="">');

    $.ajax({
        url: g5_bbs_url+"/ajax.comment_token.php",
        type: "GET",
        dataType: "json",
        async: false,
        cache: false,
        success: function(data, textStatus) {
            f.token.value = data.token;
        }
    });
}

$(function(){
    $(".win_point").click(function() {
        win_point(this.href);
        return false;
    });

    $(".win_memo").click(function() {
        win_memo(this.href);
        return false;
    });

    $(".win_email").click(function() {
        win_email(this.href);
        return false;
    });

    $(".win_scrap").click(function() {
        win_scrap(this.href);
        return false;
    });

    $(".win_profile").click(function() {
        win_profile(this.href);
        return false;
    });

    $(".win_homepage").click(function() {
        win_homepage(this.href);
        return false;
    });

    $(".win_password_lost").click(function() {
        win_password_lost(this.href);
        return false;
    });

    /*
    $(".win_poll").click(function() {
        win_poll(this.href);
        return false;
    });
    */

    $(".win_coupon").click(function() {
        win_coupon(this.href);
        return false;
    });

    // 사이드뷰
    var sv_hide = false;
    $(".sv_member, .sv_guest").click(function() {
        $(".sv").removeClass("sv_on");
        $(this).closest(".sv_wrap").find(".sv").addClass("sv_on");
    });

    $(".sv, .sv_wrap").hover(
        function() {
            sv_hide = false;
        },
        function() {
            sv_hide = true;
        }
    );

    $(".sv_member, .sv_guest").focusin(function() {
        sv_hide = false;
        $(".sv").removeClass("sv_on");
        $(this).closest(".sv_wrap").find(".sv").addClass("sv_on");
    });

    $(".sv a").focusin(function() {
        sv_hide = false;
    });

    $(".sv a").focusout(function() {
        sv_hide = true;
    });

    // 셀렉트 ul
    var sel_hide = false;
    $('.sel_btn').click(function() {
        $('.sel_ul').removeClass('sel_on');
        $(this).siblings('.sel_ul').addClass('sel_on');
    });

    $(".sel_wrap").hover(
        function() {
            sel_hide = false;
        },
        function() {
            sel_hide = true;
        }
    );

    $('.sel_a').focusin(function() {
        sel_hide = false;
    });

    $('.sel_a').focusout(function() {
        sel_hide = true;
    });

    $(document).click(function() {
        if(sv_hide) { // 사이드뷰 해제
            $(".sv").removeClass("sv_on");
        }
        if (sel_hide) { // 셀렉트 ul 해제
            $('.sel_ul').removeClass('sel_on');
        }
    });

    $(document).focusin(function() {
        if(sv_hide) { // 사이드뷰 해제
            $(".sv").removeClass("sv_on");
        }
        if (sel_hide) { // 셀렉트 ul 해제
            $('.sel_ul').removeClass('sel_on');
        }
    });

    $(document).on( "keyup change", "textarea#wr_content[maxlength]", function(){
        var str = $(this).val();
        var mx = parseInt($(this).attr("maxlength"));
        if (str.length > mx) {
            $(this).val(str.substr(0, mx));
            return false;
        }
    });
});

function get_write_token(bo_table)
{
    var token = "";

    $.ajax({
        type: "POST",
        url: g5_bbs_url+"/write_token.php",
        data: { bo_table: bo_table },
        cache: false,
        async: false,
        dataType: "json",
        success: function(data) {
            if(data.error) {
                alert(data.error);
                if(data.url)
                    document.location.href = data.url;

                return false;
            }

            token = data.token;
        }
    });

    return token;
}

$(function() {
    $(document).on("click", "form[name=fwrite] input:submit, form[name=fwrite] button:submit, form[name=fwrite] input:image", function() {
        var f = this.form;

        if (typeof(f.bo_table) == "undefined") {
            return;
        }

        var bo_table = f.bo_table.value;
        var token = get_write_token(bo_table);

        if(!token) {
            alert("토큰 정보가 올바르지 않습니다.");
            return false;
        }

        var $f = $(f);

        if(typeof f.token === "undefined")
            $f.prepend('<input type="hidden" name="token" value="">');

        $f.find("input[name=token]").val(token);

        return true;
    });
});


/** 박관웅 차장이 넣은 스크립트 시작(210728) **/

/***** Trim ****************************************************************************/
String.prototype.trim = function(){
	return this.replace(/(^\s*)|(\s*$)/g, "");
}

/***** 공백제거 ************************************************************************/
String.prototype.stripspace = function() {
	return this.replace(/ /g, "");
}

/***** 파일확장자 구하기 ***************************************************************/
String.prototype.getExt = function() {
	var ext = this.substring(this.lastIndexOf(".") + 1, this.length);
	return ext;
}

/***** getElementById() ****************************************************************/
function _ID(obj){return document.getElementById(obj)}

/***** Set Cookie **********************************************************************/
function setCookie(name, value, expiredays)
{
	var todayDate = new Date();
	
	//todayDate.setTime(todayDate.getTime() + (1000*30*24*60*60));
	todayDate.setDate(todayDate.getDate() + expiredays);

	document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}

/***** 관리자레프트 메뉴열고닫히는 부분 *****************************************************/
function LeftONOFF()
{
	if(_ID('LeftMenuOn').style.display == "block")
	{
		_ID('LeftMenuOn').style.display = "none";
		_ID('LeftMenuOff').style.display = "block";
		_ID('off_btn').style.display = "block";
		document.getElementById('LeftFooter').src = "../img/left/left_footer_off.gif";

		setCookie("CK_LEFT", "off", 1);
	}
	else
	{
		_ID('LeftMenuOn').style.display = "block";
		_ID('LeftMenuOff').style.display = "none";
		_ID('off_btn').style.display = "none";
		document.getElementById('LeftFooter').src = "../img/left/left_footer_on.gif";

		setCookie("CK_LEFT", "on", 1);
	}
}

/***** 폼체크 **********************************************************************/
function chkForm(form)
{
	var len = form.elements.length;
	var typenm, tagnm, expstr, ename, e_val, r_ck;

	for(var i=0; i < len; i++)
	{
		var obj = form.elements[i];
		ename = obj.name;//인풋이름
		typenm = obj.type.toUpperCase();//인풋타입
		tagnm = obj.tagName.toUpperCase();//태그이름
		expstr = obj.getAttribute("exp");//입력한 exp
		e_val = obj.value;//인풋값

		if(expstr != null && expstr != "")
		{
			if(typenm == "SELECT-ONE")	//select
			{
				if(e_val == "")
				{
					alert(expstr + " 선택해 주세요.");
					form.elements[i].focus();
					return false;
					break;
				}
			}
			else if(typenm == "RADIO")	//radio
			{
				r_ck = "N";
				for(var j=0; j < eval("form."+ename).length; j++)
				{
					if(eval("form."+ename)[j].checked == true)
					{
						r_ck = "Y";
						break;
					}
				}

				if(r_ck == "N")
				{
					alert(expstr + " 선택해 주세요.");
					eval("form."+ename)[0].focus();
					return false;
					break;
				}
			}
			else if(typenm == "TEXT" || typenm == "PASSWORD" || typenm == "TEXTAREA" || typenm == "TEL")
			{
				if(e_val.replace(/^\s*/,'').replace(/\s*$/, '') == "")
				{
					alert(expstr + " 입력해 주세요.");
					form.elements[i].focus();
					return false;
					break;
				}
			}
			else if(typenm == "HIDDEN")
			{
				if(e_val.replace(/^\s*/,'').replace(/\s*$/, '') == "")
				{
					alert(expstr);
					return false;
					break;
				}
			}
			else if(typenm == "FILE")
			{
				if(e_val != "")
				{
					if(obj.getAttribute("filetype") != null)
					{
						var checkFile = obj.getAttribute("filetype");

						if(!chkFileType(form.elements[i], checkFile))
						{
							return false;
							break;
						}
					}
				}
				else
				{
					alert(expstr + " 선택해 주세요.");
					form.elements[i].focus();
					return false;
					break;
				}
			}
		}

		if(obj.getAttribute("chktype") != null && obj.value.length > 0)
		{
			var checkType = obj.getAttribute("chktype");

			if(checkType == "id")
			{
				if(!checkID(obj))
				{
					alert("아이디형식이 맞지 않습니다.");
					form.elements[i].value = "";
					form.elements[i].focus();
					return false;
					break;
				}
			}
			else if(checkType == "password")
			{
				if(form.pwd.value != form.pwd2.value)
				{
					alert("비밀번호가 맞지 않습니다.");
					form.pwd2.value = "";
					form.pwd2.focus();
					return false;
					break;
				}
			}
			else if(checkType == "email")
			{
				if(!checkEmail(e_val))
				{
					alert("메일주소형식이 맞지 않습니다.");
					form.elements[i].value = "";
					form.elements[i].focus();
					return false;
					break;
				}
			}
			else if(checkType == "ssn")
			{
				if(!checkSSN(form.ssn1.value, form.ssn2.value))
				{
					alert("주민번호 형식이 틀립니다.");
					form.ssn1.value = "";
					form.ssn2.value = "";
					form.ssn1.focus();
					return false;
					break;
				}
			}
			else if(checkType == "ssnone")
			{
				if(!checkSSN(obj.value.substr(0, 6), obj.value.substr(6, 7)))
				{
					alert("주민번호 형식이 틀립니다.");
					obj.value = "";
					obj.focus();
					return false;
					break;
				}
			}
			else if(checkType == "alphabet")
			{
				if(!isAlphabet(obj))
				{
					alert("영문 알파벳으로만 입력해 주세요.");
					obj.value = "";
					obj.focus();
					return false;
					break;
				}
			}
			else if(checkType == "passchk" && form.elements[i].value)
			{
				if(!checkPassword(form.elements[i]))
				{
					//alert("비밀번호는 공백없이 4자이상 12자이내의 영문, 숫자, _, - 만으로 입력해 주세요.");
					//form.elements[i].value = "";
					//form.elements[i].focus();
					return false;
					break;
				}

			}
			else if(checkType == "number")
			{
				if(!checkNumber(obj.value))
				{
					alert("숫자로만 입력해 주세요.");
					obj.value = "";
					obj.focus();
					return false;
					break;
				}
			}
		}
	}
/*
	if(typeof(myeditor) == "object")
	{
		myeditor.outputBodyHTML();
	}

	if(typeof(myeditor1) == "object")
	{
		myeditor1.outputBodyHTML();
	}

	if(typeof(myeditor2) == "object")
	{
		myeditor2.outputBodyHTML();
	}

	if(typeof(myeditor3) == "object")
	{
		myeditor3.outputBodyHTML();
	}
*/
	return true;
}

/***** 폼체크(영문) **********************************************************************/
function chkFormEng(form)
{
	var len = form.elements.length;
	var typenm, tagnm, expstr, ename, e_val, r_ck;

	for(var i=0; i < len; i++)
	{
		var obj = form.elements[i];
		ename = obj.name;//인풋이름
		typenm = obj.type.toUpperCase();//인풋타입
		tagnm = obj.tagName.toUpperCase();//태그이름
		expstr = obj.getAttribute("exp");//입력한 exp
		e_val = obj.value;//인풋값

		if(expstr != null && expstr != "")
		{
			if(typenm == "SELECT-ONE")	//select
			{
				if(e_val == "")
				{
					alert("Please Choice " + expstr);
					form.elements[i].focus();
					return false;
					break;
				}
			}
			else if(typenm == "RADIO")	//radio
			{
				r_ck = "N";
				for(var j=0; j < eval("form."+ename).length; j++)
				{
					if(eval("form."+ename)[j].checked == true)
					{
						r_ck = "Y";
						break;
					}
				}

				if(r_ck == "N")
				{
					alert("Please Choice " + expstr);
					eval("form."+ename)[0].focus();
					return false;
					break;
				}
			}
			else if(typenm == "TEXT" || typenm == "PASSWORD" || typenm == "TEXTAREA" || typenm == "TEL")
			{
				if(e_val.replace(/^\s*/,'').replace(/\s*$/, '') == "")
				{
					alert("Please Input " + expstr);
					form.elements[i].focus();
					return false;
					break;
				}
			}
			else if(typenm == "HIDDEN")
			{
				if(e_val.replace(/^\s*/,'').replace(/\s*$/, '') == "")
				{
					alert(expstr);
					return false;
					break;
				}
			}
			else if(typenm == "FILE")
			{
				if(e_val != "")
				{
					if(obj.getAttribute("filetype") != null)
					{
						var checkFile = obj.getAttribute("filetype");

						if(!chkFileType(form.elements[i], checkFile))
						{
							return false;
							break;
						}
					}
				}
				else
				{
					alert("Please Choice " + expstr);
					form.elements[i].focus();
					return false;
					break;
				}
			}
		}

		if(obj.getAttribute("chktype") != null && obj.value.length > 0)
		{
			var checkType = obj.getAttribute("chktype");

			if(checkType == "id")
			{
				if(!checkID(obj))
				{
					alert("ID format is incorrect");
					form.elements[i].value = "";
					form.elements[i].focus();
					return false;
					break;
				}
			}
			else if(checkType == "password")
			{
				if(form.pwd.value != form.pwd2.value)
				{
					alert("The password is incorrect");
					form.pwd2.value = "";
					form.pwd2.focus();
					return false;
					break;
				}
			}
			else if(checkType == "email")
			{
				if(!checkEmail(e_val))
				{
					alert("Email address format is incorrect");
					form.elements[i].value = "";
					form.elements[i].focus();
					return false;
					break;
				}
			}
			else if(checkType == "ssn")
			{
				if(!checkSSN(form.ssn1.value, form.ssn2.value))
				{
					alert("Incidental number format is incorrect");
					form.ssn1.value = "";
					form.ssn2.value = "";
					form.ssn1.focus();
					return false;
					break;
				}
			}
			else if(checkType == "ssnone")
			{
				if(!checkSSN(obj.value.substr(0, 6), obj.value.substr(6, 7)))
				{
					alert("Incidental number format is incorrect");
					obj.value = "";
					obj.focus();
					return false;
					break;
				}
			}
			else if(checkType == "alphabet")
			{
				if(!isAlphabet(obj))
				{
					alert("Please enter only the English alphabet");
					obj.value = "";
					obj.focus();
					return false;
					break;
				}
			}
			else if(checkType == "passchk" && form.elements[i].value)
			{
				if(!checkPassword(form.elements[i]))
				{
					//alert("비밀번호는 공백없이 4자이상 12자이내의 영문, 숫자, _, - 만으로 입력해 주세요.");
					//form.elements[i].value = "";
					//form.elements[i].focus();
					return false;
					break;
				}

			}
			else if(checkType == "number")
			{
				if(!checkNumber(obj.value))
				{
					alert("Please enter only numbers");
					obj.value = "";
					obj.focus();
					return false;
					break;
				}
			}
		}
	}

	if(typeof(myeditor) == "object")
	{
		myeditor.outputBodyHTML();
	}

	if(typeof(myeditor1) == "object")
	{
		myeditor1.outputBodyHTML();
	}

	if(typeof(myeditor2) == "object")
	{
		myeditor2.outputBodyHTML();
	}

	if(typeof(myeditor3) == "object")
	{
		myeditor3.outputBodyHTML();
	}

	return true;
}

/***** 폼체크(중문) **********************************************************************/
function chkFormChn(form)
{
	var len = form.elements.length;
	var typenm, tagnm, expstr, ename, e_val, r_ck;

	for(var i=0; i < len; i++)
	{
		var obj = form.elements[i];
		ename = obj.name;//인풋이름
		typenm = obj.type.toUpperCase();//인풋타입
		tagnm = obj.tagName.toUpperCase();//태그이름
		expstr = obj.getAttribute("exp");//입력한 exp
		e_val = obj.value;//인풋값

		if(expstr != null && expstr != "")
		{
			if(typenm == "SELECT-ONE")	//select
			{
				if(e_val == "")
				{
					alert("請選擇 " + expstr);
					form.elements[i].focus();
					return false;
					break;
				}
			}
			else if(typenm == "RADIO")	//radio
			{
				r_ck = "N";
				for(var j=0; j < eval("form."+ename).length; j++)
				{
					if(eval("form."+ename)[j].checked == true)
					{
						r_ck = "Y";
						break;
					}
				}

				if(r_ck == "N")
				{
					alert("請選擇 " + expstr);
					eval("form."+ename)[0].focus();
					return false;
					break;
				}
			}
			else if(typenm == "TEXT" || typenm == "PASSWORD" || typenm == "TEXTAREA" || typenm == "TEL")
			{
				if(e_val.replace(/^\s*/,'').replace(/\s*$/, '') == "")
				{
					alert("請輸入 " + expstr);
					form.elements[i].focus();
					return false;
					break;
				}
			}
			else if(typenm == "HIDDEN")
			{
				if(e_val.replace(/^\s*/,'').replace(/\s*$/, '') == "")
				{
					alert(expstr);
					return false;
					break;
				}
			}
			else if(typenm == "FILE")
			{
				if(e_val != "")
				{
					if(obj.getAttribute("filetype") != null)
					{
						var checkFile = obj.getAttribute("filetype");

						if(!chkFileType(form.elements[i], checkFile))
						{
							return false;
							break;
						}
					}
				}
				else
				{
					alert("請選擇 " + expstr);
					form.elements[i].focus();
					return false;
					break;
				}
			}
		}

		if(obj.getAttribute("chktype") != null && obj.value.length > 0)
		{
			var checkType = obj.getAttribute("chktype");

			if(checkType == "id")
			{
				if(!checkID(obj))
				{
					alert("ID格式不正确");
					form.elements[i].value = "";
					form.elements[i].focus();
					return false;
					break;
				}
			}
			else if(checkType == "password")
			{
				if(form.pwd.value != form.pwd2.value)
				{
					alert("密码不正确");
					form.pwd2.value = "";
					form.pwd2.focus();
					return false;
					break;
				}
			}
			else if(checkType == "email")
			{
				if(!checkEmail(e_val))
				{
					alert("電子郵件地址格式不正確");
					form.elements[i].value = "";
					form.elements[i].focus();
					return false;
					break;
				}
			}
			else if(checkType == "ssn")
			{
				if(!checkSSN(form.ssn1.value, form.ssn2.value))
				{
					alert("附带数字格式不正确");
					form.ssn1.value = "";
					form.ssn2.value = "";
					form.ssn1.focus();
					return false;
					break;
				}
			}
			else if(checkType == "ssnone")
			{
				if(!checkSSN(obj.value.substr(0, 6), obj.value.substr(6, 7)))
				{
					alert("附带数字格式不正确");
					obj.value = "";
					obj.focus();
					return false;
					break;
				}
			}
			else if(checkType == "alphabet")
			{
				if(!isAlphabet(obj))
				{
					alert("请只输入英文字母");
					obj.value = "";
					obj.focus();
					return false;
					break;
				}
			}
			else if(checkType == "passchk" && form.elements[i].value)
			{
				if(!checkPassword(form.elements[i]))
				{
					//alert("비밀번호는 공백없이 4자이상 12자이내의 영문, 숫자, _, - 만으로 입력해 주세요.");
					//form.elements[i].value = "";
					//form.elements[i].focus();
					return false;
					break;
				}

			}
			else if(checkType == "number")
			{
				if(!checkNumber(obj.value))
				{
					alert("請只輸入數字");
					obj.value = "";
					obj.focus();
					return false;
					break;
				}
			}
		}
	}

	if(typeof(myeditor) == "object")
	{
		myeditor.outputBodyHTML();
	}

	if(typeof(myeditor1) == "object")
	{
		myeditor1.outputBodyHTML();
	}

	if(typeof(myeditor2) == "object")
	{
		myeditor2.outputBodyHTML();
	}

	if(typeof(myeditor3) == "object")
	{
		myeditor3.outputBodyHTML();
	}

	return true;
}

/***** 업로드 파일 체크 ***************************************************************/
function chkFileType(obj, type)
{
	var ext = obj.value.getExt().toLowerCase();
	//alert(obj.value.getExt());
	if(type == "image")
	{
		if(ext != "gif" && ext != "jpg" && ext != "jpeg" && ext != "png" && ext != "bmp")
		{
			alert("이미지파일(gif, jpg, png, bmp)만 업로드 가능합니다.");
			obj.focus();
			return false;
		}
	}
	else if(type == "swf")
	{
		if(ext != "swf")
		{
			alert("플래쉬파일(swf)만 업로드 가능합니다.");
			obj.focus();
			return false;
		}
	}
	else if(type == "xml")
	{
		if(ext != "xml")
		{
			alert("xml 파일만 업로드 가능합니다.");
			obj.focus();
			return false;
		}
	}

	return true;
}

/***** 아이디체크 *****************************************************************/
function checkID(obj)
{
	var id = obj.value;
	var patten = /^[a-zA-Z0-9]{1}[a-zA-Z0-9_-]{3,19}$/;

	if(!patten.test(id))
		return false;
	else
		return true;
}

/***** 비밀번호체크 ***********************************************************/
function checkPass(obj)
{
	var str = obj.value;
	//var patten = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
	//var patten = /^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
	var patten = /^.{5,}$/;

	if(!patten.test(str))
		return false;
	else
		return true;
}

function checkPassword(obj)
{
	var pw = obj.value;

	//if(!/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/.test(pw))
	//if(!/^(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/.test(pw))
	if(!/^.{5,}$/.test(pw))
	{
		//alert('비밀번호는 하나의 대문자, 하나의 특수 문자 및 영숫자를 포함하여 8자이상이어야 합니다.');
		//alert('비밀번호는 소문자,숫자,특수문자를 포함하여 8자이상이어야 합니다. [사용가능한 특수문자 : #?!@$%^&*-]');
		alert('비밀번호는 5자이상이어야 합니다.');
		obj.value = "";
		obj.focus();
		return false;
	}

	/*
	if(!/^[a-zA-Z0-9]{10,20}$/.test(pw) || pw.indexOf(' ') > -1) 
	{
		alert('비밀번호는 숫자와 영문자 조합으로 10~20자리를 사용해야 합니다.');
		obj.value = "";
		obj.focus();
		return false;
	}
	
	var chk_num = pw.search(/[0-9]/g);
	var chk_eng = pw.search(/[a-z]/ig);
	
	if(chk_num < 0 || chk_eng < 0)
	{
		alert('비밀번호는 숫자와 영문자를 혼용하여야 합니다.');
		obj.value = "";
		obj.focus();
		return false;
	}
	
	if(/(\w)\1\1\1/.test(pw))
	{
		alert('비밀번호에 같은 문자를 4번 이상 사용하실 수 없습니다.');
		obj.value = "";
		obj.focus();
		return false;
	}
	*/

	return true;
}

/***** 숫자형체크 *********************************************************************/
function checkNumber(nNumber)
{ 
    var anum=/(^\d+$)|(^\d+\.\d+$)/ ;

    if (anum.test(nNumber))
        return true; 
    else 
        return false; 
}

/***** 이메일체크 **********************************************************************/
function checkEmail(email)
{
	if(email.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) != -1)
		return true;
	else
		return false;
}

/***** 알파벳체크 ******************************************************************/
function isAlphabet(obj)
{ 
	var str = obj.value;

	if(str.length == 0) return false;
	str = str.toUpperCase();
	
	for(var i=0; i < str.length; i++)
		if(!('A' <= str.charAt(i) && str.charAt(i) <= 'Z')) return false;
	
	return true;
}

/***** 주민번호체크 ***********************************************************************/
function checkSSN(ssn1, ssn2)
{
	var ssn = ssn1 + ssn2;
	var patten = /^\d{6}[1234]\d{6}$/;
	var chk = 0;

	if(!patten.test(ssn)) return false;

	for(var i=0; i<=5; i++)
	{
		chk = chk + ((i % 8 + 2) * parseInt(ssn1.substring(i, i + 1)));
	}

	for(var i=6; i<=11; i++)
	{
		chk = chk + ((i % 8 + 2) * parseInt(ssn2.substring(i-6, i-5)));
	}

	chk = 11 - (chk % 11);
	chk = chk % 10;

	if (chk != ssn2.substring(6, 7))
		return false;
	else
		return true;
}

/***** 체크박스 전체체크 *********************************************************************/
function allCheck(field)
{
	var cbox = document.getElementsByName(field);

	for(var i=0; i < cbox.length; i++)
	{
		if(cbox[i].disabled == false)
			cbox[i].checked = (cbox[i].checked) ? false : true;
	}
}

/***** 한개라도 체크되지 않으면 리턴 *********************************************************************/
function isChecked(obj, msg)
{
	if(!obj) return;

	if(typeof(obj) != "object")
		obj = document.getElementsByName(obj);

	if(obj)
	{
		for(var i=0; i < obj.length; i++)
			if(obj[i].checked) var isChecked = true;
	}

	if(isChecked)
		return true;
	else
	{
		var msg = (msg) ? msg : "선택된 항목이 없습니다.";
		alert(msg);
		return false;
	}
}

/***** 레이어 팝업 열기*********************************************************************/
function layerPopUp(url, w, h, bg, scroll)
{
	if(document.getElementById("ContentLayer")) PopupLayerClose();

	w = (w) ? w : 650;
	h = (h) ? h : 500;
	bg = (bg) ? bg : "#000000";
	scroll = (scroll) ? scroll : "yes";

	var bodyW = document.body.clientWidth;
	var bodyH = document.body.clientHeight;

	var layerX = (bodyW-w) / 2;
	var layerY = (bodyH-h) / 2;

	var obj = document.createElement("div");
	with(obj.style)
	{
		position = "absolute";
		left = 0;
		top = 0;
		zIndex = "1000";
		width = "100%";
		//height = document.body.scrollHeight + "px";
		height=(document.body.scrollHeight > document.documentElement.scrollHeight) ? document.body.scrollHeight+"px" : document.documentElement.scrollHeight+"px";
		backgroundColor = bg;
		filter = "Alpha(Opacity=50)";
		opacity = "0.5";
	}
	obj.id = "layerback";
	document.body.appendChild(obj);
	
	var obj = document.createElement("div");
	with(obj.style)
	{
		position = "absolute";
		zIndex = "1001";
		left = layerX + document.body.scrollLeft + "px";
		top = layerY + document.body.scrollTop + "px";
		width = w + "px";
		height = h + "px";
		backgroundColor = "#ffffff";
		border = "3px solid #000000";
	}
	obj.id = "ContentLayer";
	document.body.appendChild(obj);

	var btm = document.createElement("div");
	with(btm.style)
	{
		position = "absolute";
		width = "100%";
		height = 30+"px";
		zIndex = "1001";
		left = 0;
		top = (h - 33) + "px";
		padding = "4px 0 0 0";
		textAlign = "center";
		backgroundColor = "#000000";
		color = "#ffffff";
		font = "bold 13px tahoma; letter-spacing:0px";
	}
	btm.innerHTML = "<a href=\"javascript:PopupLayerClose();\" style=\"color:#ffffff;\"> CLOSE </a>";
	obj.appendChild(btm);

	var ifm = document.createElement("iframe");
	with(ifm.style)
	{
		width = (w - 6) + "px";
		height = (h - 20) + "px";
	}
	ifm.frameBorder = 0;
	ifm.src = url;
	ifm.scrolling = scroll;

	obj.appendChild(ifm);
}

/***** 레이어 팝업 닫기 ***************************************************************/
function PopupLayerClose()
{
	document.getElementById('layerback').parentNode.removeChild(document.getElementById('layerback'));
	document.getElementById('ContentLayer').parentNode.removeChild(document.getElementById('ContentLayer'));
}

/***** 해당오브젝트의 활성/비활성 ***************************************************************/
function ObjDisabled(obj, bo)
{
	if(bo)
	{
		if(obj.type == "checkbox")
			obj.checked = false;
		else if(obj.type == "select-one")
			obj.selectedIndex = 0;

		obj.disabled = true;
		obj.style.backgroundColor = "#f1f1f1";
	}
	else
	{
		obj.disabled = false;
		obj.style.backgroundColor = "#ffffff";
	}
}

/***** 패스워드폼 ***************************************************************/
function PasswordForm(mode, code, data, rurl)
{
	var bwidth = document.body.clientWidth;
	var bheigh = document.documentElement.clientHeight;
	//var test =$(window).scrollTop();
	//var bheigh = (document.body.scrollHeight > document.documentElement.scrollHeight) ? document.body.scrollHeight+"px" : document.documentElement.scrollHeight+"px";
	//var bheigh1 = document.body.clientHeight;
	//var bheigh2 = document.body.scrollHeight;
	//var bheigh3 = document.body.offsetHeight;
	var layerX = (bwidth-300) / 2;
	var layerY = (bheigh / 2)-200;
	//var layerY = (bheigh-200) / 2;
	//alert(test);
	//alert(bheigh);
	//alert(bheigh2);
	//alert(bheigh3);
	var html = '';
	
	html = "<form name=\"pwdfm\" action=\"../board/check.pwd.php\" method=\"post\" onSubmit=\"return chkForm(this);\" target=\"hiddenFrame\">";
	html += "<input type=\"hidden\" name=\"mode\" value=\""+mode+"\" />";
	html += "<input type=\"hidden\" name=\"code\" value=\""+code+"\"/>";
	html += "<input type=\"hidden\" name=\"encData\" value=\""+data+"\"/>";
	html += "<input type=\"hidden\" name=\"rurl\" value=\""+rurl+"\"/>";
	html += "<table cellpadding=\"0\" cellspacing=\"0\" class=\"PassLayer\">";
	html += "<colgroup><col width=\"30\" /><col /><col width=\"30\" /></colgroup>";
	html += "<tr>";
	html += "<td><img src=\"../img/layer/ly_top1.gif\" alt=\"\" /></td>";
	html += "<td class=\"bg_top\"></td>";
	html += "<td><img src=\"../img/layer/ly_top2.gif\" alt=\"\" /></td>";
	html += "</tr><tr>";
	html += "<td class=\"bg_left\"></td>";
	html += "<td align=\"center\" valign=\"top\">";
	html += "<h2><img src=\"../img/layer/pass_lay_tit.gif\" alt=\"비밀번호 입력\" /></h2>";
	html += "<dl><dt><img src=\"../img/layer/ly_pwd.gif\" alt=\"비밀번호\"  /></dt>";
	html += "<dd><input type=\"password\" name=\"pwd\" class=\"lbox w80\" exp=\"비밀번호를 \"/></dd>";
	html += "</dl><input type=\"image\" src=\"../img/layer/btn_layer_ok.gif\" alt=\"입력완료\" />";
	html += "<div class=\"line\"></div></td>";
	html += "<td class=\"bg_right\"></td></tr>";
	html += "<tr><td><img src=\"../img/layer/ly_btm1.gif\" alt=\"\" /></td><td class=\"bg_btm\"></td>";
	html += "<td><img src=\"../img/layer/ly_btm2.gif\" alt=\"레이어닫기\" class=\"hand\" onClick=\"LayerClose();\" /></td></tr></table>";
	html += "</form>";

	var obj = document.createElement("div");
	with (obj.style){
		position = "absolute";
		zIndex = "1000";
		left = 0;
		top = 0;
		width = "100%";
		//height = "100%";
		//height = document.body.scrollHeight+"px";
		height = (document.body.scrollHeight > document.documentElement.scrollHeight) ? document.body.scrollHeight+"px" : document.documentElement.scrollHeight+"px",
		//height = document.body.clientHeight;
		backgroundColor = "#000000";
		filter = "Alpha(Opacity=30)";
		opacity = "0.5";
	}
	obj.id = "LayerBg";
	document.body.appendChild(obj);

	var obj = document.createElement("div");
	with (obj.style){
		position = "absolute";
		zIndex = "1001";
		left = layerX + document.body.scrollLeft+"px";
		//top = layerY + document.body.scrollTop+"px";
		top = layerY + $(window).scrollTop()+"px";
		width = 313;
		height = 175;
		backgroundColor = "#ffffff";
		//obj.style.backgroundImage = "url('/img/qna_bg.gif')";
		//obj.style.backgroundRepeat = "no-repeat";
		border = "3px solid #000000";
	}
	obj.id = "LayerContent";
	
	obj.innerHTML = html;
	document.body.appendChild(obj);
	//$('#LayerContent').slideDown("slow").draggable();
	$("#LayerContent").slideDown("slow");
}

/***** 패스워드폼메인에서비밀글접근용 ***************************************************************/
function PasswordFormI(mode, code, data, rurl ,rtnm)
{
	var bwidth = document.body.clientWidth;
	var bheigh = document.documentElement.clientHeight;
	//var test =$(window).scrollTop();
	//var bheigh = (document.body.scrollHeight > document.documentElement.scrollHeight) ? document.body.scrollHeight+"px" : document.documentElement.scrollHeight+"px";
	//var bheigh1 = document.body.clientHeight;
	//var bheigh2 = document.body.scrollHeight;
	//var bheigh3 = document.body.offsetHeight;
	var layerX = (bwidth-300) / 2;
	var layerY = (bheigh / 2)-200;
	//var layerY = (bheigh-200) / 2;
	//alert(test);
	//alert(bheigh);
	//alert(bheigh2);
	//alert(bheigh3);
	var html = '';
	
	html = "<form name=\"pwdfm\" action=\""+rtnm+"/board/check.pwd.php\" method=\"post\" onSubmit=\"return chkForm(this);\" target=\"hiddenFrame\">";
	html += "<input type=\"hidden\" name=\"mode\" value=\""+mode+"\" />";
	html += "<input type=\"hidden\" name=\"code\" value=\""+code+"\"/>";
	html += "<input type=\"hidden\" name=\"encData\" value=\""+data+"\"/>";
	html += "<input type=\"hidden\" name=\"rurl\" value=\""+rurl+"\"/>";
	html += "<table cellpadding=\"0\" cellspacing=\"0\" class=\"PassLayer\">";
	html += "<colgroup><col width=\"30\" /><col /><col width=\"30\" /></colgroup>";
	html += "<tr>";
	html += "<td><img src=\""+rtnm+"/img/layer/ly_top1.gif\" alt=\"\" /></td>";
	html += "<td class=\"bg_top\"></td>";
	html += "<td><img src=\""+rtnm+"/img/layer/ly_top2.gif\" alt=\"\" /></td>";
	html += "</tr><tr>";
	html += "<td class=\"bg_left\"></td>";
	html += "<td align=\"center\" valign=\"top\">";
	html += "<h2><img src=\""+rtnm+"/img/layer/pass_lay_tit.gif\" alt=\"비밀번호 입력\" /></h2>";
	html += "<dl><dt><img src=\""+rtnm+"/img/layer/ly_pwd.gif\" alt=\"비밀번호\"  /></dt>";
	html += "<dd><input type=\"password\" name=\"pwd\" class=\"lbox w80\" exp=\"비밀번호를 \"/></dd>";
	html += "</dl><input type=\"image\" src=\""+rtnm+"/img/layer/btn_layer_ok.gif\" alt=\"입력완료\" />";
	html += "<div class=\"line\"></div></td>";
	html += "<td class=\"bg_right\"></td></tr>";
	html += "<tr><td><img src=\""+rtnm+"/img/layer/ly_btm1.gif\" alt=\"\" /></td><td class=\"bg_btm\"></td>";
	html += "<td><img src=\""+rtnm+"/img/layer/ly_btm2.gif\" alt=\"레이어닫기\" class=\"hand\" onClick=\"LayerClose();\" /></td></tr></table>";
	html += "</form>";

	var obj = document.createElement("div");
	with (obj.style){
		position = "absolute";
		zIndex = "1000";
		left = 0;
		top = 0;
		width = "100%";
		//height = "100%";
		//height = document.body.scrollHeight+"px";
		height = (document.body.scrollHeight > document.documentElement.scrollHeight) ? document.body.scrollHeight+"px" : document.documentElement.scrollHeight+"px",
		//height = document.body.clientHeight;
		backgroundColor = "#000000";
		filter = "Alpha(Opacity=30)";
		opacity = "0.5";
	}
	obj.id = "LayerBg";
	document.body.appendChild(obj);

	var obj = document.createElement("div");
	with (obj.style){
		position = "absolute";
		zIndex = "1001";
		left = layerX + document.body.scrollLeft+"px";
		//top = layerY + document.body.scrollTop+"px";
		top = layerY + $(window).scrollTop()+"px";
		width = 313;
		height = 175;
		backgroundColor = "#ffffff";
		//obj.style.backgroundImage = "url('/img/qna_bg.gif')";
		//obj.style.backgroundRepeat = "no-repeat";
		border = "3px solid #000000";
	}
	obj.id = "LayerContent";
	
	obj.innerHTML = html;
	document.body.appendChild(obj);
	//$('#LayerContent').slideDown("slow").draggable();
	$("#LayerContent").slideDown("slow");
}

/***** 패스워드폼(상품문의 전용) ***************************************************************/
function PasswordFormQ(mode, gidx, data, rurl)
{
	var bwidth = document.body.clientWidth;
	var bheigh = document.documentElement.clientHeight;
	//var test =$(window).scrollTop();
	//var bheigh = (document.body.scrollHeight > document.documentElement.scrollHeight) ? document.body.scrollHeight+"px" : document.documentElement.scrollHeight+"px";
	//var bheigh1 = document.body.clientHeight;
	//var bheigh2 = document.body.scrollHeight;
	//var bheigh3 = document.body.offsetHeight;
	var layerX = (bwidth-300) / 2;
	var layerY = (bheigh / 2)-100;
	//var layerY = (bheigh-200) / 2;
	//alert(test);
	//alert(bheigh);
	//alert(bheigh2);
	//alert(bheigh3);
	var html = '';
	
	html = "<form name=\"pwdfm\" action=\"./check.pwd.Q.php\" method=\"post\" onSubmit=\"return chkForm(this);\" target=\"hiddenFrame\">";
	html += "<input type=\"hidden\" name=\"mode\" value=\""+mode+"\" />";
	html += "<input type=\"hidden\" name=\"gidx\" value=\""+gidx+"\"/>";
	html += "<input type=\"hidden\" name=\"encData\" value=\""+data+"\"/>";
	html += "<input type=\"hidden\" name=\"rurl\" value=\""+rurl+"\"/>";
	html += "<table cellpadding=\"0\" cellspacing=\"0\" class=\"PassLayer\">";
	html += "<colgroup><col width=\"30\" /><col /><col width=\"30\" /></colgroup>";
	html += "<tr>";
	html += "<td><img src=\"../img/layer/ly_top1.gif\" alt=\"\" /></td>";
	html += "<td class=\"bg_top\"></td>";
	html += "<td><img src=\"../img/layer/ly_top2.gif\" alt=\"\" /></td>";
	html += "</tr><tr>";
	html += "<td class=\"bg_left\"></td>";
	html += "<td align=\"center\" valign=\"top\">";
	html += "<h2><img src=\"../img/layer/pass_lay_tit.gif\" alt=\"비밀번호 입력\" /></h2>";
	html += "<dl><dt><img src=\"../img/layer/ly_pwd.gif\" alt=\"비밀번호\"  /></dt>";
	html += "<dd><input type=\"password\" name=\"pwd\" size=\"20\" class=\"lbox\" exp=\"비밀번호를 \"/></dd>";
	html += "</dl><input type=\"image\" src=\"../img/layer/btn_layer_ok.gif\" alt=\"입력완료\" />";
	html += "<div class=\"line\"></div></td>";
	html += "<td class=\"bg_right\"></td></tr>";
	html += "<tr><td><img src=\"../img/layer/ly_btm1.gif\" alt=\"\" /></td><td class=\"bg_btm\"></td>";
	html += "<td><img src=\"../img/layer/ly_btm2.gif\" alt=\"레이어닫기\" class=\"hand\" onClick=\"LayerClose();\" /></td></tr></table>";
	html += "</form>";

	var obj = document.createElement("div");
	with (obj.style){
		position = "absolute";
		zIndex = "1000";
		left = 0;
		top = 0;
		width = "100%";
		//height = "100%";
		//height = document.body.scrollHeight+"px";
		height = (document.body.scrollHeight > document.documentElement.scrollHeight) ? document.body.scrollHeight+"px" : document.documentElement.scrollHeight+"px",
		//height = document.body.clientHeight;
		backgroundColor = "#000000";
		filter = "Alpha(Opacity=30)";
		opacity = "0.5";
	}
	obj.id = "LayerBg";
	document.body.appendChild(obj);

	var obj = document.createElement("div");
	with (obj.style){
		position = "absolute";
		zIndex = "1001";
		left = layerX + document.body.scrollLeft+"px";
		//top = layerY + document.body.scrollTop+"px";
		top = layerY + $(window).scrollTop()+"px";
		width = 313;
		height = 175;
		backgroundColor = "#ffffff";
		//obj.style.backgroundImage = "url('/img/qna_bg.gif')";
		//obj.style.backgroundRepeat = "no-repeat";
		border = "3px solid #000000";
	}
	obj.id = "LayerContent";
	
	obj.innerHTML = html;
	document.body.appendChild(obj);
	//$('#LayerContent').slideDown("slow").draggable();
	$("#LayerContent").slideDown("slow");
}

/***** 패스워드폼(상품후기 전용) ***************************************************************/
function PasswordFormR(mode, gidx, data, rurl)
{
	var bwidth = document.body.clientWidth;
	var bheigh = document.documentElement.clientHeight;
	//var test =$(window).scrollTop();
	//var bheigh = (document.body.scrollHeight > document.documentElement.scrollHeight) ? document.body.scrollHeight+"px" : document.documentElement.scrollHeight+"px";
	//var bheigh1 = document.body.clientHeight;
	//var bheigh2 = document.body.scrollHeight;
	//var bheigh3 = document.body.offsetHeight;
	var layerX = (bwidth-300) / 2;
	var layerY = (bheigh / 2)-100;
	//var layerY = (bheigh-200) / 2;
	//alert(test);
	//alert(bheigh);
	//alert(bheigh2);
	//alert(bheigh3);
	var html = '';
	
	html = "<form name=\"pwdfm\" action=\"./check.pwd.R.php\" method=\"post\" onSubmit=\"return chkForm(this);\" target=\"hiddenFrame\">";
	html += "<input type=\"hidden\" name=\"mode\" value=\""+mode+"\" />";
	html += "<input type=\"hidden\" name=\"gidx\" value=\""+gidx+"\"/>";
	html += "<input type=\"hidden\" name=\"encData\" value=\""+data+"\"/>";
	html += "<input type=\"hidden\" name=\"rurl\" value=\""+rurl+"\"/>";
	html += "<table cellpadding=\"0\" cellspacing=\"0\" class=\"PassLayer\">";
	html += "<colgroup><col width=\"30\" /><col /><col width=\"30\" /></colgroup>";
	html += "<tr>";
	html += "<td><img src=\"../img/layer/ly_top1.gif\" alt=\"\" /></td>";
	html += "<td class=\"bg_top\"></td>";
	html += "<td><img src=\"../img/layer/ly_top2.gif\" alt=\"\" /></td>";
	html += "</tr><tr>";
	html += "<td class=\"bg_left\"></td>";
	html += "<td align=\"center\" valign=\"top\">";
	html += "<h2><img src=\"../img/layer/pass_lay_tit.gif\" alt=\"비밀번호 입력\" /></h2>";
	html += "<dl><dt><img src=\"../img/layer/ly_pwd.gif\" alt=\"비밀번호\"  /></dt>";
	html += "<dd><input type=\"password\" name=\"pwd\" size=\"20\" class=\"lbox\" exp=\"비밀번호를 \"/></dd>";
	html += "</dl><input type=\"image\" src=\"../img/layer/btn_layer_ok.gif\" alt=\"입력완료\" />";
	html += "<div class=\"line\"></div></td>";
	html += "<td class=\"bg_right\"></td></tr>";
	html += "<tr><td><img src=\"../img/layer/ly_btm1.gif\" alt=\"\" /></td><td class=\"bg_btm\"></td>";
	html += "<td><img src=\"../img/layer/ly_btm2.gif\" alt=\"레이어닫기\" class=\"hand\" onClick=\"LayerClose();\" /></td></tr></table>";
	html += "</form>";

	var obj = document.createElement("div");
	with (obj.style){
		position = "absolute";
		zIndex = "1000";
		left = 0;
		top = 0;
		width = "100%";
		//height = "100%";
		//height = document.body.scrollHeight+"px";
		height = (document.body.scrollHeight > document.documentElement.scrollHeight) ? document.body.scrollHeight+"px" : document.documentElement.scrollHeight+"px",
		//height = document.body.clientHeight;
		backgroundColor = "#000000";
		filter = "Alpha(Opacity=30)";
		opacity = "0.5";
	}
	obj.id = "LayerBg";
	document.body.appendChild(obj);

	var obj = document.createElement("div");
	with (obj.style){
		position = "absolute";
		zIndex = "1001";
		left = layerX + document.body.scrollLeft+"px";
		//top = layerY + document.body.scrollTop+"px";
		top = layerY + $(window).scrollTop()+"px";
		width = 313;
		height = 175;
		backgroundColor = "#ffffff";
		//obj.style.backgroundImage = "url('/img/qna_bg.gif')";
		//obj.style.backgroundRepeat = "no-repeat";
		border = "3px solid #000000";
	}
	obj.id = "LayerContent";
	
	obj.innerHTML = html;
	document.body.appendChild(obj);
	//$('#LayerContent').slideDown("slow").draggable();
	$("#LayerContent").slideDown("slow");
}

function LayerClose()
{
	//document.getElementById('LayerBg').style.display = "none";
	//document.getElementById('LayerContent').style.display = "none";

	document.getElementById('LayerBg').parentNode.removeChild(document.getElementById('LayerBg'));
	document.getElementById('LayerContent').parentNode.removeChild(document.getElementById('LayerContent'));

	//$('#LayerContent').slideUp("fast");
	//document.getElementById('LayerBg').parentNode.removeChild(document.getElementById('LayerBg'));
	//document.getElementById('LayerContent').parentNode.removeChild(document.getElementById('LayerContent'));
}

function CmtPassForm(pobj, code, num, rtnm)
{
	var obj = document.getElementById('CmtPwdLayer');
	if(obj != null) obj.parentNode.removeChild(obj);
	var html = "";
	html = "<form name=\"cmtform\" action=\""+rtnm+"/board/board.act.php\" method=\"post\" onSubmit=\"return chkForm(this);\" target=\"hiddenFrame\">";
	html += "<input type=\"hidden\" name=\"num\" value=\""+num+"\" />";
	html += "<input type=\"hidden\" name=\"mode\" value=\"chkpwd\" />";
	html += "<input type=\"hidden\" name=\"code\" value=\""+code+"\"/>";
	html += "<input type=\"hidden\" name=\"act\" value=\"cmtd\" />";
	html += "<input type=\"password\" id=\"pwd\" name=\"pwd\" class=\"lbox\" align=\"absmiddle\" exp=\"비밀번호를 \"/> ";
	html += "<input type=\"image\" src=\""+rtnm+"/img/common_btn_cmt_ok.gif\" title=\"확인\" align=\"absmiddle\" /> ";
	html += "<img src=\""+rtnm+"/img/common_btn_cmt_cancel.gif\" alt=\"취소\" align=\"absmiddle\" class=\"hand\" onClick=\"javascript:document.getElementById('CmtPwdLayer').parentNode.removeChild(document.getElementById('CmtPwdLayer'));\" />";
	html += "</form>";


	obj = document.createElement("span");
	obj.id = "CmtPwdLayer";
	obj.style.width = "270px";
	obj.style.border = "#dddddd 1px solid";
	obj.style.padding = "3px";
	obj.style.backgroundColor = "#ffffff";
	obj.style.position = "absolute";

	if(pobj.innerHTML.toLowerCase().indexOf('img') != -1)
	{
		obj.style.marginTop = "0px";
		obj.style.marginLeft = "-250px";
	}
	else
	{
		obj.style.marginTop = "0px";
		obj.style.marginLeft = "-120px";
	}

	obj.innerHTML = html;
	pobj.parentNode.insertBefore(obj, pobj.previousSibling);
	document.getElementById('pwd').focus();
}

function ReviewPassForm(pobj, gidx, num, rtnm)
{
	var obj = document.getElementById('CmtPwdLayer');
	if(obj != null) obj.parentNode.removeChild(obj);
	var html = "";
	html = "<form name=\"cmtform\" action=\""+rtnm+"/goods/review.act.php\" method=\"post\" onSubmit=\"return chkForm(this);\" target=\"hiddenFrame\">";
	html += "<input type=\"hidden\" name=\"num\" value=\""+num+"\" />";
	html += "<input type=\"hidden\" name=\"mode\" value=\"chkpwd\" />";
	html += "<input type=\"hidden\" name=\"gidx\" value=\""+gidx+"\"/>";
	html += "<input type=\"hidden\" name=\"act\" value=\"cmtd\" />";
	html += "<input type=\"password\" id=\"pwd\" name=\"pwd\" class=\"lbox\" align=\"absmiddle\" exp=\"비밀번호를 \"/> ";
	html += "<input type=\"image\" src=\""+rtnm+"/img/common_btn_cmt_ok.gif\" title=\"확인\" align=\"absmiddle\" /> ";
	html += "<img src=\""+rtnm+"/img/common_btn_cmt_cancel.gif\" alt=\"취소\" align=\"absmiddle\" class=\"hand\" onClick=\"javascript:document.getElementById('CmtPwdLayer').parentNode.removeChild(document.getElementById('CmtPwdLayer'));\" />";
	html += "</form>";


	obj = document.createElement("span");
	obj.id = "CmtPwdLayer";
	obj.style.width = "270px";
	obj.style.border = "#dddddd 1px solid";
	obj.style.padding = "3px";
	obj.style.backgroundColor = "#ffffff";
	obj.style.position = "absolute";

	//if(pobj.innerHTML.toLowerCase().indexOf('img') != -1)
	//{
		obj.style.marginTop = "0px";
		obj.style.marginLeft = "-250px";
	//}

	obj.innerHTML = html;
	pobj.parentNode.insertBefore(obj, pobj.previousSibling);
	document.getElementById('pwd').focus();
}

/***** Make Category SelectBox(수정 및 보안 요구)  ********************************************************/
function MakeCateBox(name, cnt, val, type, formnm)
{
	cnt = (cnt) ? cnt : 1;
	if(type == "multiple") type = "multiple style=\"width:160px;height:96px;\"";

	for(var i=0; i < cnt; i++)
	{
		document.write("<select "+ type +" name='"+ name + "' idx=" + i + " onChange='chgCategory(this, "+(i+1)+")' class='sbox'></select>");
	}

	oForm = eval("document.forms['" + formnm + "']");
	if(oForm == null) 
		this.oCate = eval("document.forms[0]['" + name +"']");
	else
		this.oCate = eval("document." + oForm.name + "['" + name + "']"); 

	if(cnt == 1)
		this.oCate = new Array(this.oCate);

	this.CateBoxInit = CateBoxInit;
	this.CateBoxSet = CateBoxSet;
	this.getCate = getCate;
	this.getRequest = getRequest;
	this.chgCategory = chgCategory;
	this.CateBoxInit(0);

	function CateBoxInit()
	{
		this.CateBoxSet();
		this.getCate(this.oCate[0]);
	}

	function CateBoxSet(depth)
	{
		i = (depth) ? depth : 0;

		for(i=0; i < cnt; i++)
		{
			if(this.oCate[i])
				this.oCate[i].options[0] = new Option("-- "+(i+1)+"차 상품분류 --", "");
		}
	}

	function getCate(obj)
	{
		for(i=0; i < cnt; i++)
		{
			this.getRequest(this.oCate[i]);
		}
	}

	function getRequest(obj)
	{
		idx = obj.getAttribute("idx");
		val = (obj.value) ? obj.value : val; 
		
		$.getJSON("/common/category.json.php?idx="+idx+"&val="+val, function(data){
			if(data)
			{
				$.each(data, function(index, entry){
					Opt = document.createElement("OPTION");
					Opt.text = entry["name"];
					Opt.value = entry["code"];
					obj.options.add(Opt);

					if(entry["selected"])
						obj.selectedIndex = index+1;
				});
			}
		});
	}

	function chgCategory(obj, depth)
	{
		var name = obj.name;
		value = obj.value;
		sObj = this.oCate[depth];

		for(var i = depth; i <= document.getElementsByName(name).length; i++)
		{
			if(this.oCate[i])
			{
				SelectRemoveAll(this.oCate[i]);
				this.oCate[i].options[0] = new Option("-- "+(i+1)+"차 분류선택 --", "");
			}
		}

		$.getJSON("/common/category.json.php?val="+value+"&idx="+depth, function(data){
			if(data)
			{
				$.each(data, function(index, entry){
					Opt = document.createElement("OPTION");
					Opt.text = entry["name"];
					Opt.value = entry["code"];
					sObj.options.add(Opt);

					if(entry["selected"])
						sObj.selectedIndex = index+1;
				});
			}
		});
	}
}

/***** Make Category SelectBox(수정 및 보안 요구)  ********************************************************/
function MakeCateBox2(name, cnt, val, type, formnm)
{
	cnt = (cnt) ? cnt : 1;
	if(type == "multiple") type = "multiple style=\"width:160px;height:96px;\"";

	for(var i=0; i < cnt; i++)
	{
		document.write("<select "+ type +" name='"+ name + "' idx=" + i + " onChange='chgCategory(this, "+(i+1)+")' class='sbox'></select>");
	}

	oForm = eval("document.forms['" + formnm + "']");
	if(oForm == null) 
		this.oCate = eval("document.forms[0]['" + name +"']");
	else
		this.oCate = eval("document." + oForm.name + "['" + name + "']"); 

	if(cnt == 1)
		this.oCate = new Array(this.oCate);

	this.CateBoxInit = CateBoxInit;
	this.CateBoxSet = CateBoxSet;
	this.getCate = getCate;
	this.getRequest = getRequest;
	this.chgCategory = chgCategory;
	this.CateBoxInit(0);

	function CateBoxInit()
	{
		this.CateBoxSet();
		this.getCate(this.oCate[0]);
	}

	function CateBoxSet(depth)
	{
		i = (depth) ? depth : 0;

		for(i=0; i < cnt; i++)
		{
			if(this.oCate[i])
				this.oCate[i].options[0] = new Option("-- "+(i+1)+"차 상품분류 --", "");
		}
	}

	function getCate(obj)
	{
		for(i=0; i < cnt; i++)
		{
			this.getRequest(this.oCate[i]);
		}
	}

	function getRequest(obj)
	{
		idx = obj.getAttribute("idx");
		val = (obj.value) ? obj.value : val; 
		
		$.getJSON("/common/category2.json.php?idx="+idx+"&val="+val, function(data){
			if(data)
			{
				$.each(data, function(index, entry){
					Opt = document.createElement("OPTION");
					Opt.text = entry["name"];
					Opt.value = entry["code"];
					obj.options.add(Opt);

					if(entry["selected"])
						obj.selectedIndex = index+1;
				});
			}
		});
	}

	function chgCategory(obj, depth)
	{
		var name = obj.name;
		value = obj.value;
		sObj = this.oCate[depth];

		for(var i = depth; i <= document.getElementsByName(name).length; i++)
		{
			if(this.oCate[i])
			{
				SelectRemoveAll(this.oCate[i]);
				this.oCate[i].options[0] = new Option("-- "+(i+1)+"차 분류선택 --", "");
			}
		}

		$.getJSON("/common/category2.json.php?val="+value+"&idx="+depth, function(data){
			if(data)
			{
				$.each(data, function(index, entry){
					Opt = document.createElement("OPTION");
					Opt.text = entry["name"];
					Opt.value = entry["code"];
					sObj.options.add(Opt);

					if(entry["selected"])
						sObj.selectedIndex = index+1;
				});
			}
		});
	}
}

/***** Make sigungu SelectBox(수정 및 보안 요구)  ********************************************************/
function MakeSigunguBox(name, cnt, val, type, formnm)
{
	cnt = (cnt) ? cnt : 1;
	if(type == "multiple") type = "multiple style=\"width:160px;height:96px;\"";

	for(var i=0; i < cnt; i++)
	{
		document.write("<select "+ type +" name='"+ name + "' idx=" + i + " onChange='chgCategory(this, "+(i+1)+")' class='sbox'></select>");
	}

	oForm = eval("document.forms['" + formnm + "']");
	if(oForm == null) 
		this.oCate = eval("document.forms[0]['" + name +"']");
	else
		this.oCate = eval("document." + oForm.name + "['" + name + "']"); 

	if(cnt == 1)
		this.oCate = new Array(this.oCate);

	this.CateBoxInit = CateBoxInit;
	this.CateBoxSet = CateBoxSet;
	this.getCate = getCate;
	this.getRequest = getRequest;
	this.chgCategory = chgCategory;
	this.CateBoxInit(0);

	function CateBoxInit()
	{
		this.CateBoxSet();
		this.getCate(this.oCate[0]);
	}

	function CateBoxSet(depth)
	{
		i = (depth) ? depth : 0;

		for(i=0; i < cnt; i++)
		{
			if(this.oCate[i])
				this.oCate[i].options[0] = new Option("-- "+(i+1)+"차 시군구분류 --", "");
		}
	}

	function getCate(obj)
	{
		for(i=0; i < cnt; i++)
		{
			this.getRequest(this.oCate[i]);
		}
	}

	function getRequest(obj)
	{
		idx = obj.getAttribute("idx");
		val = (obj.value) ? obj.value : val; 
		
		$.getJSON("/common/sigungu.json.php?idx="+idx+"&val="+val, function(data){
			if(data)
			{
				$.each(data, function(index, entry){
					Opt = document.createElement("OPTION");
					Opt.text = entry["name"];
					Opt.value = entry["code"];
					obj.options.add(Opt);

					if(entry["selected"])
						obj.selectedIndex = index+1;
				});
			}
		});
	}

	function chgCategory(obj, depth)
	{
		var name = obj.name;
		value = obj.value;
		sObj = this.oCate[depth];

		for(var i = depth; i <= document.getElementsByName(name).length; i++)
		{
			if(this.oCate[i])
			{
				SelectRemoveAll(this.oCate[i]);
				this.oCate[i].options[0] = new Option("-- "+(i+1)+"차 분류선택 --", "");
			}
		}

		$.getJSON("/common/sigungu.json.php?val="+value+"&idx="+depth, function(data){
			if(data)
			{
				$.each(data, function(index, entry){
					Opt = document.createElement("OPTION");
					Opt.text = entry["name"];
					Opt.value = entry["code"];
					sObj.options.add(Opt);

					if(entry["selected"])
						sObj.selectedIndex = index+1;
				});
			}
		});
	}
}

/***** SelectBox Option Add ************************************************************/
function SelectAdd(obj, text, val)
{
	var nOpt = document.createElement("OPTION");
	nOpt.text = text;
	nOpt.value = val;
	obj.options.add(nOpt);
}

/***** SelectBox Option All Delete *****************************************************/
function SelectRemoveAll(obj)
{
	for(var i=obj.length-1; i >= 0; i--)
		SelectRemoveList(obj, i);
}

/***** SelectBox Option Delete *********************************************************/
function SelectRemoveList(obj, i)
{
	obj.remove(i);
}

/***** NumberFormat ********************************************************************/
function NumberFormat(number)
{
	var arr = new Array();
	number = String(number);

	for(var i=1; i <= number.length; i++)
	{
		if(i%3)
			arr[number.length-i] = number.charAt(number.length-i);
		else
			arr[number.length-i] = ","+number.charAt(number.length-i);
	}

	return arr.join('').replace(/^,/,'');
}

/***** Comma Delete ********************************************************************/
function stripComma(number)
{
	var reg = /(,)*/g;

	number = String(number).replace(reg, "");

	return number;
}

/***** 통화형태로 변환 *****************************************************************/
function toCurrency(obj)
{
	if(obj.disabled) return false;

	var num = obj.value.stripspace();

	if(num == "") return false;

	if(!checkNumber(stripChar(num)))
	{
		num = stripChar(num, false);
		obj.blur();
		obj.focus();
	}

	num = stripChar(stripComma(num), false);
	num = removePreZero(num);
	obj.value = NumberFormat(num);
}

/***** 숫자문자열의 '0' 시작문자 제거 **************************************************/
function removePreZero(str)
{
	var i, result;

	if(str == "0") return str;

	for(i=0; i < str.length; i++)
		if(str.substr(i,1) != "0") break;

	result = str.substr(i, str.length-i);
	return result;
}

/***** 문자열 제거 *********************************************************************/
function stripChar(val, isDec)
{
	var i;
	var minus = "-";
	var number = "1234567890"+((isDec) ? "." : "");
	var result = "";

	for(i=0; i < val.length; i++)
	{
		chkno = val.charAt(i);

		if(i == 0 && chkno == minus)
		{
			result += minus;
		}
		else
		{
			for(j=0; j < number.length; j++)
			{
				if(chkno == number.charAt(j))
				{
					result += number.charAt(j);
					break;
				}
			}
		}
	}

	return result;
}

/***** Layer Open **********************************************************************/
function OpenLayer(id, mode)
{
	var obj = document.getElementById(id);

	if(mode)
		obj.style.display = mode;
	else
		obj.style.display = (obj.style.display != "none") ? "none" : "block";

}

/***** checkbox 체크수 제한 ************************************************************/
function ChkLimit(obj, max)
{
	var name = obj.name;
	var gobj = document.getElementsByName(name);
	var chkcnt = 0;

	for(var i=0; i < gobj.length; i++)
	{
		if(gobj[i].checked)
			chkcnt++;
	}

	if(obj.checked && chkcnt > max)
	{
		alert("최대 "+max+"개까지 체크 가능합니다.");
		obj.checked = false;
	}
}

/***** CheckBox ==> Radio **************************************************************/
function SingleChk(obj)
{
	var allObj = document.getElementsByName(obj.name);
	
	for(var i=0; i < allObj.length; i++)
	{
		if(allObj[i] == obj)
			allObj[i].checked = (obj.checked) ? true : false;
		else
			allObj[i].checked = false;
	}
}

/***** Flash Patch *********************************************************************/
function setEmbed() 
{ 
	var obj = new String; 
	var parameter = new String; 
	var embed = new String; 
	var html = new String; 
	var allParameter = new String; 
	var clsid = new String; 
	var codebase = new String; 
	var pluginspace = new String; 
	var embedType = new String; 
	var src = new String; 
	var width = new String; 
	var height = new String; 
	
	this.init = function( getType , s ,w , h ){ 
		
		if(getType == "flash") 
		{ 
			clsid = "D27CDB6E-AE6D-11cf-96B8-444553540000";        
			codebase = "http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0"; 
			pluginspage = "http://www.macromedia.com/go/getflashplayer"; 
			embedType = "application/x-shockwave-flash"; 
		} 
		/* type 추가 
		else if ( ) 
		{ 
		} 
		*/
		
		parameter += "<param name='movie' value='"+ s + "'>\n";  
		parameter += "<param name='quality' value='high'>\n";    
		src = s; 
		width = w; 
		height = h; 
	} 
	
	this.parameter = function( parm , value ) {      
		parameter += "<param name='"+parm +"' value='"+ value + "'>\n";        
		allParameter += " "+parm + "='"+ value+"'"; 
	}  
	
	this.show = function() { 
		if(clsid) 
			obj = "<object classid=\"clsid:"+ clsid +"\" codebase=\""+ codebase +"\" width='"+ width +"' height='"+ height +"'>\n"; 
		
		embed = "<embed src='" + src + "' pluginspage='"+ pluginspage + "' type='"+ embedType + "' width='"+ width + "' height='"+ height +"'"+ allParameter +" ></embed>\n"; 
		
		if(obj) 
			embed += "</object>\n"; 
		
		html = obj + parameter + embed; 
		
		document.write( html );  
	} 
}

/***** Quick Scroll ********************************************************************/
function QuickScroll(g,id)
{
	var obj = document.getElementById(id);

	obj.scrollTop += g;
}

/***** Select Box Layer ****************************************************************/
function selectBoxView(id)
{
	_ID(id).style.display = "block";
}

function selectBoxHide(id)
{
	_ID(id).style.display = "none";
}

/***** Get Cookie **********************************************************************/
function getCookie(name)
{
	var nameOfCookie = name + "=";
	var x = 0;

	while (x <= document.cookie.length)
	{
		var y = (x + nameOfCookie.length);

		if (document.cookie.substring(x, y) == nameOfCookie) 
		{
			if((endOfCookie = document.cookie.indexOf(";", y)) == -1)
				endOfCookie = document.cookie.length;
				
			return unescape( document.cookie.substring( y, endOfCookie ) );
		}

		x = document.cookie.indexOf(" ", x) + 1;

		if(x == 0)
			break;
	}

	return "";
}

/***** Focus 테두리 삭제 ********************************************************************/
/*
function bluring()
{ 
	if(event.srcElement.tagName=='A' || event.srcElement.tagName=='IMG')
		document.body.focus(); 
}
document.onfocusin=bluring; 

function LeftONOFF()
{
	if(_ID('LeftMenuOn').style.display == "block")
	{
		_ID('LeftMenuOn').style.display = "none";
		_ID('LeftMenuOff').style.display = "block";
		_ID('off_btn').style.display = "block";
		document.getElementById('LeftFooter').src = "../img/left/left_footer_off.gif";

		setCookie("CK_LEFT", "off", 1);
	}
	else
	{
		_ID('LeftMenuOn').style.display = "block";
		_ID('LeftMenuOff').style.display = "none";
		_ID('off_btn').style.display = "none";
		document.getElementById('LeftFooter').src = "../img/left/left_footer_on.gif";

		setCookie("CK_LEFT", "on", 1);
	}
}
*/
/*** time count ********************************************************************/
function TimeCount()
{
	s++;

	if(s == 60)
	{
		s = 0;
		m++;
	}

	if(m == 60)
	{
		m = 0;
		h++;
	}

	if(h == 24)
	{
		s = 0;
		m = 0;
		h = 0;
	}

	var str_h = h.toString();
	var str_m = m.toString();
	var str_s = s.toString();

	str_h = (h < 10) ? '0'+str_h : str_h;
	str_m = (m < 10) ? '0'+str_m : str_m;
	str_s = (s < 10) ? '0'+str_s : str_s;

	var time = str_h+"시 "+str_m+"분 "+str_s+"초";

	document.getElementById('stime').innerHTML = time;
	window.setTimeout("TimeCount()", 1000);
}

/*** iframe resize *********************************************************************/
function resizeIframe(obj, id)
{
	//obj.setExpression('width', "");

	obj.setExpression('height', eval(id + '.document.body.scrollHeight') + 20);
	obj.setExpression('width', eval(id + '.document.body.scrollWidth'));
}

function ShowFlash(url, width, height){
        document.write('<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="' + width + '" height="' + height + '" VIEWASTEXT>');
        document.write('<param name="movie" value="' + url + '">');
        document.write('<param name="quality" value="high">');
        document.write('<param name="wmode" value="transparent">');
        document.write('<embed src="' + url + '" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="' + width + '" height="' + height + '"></embed>');
        document.write('</object>');
}

/** swap img */
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

/***BookMark(즐겨찾기) *********************************************************************/
function addBookMark(url, title)
{
	var browser = navigator.userAgent.toLowerCase();

	if(window.sidebar)			//Mozilla, Firefox, Netscape
		window.sidebar.addPanel(title, url, "");
	else if(window.external)	//IE, Chrome
	{
		if(browser.indexOf("chrome") == -1)
			window.external.AddFavorite(url, title);
		else
			alert("CTRL + D 또는 Command + D를 눌러 즐겨찾기에 추가해 주세요.");
	}
	else if(window.opera && window.print)	//Opera
	{
		return true;
	}
	else if(browser.indexOf("konqueror") != -1)
	{
		alert("CTRL + B를 눌러 즐겨찾기에 추가해 주세요.");
	}
	else if(browser.indexOf("webkit") != -1)
	{
		alert("CTRL + B 또는 Command + B를 눌러 즐겨찾기에 추가해 주세요.");
	}
	else
	{
		alert("사용하고 계시는 브라우저에서는 즐겨찾기가 지원되지 않습니다.");
	}
}

/***새로 추가 *********************************************************************/
/*
function showLayerFancy()
{
	isIE6 = (typeof(document.body.style.maxHeight) === 'undefined');
    var bHeight = getDocHeight();
    var default_style = {'position':'absolute', 'width': '100%', 'height': bHeight, 'background':'url(/img/bg_dot.png)'};
	var url = "/swadm/login_test.php";

	 $.getJSON('/swadm/aa.php', {test: 'subscribe'}, function(resp){
        $('#fancybox-overlay').removeAttr('style');
        $('#fancybox-overlay').css(default_style).fadeIn('fast',function(){
			var oDiv = document.createElement('div');
			$(oDiv).attr('id', 'subsWrap').appendTo(document.body);
			placeSubscribe();
            $(oDiv).hide().load(url).fadeIn('fast');
            $(window).bind('resize', placeSubscribe);
            if (isIE6)
				$(window).bind('scroll', placeSubscribe);
        });
       // if (callback) callback();
    });
}

function showFancyLayer(url, callback)
{
    isIE6 = (typeof(document.body.style.maxHeight) === 'undefined');
    var bHeight = getDocHeight();
    var default_style = {'width': '100%', 'height': bHeight, 'background':'url(/img/bg_dot.png)'};

    $.getJSON('/abtest/query', {test: 'subscribe'}, function(resp){
        $('#fancybox-overlay').removeAttr('style');
        $('#fancybox-overlay').css(default_style).fadeIn('fast',function(){
            var oDiv = document.createElement('div');
            $(oDiv).attr('id', 'subsWrap').appendTo(document.body);
            placeSubscribe();
            $(oDiv).hide().load(url).fadeIn('fast');
            $(window).bind('resize', placeSubscribe);
            if (isIE6)
            $(window).bind('scroll', placeSubscribe);
        });
        if (callback) callback();
    });
}

function getDocHeight() {
    var D = document;
    return Math.max(
        Math.max(D.body.scrollHeight, D.documentElement.scrollHeight),
        Math.max(D.body.offsetHeight, D.documentElement.offsetHeight),
        Math.max(D.body.clientHeight, D.documentElement.clientHeight)
    );
}

var $w = $(window);
var $d = $(document);
function placeSubscribe(height)
{
    var $subsWrap = $('#subsWrap');
	var $subscribe = $('.subscribe');
	if($subsWrap.length==0) return false;

    var height = $subscribe.length==0 ? $subsWrap.height() : $subscribe.height();
	var width = $subsWrap.width();

    var bodyH = $w.height();

    var isIE6 = (typeof(document.body.style.maxHeight) === 'undefined');
    if (isIE6)
    {
        var sTop = $d.scrollTop();
        var tTop = Math.max(20, sTop + Math.floor((bodyH-height)/2));
        $subsWrap.css({'width':width,height:height,'position':'absolute','top':tTop+'px'});
    }
    else
    {
        var tTop = Math.max(20, Math.floor((bodyH-height)/2));
        var tLeft =  ($w.width()-width)/2;
        $subsWrap.css({'width':width,height:height,'position':'fixed','top':tTop+'px','left':tLeft+'px'});
    }
}
*/
/***3pod 서버에서 쓰는 주소찾기(20140116) *********************************************************************/
function getZipcode(pos)
{
	window.open("/common/zip.find.php?pos="+pos, "zipcode", "width=600, height=400, scrollbars=yes");
}

/***3pod 서버에서 쓰는 주소찾기(20140116) *********************************************************************/
function getZipcode2(pos)
{
	window.open("/common/zipcode/zip2.php?pos="+pos, "zipcode", "width=500, height=442, scrollbars=yes");
}

/***배송지관리 팝업창***/
function getZipPop()
{
	window.open("/common/zip.pop.php", "zippop", "width=1200, height=400, scrollbars=yes");
}

/***보안코드처리***/
function getNewCrypt()
{
	document.hiddenFrame.location.href = "/lib/new.crypt.php";
}

/***폼이름받아서 처리***/
function formSubmit(fname)
{
	f = eval("document." + fname)

	result = chkForm(f);
	if(result == true)
	{
		f.submit();
	}
}

/***이메일선택하기***/
function emailSelect()
{
	var obj = $("select[name=email_select]").val();
	$('input:text[name="email2"]').val(obj);
}

function emailSelect2()
{
	var obj = $("select[name=email_select2]").val();
	$('input:text[name="ship_email2"]').val(obj);
}

function emailSelectUser()
{
	var obj = $("select[name=email_select_user]").val();
	$('input:text[name="user_email2"]').val(obj);
}

function emailSelectShip()
{
	var obj = $("select[name=email_select_ship]").val();
	$('input:text[name="ship_email2"]').val(obj);
}

/** 박관웅 차장이 넣은 스크립트 끝(210728) **/