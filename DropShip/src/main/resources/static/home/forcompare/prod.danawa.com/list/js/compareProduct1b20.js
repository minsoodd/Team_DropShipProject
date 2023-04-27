let differentHighlight = false;
$(function() {
    function setFixScrollLayer() {
        // 하단
        var bottomTitleList = $(".scroll_head_bottom tbody tr");
        var bottomContentList = $(".scroll_data_bottom tbody tr");
    
        bottomTitleList.each(function(i){
            // 둘 중 높은 높이 구하기 -> trHeight로 저장
            var trHeight = $(this).height() > $(bottomContentList[i]).height() ? $(this).height() : $(bottomContentList[i]).height();
    
            // IE7를 위해 높이 값 양쪽 다 지정
            $(this).height(trHeight);
            $(bottomContentList[i]).height(trHeight);
        });
    
        // 틀고정 영역 높이 변수
        var totalHeight = $(window).height() - 54 - 43; // 시안 상 맞출 전체 높이 값 647-닫기버튼 높이 43 ( 상단 영역 높이 + 하단 영역 높이 = 647)-(닫기 버튼 높이 = 43)
        var topTableHeight = $("#scroll_head_top .comp_table").outerHeight(); // 상단 data 테이블 높이 값
        var bottomHeight = totalHeight - topTableHeight; // 하단 영역 높이 값 (전체 - 상단)
        
        // 틀고정 영역 높이 적용
        $(".fix_area_top").css("height", topTableHeight); // 상단 틀고정 영역 높이 data 테이블 높이로 조절
        $(".fix_area_bottom").css("height", bottomHeight); // 하단 영역 높이 조절
        
        // 스크롤바 너비 찾기 (브라우저마다 스크롤바 너비가 다를 수 있고, 모바일은 스크롤바가 너비를 가지지 않음)
        var inner = document.createElement("div"),
        outer = inner.cloneNode(),
        scrollWidth = 0; // 스크롤바 너비 변수
        
        // 스크롤바를 만들기 위한 가상 요소
        outer.style.overflow = "scroll";
        outer.style.width = "200px";
        outer.appendChild(inner);
    
        // 문서내에 넣어 스크롤바 너비 확인 한 뒤, 가상요소 삭제
        document.body.appendChild(outer);
        scrollWidth = outer.offsetWidth - inner.offsetWidth;
        document.body.removeChild(outer);
    
        // 좌측 및 상단 영역 스크롤바 크기만큼 공백 지정
        // 스크롤바 숨기기 위한 padding 조절
        $(".scroll_hide").css({paddingRight : scrollWidth, paddingBottom : scrollWidth});
        // 상단 조절
        $(".fix_data_top").css("marginRight", scrollWidth);
        // 좌측 하단 높이 조절
        $(".fix_head_bottom").css("height", bottomHeight - scrollWidth);
        $("#scroll_head_bottom").css({height : bottomHeight, paddingBottom : 0});
    }
    
    /**
    * 필터링 레이어 열기/닫기
    */
    function toggleFilterLayer(action) {
        var filterWrap = $('#filterWrap');
        var filterLayer = $('#filterLayer');
    
        if(filterWrap.hasClass('layer_show') === false && action === 'show') {
            filterWrap.addClass('layer_show');
            filterLayer.show();
        } else if(filterWrap.hasClass('layer_show') && action === 'hide') {
            filterWrap.removeClass('layer_show');
            filterLayer.hide();
        }
    }

    /**
     * 차이점 강조 버튼
     */
    $(".btn_highlight").click(function(e) {
        e.preventDefault();
        if ($(this).hasClass('active')) {
            // 비활성
            $(this).removeClass('active');
            differentHighlight = false;
        } else {
            // 활성
            $(this).addClass('active');
            differentHighlight = true;
        }
        toggleDifferentHighlight(differentHighlight);
    });

    function toggleDifferentHighlight(active) {
        if (active === true) {
            $(".comp_table tr.highlight td").each(function(seq, optionValue) {
                $(optionValue).addClass('highlight');
            });
        } else {
            $(".comp_table tr.highlight td").each(function(seq, optionValue) {
                $(optionValue).removeClass('highlight');
            });
        }
    }

    /**
     * 차이점 강조 행 찾기
     */
    function checkDifferentOption() {
        const optionValueTr = $(".comp_table tr.optionValue")
        $(".comp_table tr.highlight td").each(function(seq, optionValue) {
            $(optionValue).removeClass('highlight');
        });
        optionValueTr.removeClass('highlight');
        $(".comp_table tr.optionValue").each(function(index, optionValue) {
            let optionValueTrClass = '';
            let optionValueName = '';
            $(optionValue).find('td').each(function (optionNameIndex, optionNameTd) {
                const optionNameTemp = $(optionNameTd).find('.item_wrap').text();
                if (optionValueName != '') {
                    if (optionValueName != optionNameTemp) {
                        // 첫번째 속성값과 비교했을때 값이 다르면 체크
                        optionValueTrClass = 'highlight';
                    }
                } else {
                    optionValueName = optionNameTemp;
                }
            });
            $(this).addClass(optionValueTrClass);
        });
    }
    
    /**
     * 공유 레이어 열기/닫기
     */
    function toggleShareLayer(action) {
        var shareButton = $('#shareButton');
        var shareLayer = $('#shareLayer');
    
        if(action === 'show') {
            shareButton.addClass('select');
            shareLayer.addClass('show').show();
        } else if(action === 'hide') {
            shareButton.removeClass('select');
            shareLayer.removeClass('show').hide();
        }
    }
    
    /**
     * SNS 공유 팝업 열기
     */
    function openSnsSharePopup(snsType) {
        var title = $('meta[property="og:title"]').attr('content') || '[다나와 상품비교]';
        var imageUrl = $('meta[property="og:image"]').attr('content') || 'http://img.danawa.com/new/tour/img/logo/sns_danawa.jpg';
        var description = $('meta[property="og:description"]').attr('content') || '비교하고 잘 사는, 다나와';
    
        if(snsType === 'KAKAOTALK') {
            try {
                if(Kakao) {
                    Kakao.init('c827ebe85abdbcc3886ca4e06b2c6a92');
                }
            } catch(error) {}
    
            var linkUrl = $('#shareUrlWrapper').data('clipboard-text') || '';
    
            if(linkUrl) {
                Kakao.Link.sendDefault({
                    objectType: 'feed',
                    content: {
                        title: title,
                        description: description,
                        imageUrl: imageUrl,
                        link: {
                            mobileWebUrl: linkUrl,
                            webUrl: linkUrl,
                        }
                    },
                    buttons: [{
                        title: '웹으로 보기',
                        link: {
                            mobileWebUrl: linkUrl,
                            webUrl: linkUrl
                        }
                    }]
                });
            }
        } else {
            //팝업창 중앙정렬
            var windowWidth = 517; //창의 가로 길이
            var windowHeight = 543; //창의 세로 길이
            var screenX = (window.screen.width / 2) - (windowWidth / 2);
            var screenY = (window.screen.height / 2) - (windowHeight / 2);
            
            var danawaUrl = (location.host.indexOf('-local') !== -1) ? 'http://www-local.danawa.com' : (location.host.indexOf('-t') !== -1 ? 'http://www-t.danawa.com' : 'http://www.danawa.com');
            var shareUrl = $('#shareUrlWrapper').data('clipboard-text') || '';

            if(shareUrl) {
                window.open(
                    danawaUrl + '/main/share/danawaSnsShareApi.php?' + $.param({
                        'snsType': snsType,
                        'content': title,
                        'url': shareUrl
                    }), 
                    'popupSns', 
                    'width=' + windowWidth + ', height=' + windowHeight + ', left=' + screenX + ', top=' + screenY + ', screenX=' + screenX + ', screenY=' + screenY
                );
            } else {
                alert('URL 정보가 없습니다.\n페이지 새로고침(F5) 후 다시 시도해 주세요.');
                return;
            }
        }
    }

    // TR 배열 변수 선언
    // 상단
    var topTitleList = $(".scroll_head_top tbody tr");
    var topContentList = $(".scroll_data_top tbody tr");

    topTitleList.each(function(i){
        // 둘 중 높은 높이 구하기 -> trHeight로 저장
        var trHeight = $(this).height() > $(topContentList[i]).height() ? $(this).height() : $(topContentList[i]).height();

        // IE7를 위해 높이 값 양쪽 다 지정
        $(this).height(trHeight);
        $(topContentList[i]).height(trHeight);
    });

    setFixScrollLayer();
    checkDifferentOption();

    // IE의 스크롤 범위 안맞는 것 교정 (소수점에 의한 1-2px 오차 발생)
    var headBottom = document.getElementById("scroll_head_bottom"); // 하단 표 제목 요소
    var dataBottom = document.getElementById("scroll_data_bottom"); // 하단 표 내용 요소

    if (headBottom.scrollHeight !== dataBottom.scrollHeight) { // 양쪽 스크롤 영역 내용 높이가 다를경우 (IE)
        $(dataBottom).css("paddingBottom", "+=1");
    }

    //옵션 타이틀 영역과 옵션 값 영역 스크롤을 동시에 할 수 있게 하는 스크립트
    var dataTop = document.getElementById("scroll_data_top"); // 상단 표 내용
    //headBottom = document.getElementById("scroll_head_bottom"); // 하단 표 제목
    //dataBottom = document.getElementById("scroll_data_bottom"); // 하단 표 내용

    // 스크롤 이벤트 정보 엘리먼트 객체.scrollInfo 에 저장
    // el : 같이 스크롤 할 엘리먼트, direct : 스크롤 방향 (수평-Left, 수직-Top)
    // 단, target 배열 요소와 direct 배열 요소의 순서는 동일해야 함.
    dataTop.scrollInfo = {
        el : [dataBottom],
        direct : ["Left"]
    };
    headBottom.scrollInfo = {
        el : [dataBottom],
        direct : ["Top"]
    };
    dataBottom.scrollInfo = {
        el : [dataTop, headBottom],
        direct : ["Left", "Top"]
    };

    /**
     * 스크롤 동작
     */
    $("#scroll_head_bottom").css("overflow-y", "hidden");

    $("#scroll_data_bottom").on("scroll", function() { //수직 스크롤
        $("#scroll_head_bottom").scrollTop($("#scroll_data_bottom").scrollTop());
        $("#scroll_data_top").scrollLeft($("#scroll_data_bottom").scrollLeft());
    });

    $("#scroll_data_top").on("scroll", function() { //수평 스크롤
        $("#scroll_data_bottom").scrollLeft($("#scroll_data_top").scrollLeft());
    }).on("mousewheel", function(event) {
        var currentScrollLeft = $(this).scrollLeft();
        var deltaY = (event.deltaY * -1) * 100;
        var nextScrollLeft = currentScrollLeft + deltaY;

        $(this).scrollLeft(nextScrollLeft);

        return false;
    });

    $.ajax({
        type: "GET",
        url: "/list/ajax/getCompareProductMallList.ajax.php",
        data: { productCodes: $('#productCompareArea').data('productcodes') || '' },
        success: function(data) {
            $("tr.mall_list_layer").html(data);
            setFixScrollLayer();
        }
    });

    //공유 & 인쇄 버튼
    $('#shareButton, #shareLayerCloseButton, #printButton').on('click', function(event) {
        event.preventDefault();

        if(event.currentTarget.id === 'shareButton') {
            toggleShareLayer('show');
        } else if(event.currentTarget.id === 'shareLayerCloseButton') {
            toggleShareLayer('hide');
        } else if(event.currentTarget.id === 'printButton') {
            window.print();
        }
    });

    //SNS 공유 버튼
    $('#snsShareButtonList a').on('click', function(event) {
        event.preventDefault();

        var snsType = $(event.currentTarget).data('snstype') || '';
        if(snsType) {
            openSnsSharePopup(snsType.toUpperCase());
        }
    });

    //공유 URL 복사
    $('#shareUrl, #shareUrlCopyButton').on('click', function(shareUrlEvent) {
        shareUrlEvent.preventDefault();

        var clipboard = new ClipboardJS('#shareUrlWrapper');

        clipboard.on('success', function() {
            toggleShareLayer('hide');

            var shareCompleteLayer = $('#shareCompleteLayer');
            var shareCompleteLayerCloseButton = $('#shareCompleteLayerCloseButton');

            shareCompleteLayer.show(0, function() {
                shareCompleteLayerCloseButton.one('click', function(shareLayerEvent) {
                    shareLayerEvent.preventDefault();
                    shareCompleteLayer.hide();
                });

                setTimeout(function() {
                    shareCompleteLayerCloseButton.off('click');
                    shareCompleteLayer.hide();
                }, 2000);
            });

            clipboard.destroy();
        });
        clipboard.on('error', function() {
            alert('URL 복사에 실패하였습니다.\n페이지 새로고침(F5) 후 다시 시도해 주세요.');
            toggleShareLayer('hide');
            clipboard.destroy();
        });
    });

    //필터링 레이어 열기/닫기
    $('#filterLayerOpenButton, #filterLayerCloseButton').on('click', function(event) {
        event.preventDefault();

        if(event.currentTarget.id === 'filterLayerOpenButton') {
            toggleFilterLayer('show');
        } else if(event.currentTarget.id === 'filterLayerCloseButton') {
            toggleFilterLayer('hide');
        }
    });

    //옵션 체크
    $("#optionListArea li span a").on("click", function() {
        $(this).parent().parent("li").toggleClass("on");
    });

    //필터 옵션 적용
    $("#okBtn").on("click", function() {
        var oSelectList = $("#optionListArea li.on");

        if(oSelectList.length > 0) {
            $(".optionName").hide();
            $(".optionValue").hide();
            $.each(oSelectList, function(index, oValue) {
                var nAttributeSeq = $(this).attr("data-seq");
                $("#optionName_" + nAttributeSeq).show();
                $(".optionValue_" + nAttributeSeq).show();
            });
        } else {
            $(".optionName").show();
            $(".optionValue").show();
        }

        toggleFilterLayer('hide');
    });

    //필터 옵션 초기화
    $("#resetBtn").on("click", function() {
        $("#optionListArea li").removeClass("on");
    });

    //noImg 처리
    $(".thumb_img").on("error", function() {
        $(this).off("error").attr("src", "//img.danawa.com/new/noData/img/noImg_160.gif");
    });

    // 관심상품 담기
    $(".btn_interest").on("click", function(e) {
        e.preventDefault();
        const productCode = $(this).data('prodCode');
        const _this = $(this);
        if($(this).hasClass('active')) {
            $.post(location.origin + '/info/ajax/deleteInterestProduct.ajax.php', { 'nProductCode': productCode })
            .done(function(data) {
                if(data['result'] > 0) {
                    _this.removeClass('active');
                    return;
                } else if(data['result'] === 0) {
                    alert('삭제할 관심상품이 없습니다.');
                    return;
                } else {
                    _this.danawaAddProductToWishList(productCode, 'list_compare_popup');
                }
            });
        } else {
            _this.danawaAddProductToWishList(productCode, 'list_compare_popup');
        }
    });

    // 상품 삭제
    $(".prod_delete_btn").on("click", function(e) {
        e.preventDefault();
        const productCode = $(this).data('prodCode');
        const productCount = $(".fix_data_top table tbody tr:first td").length;
        if (productCount > 1) {
            $(".compareProductItem_" + productCode).remove();
            setTimeout(function() {
                checkDifferentOption();
                toggleDifferentHighlight(differentHighlight);
            }, 200);
        } else {
            // 상품이 1개라면 창 닫기
            window.open('','_self').close(); 
            if(!window.closed) {
                // 부모창이 존재하지 않으면 브라우저 보안정책으로 창닫기가 동작하지 않음
                alert('마지막 상품은 삭제되지 않습니다. 비교하기를 종료하려면 창을 닫아주세요.');
            }
        }
    });

    //영역 외 클릭
    $(document).on('click', function(event) {
        //필터 레이어 닫기
        var currentTarget = $(event.target);
        if(currentTarget.parents('#filterLayer').length === 0 && currentTarget.parents('#filterLayerOpenButton').length === 0 && currentTarget.is('#filterLayerOpenButton') === false) {
            toggleFilterLayer('hide');
        }
        if(currentTarget.parents('#shareLayer').length === 0 && currentTarget.parents('#shareButton').length === 0 && currentTarget.is('#shareButton') === false) {
            toggleShareLayer('hide');
        }
    });

    $(window).resize(function() {
        setFixScrollLayer();
    });

    $("#filterLayerOpenButton").click(function() {
        _trkEventLog('15상품리스트_비교_상세화면_옵션');
    });
    $(".btn_highlight").click(function() {
        _trkEventLog('15상품리스트_비교_상세화면_차이점강조');
    });
    $(".btn_interest ").click(function() {
        _trkEventLog('15상품리스트_비교_상세화면_관심상품 저장');
    });
    $(".prod_delete_btn").click(function() {
        _trkEventLog('15상품리스트_비교_상세화면_상품삭제');
    });
});