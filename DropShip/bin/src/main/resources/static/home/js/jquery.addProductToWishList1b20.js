(function ($) {
    var aWL = (addProductToWishList = function (selector, prodCode, servicePage, cate_c1, cate_c2, price) {
        var selectors = {
            clickButton: null, //Ŭ���� ��ư
            parentLayer: null, //�ֻ�� �θ� ���̾�
            mainLayer: null, //���ɻ�ǰ��� �ֻ�� Layer
            wishListLayer: null, //���ɻ�ǰ�������� ��� Layer
            //wishListTitleLayer		:	null,			//���ɻ�ǰ�������� Ÿ��Ʋ Layer
            wishListUlLayer: null, //���ɻ�ǰ�������� ���� Layer
            wishAsideLayer: null, //����ϰ��ɻ�ǰ�������� Layer
            toastLayer: null, //�佺Ʈ Layer
            nonLogincompleteLayer: null, //��α��� ���ɻ�ǰ ���Ϸ� Layer
            bundleWishSelectLayer: null, //���� ��ǰ ���ÿ� dl Layer
            bundleWishFolderLayer: null, //���� ��ǰ ���� ���� dl Layer
            wishFolderDivLayer: null, //���� ��ǰ ���� ���� div Layer
            wishSaveLayer: null //���� ��ǰ �Ѱ� ���� ���� ���� div Layer
        };

        var options = {
            memberId: null,
            prodCode: null,
            servicePage: null,
            serviceType: 0,
            serviceTypName: '���ɻ�ǰ',
            estimateYN: 'N',
            cate_c1: cate_c1,
            cate_c2: cate_c2,
            price: 0
        };

        /*
         * ����Ÿ��
         * search:				���հ˻�,
         * search_bundle:		���հ˻�(������ǰ/�̹����� ������),
         * search_image:		���հ˻�(������ǰ �̹�����),
         * list:				����Ʈ,
         * list_bundle:			����Ʈ(������ǰ/�̹����� ����),
         * list_compare:		��ǰ�񱳷��̾�,
         * list_compare_popup:	��ǰ���˾�,
         * info:				��α�,
         * gnb_recent:			�ֱٺ���ǰ
         * keyword:				�α�˻���
         */
        //����Ÿ��()
        options.servicePage = servicePage;
        options.prodCode = prodCode;
        options.price = price;
        selectors.clickButton = selector;

        switch (servicePage) {
            case 'list':
            case 'list_bundle':
            case 'search':
            case 'search_image':
            case 'search_bundle':
                selectors.parentLayer = selector.parent().parent().parent().parent();
                break;
            case 'info_new':
                selectors.parentLayer = selector.parent().parent().parent();
                break;
            case 'gnb_recent':
                selectors.parentLayer = selector.parent().parent();
                break;
            case 'keyword':
                selectors.parentLayer = selector.parents('.recom_goods');
                break;
            case 'list_compare_popup':
                selectors.parentLayer = selector.parent();
                break;
            default:
                selectors.parentLayer = selector.parent();
        }

        this.sel = selectors;
        this.opt = options;

        this.init();
    });

    aWL.prototype = {
        init: function () {
            //�ϳ��� ���ɻ�ǰ ���̾ ��쵵�� ���� ����� ���̾� ����
            if ($('.inte_folder_layer').length > 0) {
                $('.inte_folder_layer').remove();
            }
            this.makeWishListLayer();
        },

        /*
         * ���ɻ�ǰ ��� ���̾� ����
         * ���񽺺� ���̾� ��ġ�� ����
         */
        makeWishListLayer: function () {
            var sel = this.sel;
            var opt = this.opt;
            var mainLayer = $(document.createElement('DIV')); //�ܺη��̾�
            var wishListLayer = $(document.createElement('DIV')); //�α��λ��� ����Ʈ���̾�
            var nonLogincompleteLayer = $(document.createElement('DIV')); //��α���/�α��� ����Ϸ� ���̾�
            var wishListUlLayer = $(document.createElement('UL')); //�α��λ��� ����ƮUL
            var bundleWishSelectLayer = $(document.createElement('DL')); //������ǰ ���� �α��λ��� ������ǰ����DL
            var bundleWishFolderLayer = $(document.createElement('DL')); //������ǰ ���� �α��λ��� ������������DL
            var wishFolderDivLayer = $(document.createElement('DIV')); //������ǰ ���� �α��λ��� ������������Div
            var wishSaveLayer = $(document.createElement('DIV')); //���� ��ǰ �Ѱ� ���� ���� ���� div
            var wishAsideLayer = $('.aside.aside__bottom');
            var toastLayer = $('.snackbar.snackbar--toast');

            var mainTop = '';
            var mainLeft = '';
            var clickButtonTop = sel.clickButton.position().top;
            var clickButtonLeft = sel.clickButton.position().left;
            var clickButtonTopLength = sel.clickButton.innerHeight();
            var clickButtonWidthLength = sel.clickButton.innerWidth();

            //��ǰ���˾����� ��ġ ã������ ����
            var clickButtonOffsetTop = sel.clickButton.offset().top;
            var clickButtonOffsetLeft = sel.clickButton.offset().left;

            mainTop = clickButtonTop + clickButtonTopLength + 5 + 'px';
            mainLeft = clickButtonLeft + 'px';

            if (opt.servicePage == 'gnb_recent') {
                //�ֱٺ���ǰ�� �ڵ����� �����Ǿ��־� ��ġ�� ���� ���� ����
                mainTop = clickButtonTop + 88 + 'px';
                mainLeft = clickButtonLeft + 7 + 'px';
            } else if (opt.servicePage == 'list_compare') {
                mainTop = clickButtonTop - 232 + 'px';
                mainLeft = clickButtonLeft - 357 + clickButtonWidthLength + 'px';
            } else if (opt.servicePage == 'list_compare_popup') {
                //��ǰ���˾����� �¿챸���� ���� �б�ó��
                if ($(document).width() > clickButtonOffsetLeft + 336) {
                    mainLeft = clickButtonLeft - 30 + 'px';
                } else {
                    mainLeft = clickButtonLeft - 336 + 98 + 'px';
                }
                mainTop = clickButtonTop + clickButtonTopLength + 7 + 'px';
            }

            if (!sel.parentLayer.has('.inte_folder_layer').length) {
                //�ֱٺ���ǰ, ��ǰ��α�(2018 ����)�� �ڵ����� �����Ǿ��־� ��ġ�� ���� ���� ����
                if (
                    opt.servicePage != 'gnb_recent' &&
                    opt.servicePage != 'info_new' &&
                    opt.servicePage != 'list' &&
                    opt.servicePage != 'list_bundle' &&
                    opt.servicePage != 'search_image' &&
                    opt.servicePage != 'search_bundle' &&
                    opt.servicePage != 'plan' &&
                    opt.servicePage != 'mplan'
                ) {
                    mainLayer.css({ top: mainTop, left: mainLeft, position: 'absolute', 'z-index': '999999999' });
                }

                sel.parentLayer.append(mainLayer);

                sel.mainLayer = mainLayer;
                sel.wishListLayer = wishListLayer;
                sel.wishListUlLayer = wishListUlLayer;
                sel.bundleWishSelectLayer = bundleWishSelectLayer;
                sel.bundleWishFolderLayer = bundleWishFolderLayer;
                sel.wishFolderDivLayer = wishFolderDivLayer;
                sel.wishSaveLayer = wishSaveLayer;
                sel.wishAsideLayer = wishAsideLayer;
                sel.toastLayer = toastLayer;

                this.getMemberInfo(opt.prodCode, true);
            } else {
                sel.parentLayer.remove('.inte_folder_layer');
            }
        },

        /*
         * ȸ��/��ȸ�� ������ ���̾� ȣ��
         */
        getMemberInfo: function (prodCode, bInit) {
            var sel = this.sel;
            var opt = this.opt;
            var $$ = this;
            //				var prodCode = this.prodCode;
            // ������ ��ǰ�ڵ� ����
            sessionStorage.removeItem('tempWishOtion');

            var authHost = 'auth.danawa.com';
            if (location.host.indexOf('-local') > -1 || location.host.indexOf('-t') > -1) {
                authHost = 'auth-t.danawa.com';
            }

            var loginUrl =
                'https://' +
                authHost +
                '/login/login?url=' +
                (encodeURIComponent(location.href) || 'http://m.danawa.com/index.html');
            //��ȸ���϶�
            if ($('#memberSeq').val() === '') {
                if (confirm('�α����� �ʿ��� �����Դϴ�. �α����Ͻðڽ��ϱ�?')) {
                    // ������ ��ǰ�ڵ� ����
                    sessionStorage.setItem('tempWishOtion', JSON.stringify(opt));
                    location.href = loginUrl;
                }
            } else {
                $.ajax({
                    type: 'post',
                    url: getWishHost() + '/globalData/wishList/getWishListInfo.ajax.php',
                    data: {
                        prodCode: prodCode,
                        type: 'getInfo',
                        serviceType: opt.serviceType,
                        price: opt.price
                    },
                    crossDomain: true,
                    contentType: 'application/x-www-form-urlencoded; charset=utf-8',
                    xhrFields: {
                        withCredentials: true
                    },
                    success: function (data) {
                        var resultArr = $.parseJSON(data);
                        if (resultArr.status == 'N') {
                            var sAlert = '�ý��� �������� ' + resultArr.startDate + '���� ' + resultArr.endDate;
                            sAlert += '���� ���� �̿��� ���ѵ˴ϴ�. ���ݸ� ��ٷ� �ּ���.';
                            alert(sAlert);
                            return false;
                        } else {
                            //ȸ���϶�
                            if (resultArr.sType == 'folderSelect') {
                                //ùȣ�⶧�� �ǳ��⿩�� ��ȸ
                                if (bInit === true) {
                                    $$.checkEstimateYN();
                                }
                                if (opt.servicePage == 'list_bundle' || opt.servicePage == 'search_bundle') {
                                    $$.displayBundleWishListLayer(resultArr.aInterestProductList, resultArr.nMemberSeq);
                                } else {
                                    $$.displayWishListLayer(resultArr.aInterestProductList, resultArr.nMemberSeq);
                                }
                            } else if (resultArr.sType === 'nonMembers') {
                                // ��ȸ���� ���
                                if (confirm('�α����� �ʿ��� �����Դϴ�. �α����Ͻðڽ��ϱ�?')) {
                                    // ������ ��ǰ�ڵ� ����
                                    sessionStorage.setItem('tempWishOtion', JSON.stringify(opt));
                                    location.href = loginUrl;
                                }
                            }
                        }

                        //�λ���Ʈ ���ø������̼� ��ũ��Ʈ �߰�
                        _TRK_PNC = 'PC0001';
                        _TRK_G4 = '1';
                    }
                });
            }
        },

        /*
         * �Ϲ� ���ɻ�ǰ ���� �ҷ�����
         */
        displayWishListLayer: function (aInterestProductList, nMemberSeq) {
            var sel = this.sel;
            var opt = this.opt;
            var special_pattern = /[`~!@#$%^&*|\\\'\";:\/?]/gi;
            var productNameHtml = '';

            //IE������ �����ʱ�ȭ �и�
            sel.bundleWishSelectLayer.html('');
            sel.bundleWishFolderLayer.html('');
            sel.wishListUlLayer.html('');
            sel.wishListLayer.html('');
            sel.mainLayer.html('');
            sel.wishSaveLayer.html('');
            sel.wishAsideLayer.html('');

            if (special_pattern.test(opt.prodCode)) {
                productNameHtml += '';
            } else {
                var bundleData = $('#wishListBundleVal_' + opt.prodCode).val();

                if (bundleData) {
                    var productName = bundleData.split('//')[1];

                    productNameHtml += '<dt>' + productName + '</dt>';
                    productNameHtml += '<dd></dd>';
                } else {
                    var prodCode = opt.prodCode;
                    var title = $('#title_' + prodCode).text();

                    if (!title) {
                        // ��ǰ���� �����̶��, ���� ������Ʈ �˻� �õ�
                        title = $(sel.clickButton).parents('li').find('.prod_name > a').text();
                    }

                    productNameHtml += '<dt>' + title + '</dt>';
                    productNameHtml += '<dd></dd>';
                }
            }

            sel.bundleWishSelectLayer.addClass('wish_select').append(productNameHtml);

            var html = '';
            if (opt.servicePage == 'mplan') {
                html =
                    '<ul class="layer-sort__list">' +
                    '<li class="layer-sort__item">' +
                    '<div class="layer-sort__select">';

                var folderCount = 1;
                $.each(aInterestProductList, function () {
                    html +=
                        '<input type="radio" id="wishFolder_' +
                        this.folderSeq +
                        '" class="folder_name" name="checkRadioFolder" onClick="dnwLoggingApplicationClient(\'' +
                        (opt.prodCode || '') +
                        "', '" +
                        (nMemberSeq || '') +
                        '\'); return false;">';
                    html += '<label for="wishFolder_' + this.folderSeq + '">' + this.folderName + '</label>';

                    ++folderCount;
                });

                html += '</div>' + '</li>' + '</ul>';

                sel.bundleWishFolderLayer.html(html);
            } else {
                html += '<dt>������ ����</dt>';
                html += '<dd>';
                html += '<ul class="prod_list">';

                $.each(aInterestProductList, function () {
                    html += '<li class="prod_folder">';
                    html +=
                        '<a href="#" onClick="dnwLoggingApplicationClient(\'' +
                        (opt.prodCode || '') +
                        "', '" +
                        (nMemberSeq || '') +
                        '\'); return false;" class="folder_name" id="wishFolder_' +
                        this.folderSeq +
                        '">' +
                        this.folderName +
                        '</a>';
                    html += '</li>';
                });

                html += '</ul>';
                html += '</dd>';

                sel.bundleWishFolderLayer.addClass('wish_folder').append(html);
            }

            var tabItemHtml = '';
            if (opt.estimateYN == 'Y') {
                if (opt.serviceType == 1) {
                    var sWishClassHtml = '';
                    var sEstiClassHtml = 'on';
                } else {
                    var sWishClassHtml = 'on';
                    var sEstiClassHtml = '';
                }
                tabItemHtml += '<div class="inte_tab">';
                tabItemHtml += '<ul>';
                tabItemHtml +=
                    '<li class="tab_item ' +
                    sWishClassHtml +
                    '"><a href="#" class="wishFolderTab" onclick="return false;" data-serType="0">���ɻ�ǰ</a></li>';
                tabItemHtml +=
                    '<li class="tab_item ' +
                    sEstiClassHtml +
                    '"><a href="#" class="wishFolderTab" onclick="return false;" data-serType="1">PC������</a></li>';
                tabItemHtml += '</ul>';
                tabItemHtml += '</div>';
            }

            if (opt.estimateYN == 'Y') {
                sel.mainLayer
                    .addClass('inte_folder_layer')
                    .append('<h4 class="layer_title">���ɻ�ǰ ���� ����</h4>')
                    .append('<a href="#" id="wishCloseBtn" class="com_gnb btn_service_close">�ݱ�</a>')
                    .append(tabItemHtml)
                    .append(sel.bundleWishSelectLayer)
                    .append(sel.bundleWishFolderLayer);
            } else if (opt.servicePage == 'plan') {
                sel.mainLayer
                    .addClass('inte_folder_layer')
                    .append('<h4 class="layer_title">���ɻ�ǰ ���� ����</h4>')
                    .append('<a href="#" id="wishCloseBtn" class="com_gnb btn_service_close">�ݱ�</a>')
                    .append(sel.bundleWishSelectLayer)
                    .append(sel.bundleWishFolderLayer)
                    .show();
            } else if (opt.servicePage == 'mplan') {
                sel.wishAsideLayer
                    .addClass('aside--open')
                    .append(
                        '<div class="aside__header">' +
                            '<strong class="title"><span class="blind">���ɻ�ǰ</span>���� ����</strong>' +
                            '</div>' +
                            '<div class="aside__cont">' +
                            sel.bundleWishFolderLayer.html() +
                            '</div>' +
                            '<button id="wishLayerCloseBtn" class="layer-basic__close">' +
                            '<span class="blind">�ݱ�</span>' +
                            '</button>'
                    );

                $('#dimmLayer').show();
            } else {
                sel.mainLayer
                    .addClass('inte_folder_layer')
                    .append('<h4 class="layer_title">���ɻ�ǰ ���� ����</h4>')
                    .append('<a href="#" id="wishCloseBtn"class="com_gnb btn_service_close">�ݱ�</a>')
                    .append(sel.bundleWishSelectLayer)
                    .append(sel.bundleWishFolderLayer);
            }

            var folderLayer;

            if (opt.servicePage == 'mplan') {
                folderLayer = sel.wishAsideLayer;
            } else {
                folderLayer = sel.mainLayer;
            }

            $(folderLayer)
                .off('click', '.folder_name[id^=wishFolder_]')
                .delegate('.folder_name[id^=wishFolder_]', 'click', function (e) {
                    e.preventDefault();
                    var folderSeq = $(this).attr('id').split('_')[1];
                    var folderName = $(this).text();

                    if (opt.servicePage == 'mplan') {
                        sel.wishAsideLayer.removeClass('aside--open');
                        sel.wishAsideLayer.html('');
                        $('#dimmLayer').hide();
                    }

                    $.ajax({
                        type: 'POST',
                        url: getWishHost() + '/globalData/wishList/getWishListInfo.ajax.php',
                        data: {
                            folderSeq: folderSeq,
                            prodCode: opt.prodCode,
                            serviceType: opt.serviceType,
                            type: 'selectFolder',
                            price: opt.price
                        },
                        crossDomain: true,
                        contentType: 'application/x-www-form-urlencoded; charset=utf-8',
                        xhrFields: {
                            withCredentials: true
                        },
                        success: function (data) {
                            var resultArr = $.parseJSON(data);
                            var sMoreComment = '';

                            if (resultArr.status == 'N') {
                                var sAlert = '�ý��� �������� ' + resultArr.startDate + '���� ' + resultArr.endDate;
                                sAlert += '���� ���� �̿��� ���ѵ˴ϴ�. ���ݸ� ��ٷ� �ּ���.';
                                alert(sAlert);
                                return false;
                            } else {
                                //�ߺ��̳� PC���� �����ī�װ��� ��� ���â�� ���� �߰�
                                if (resultArr.nDuplicateCount > 0) {
                                    sMoreComment += '�ߺ���ǰ ' + resultArr.nDuplicateCount + '��';
                                }
                                if (resultArr.nExceptCount > 0) {
                                    if (sMoreComment.length > 0) {
                                        sMoreComment += ', ';
                                    }
                                    sMoreComment += 'PC���� ���ܻ�ǰ ' + resultArr.nExceptCount + '��';
                                }
                                if (sMoreComment.length > 0) {
                                    sMoreComment = '\n (' + sMoreComment + ')';
                                }

                                if (resultArr.sSaveSuccess == 'wish_full') {
                                    alert('���������� ���ɻ�ǰ ���� ������ �ִ� 500���Դϴ�.');
                                } else if (resultArr.sSaveSuccess == 'wish_failed') {
                                    alert('�˼��մϴ�. ���ɻ�ǰ ���忡 �����Ͽ����ϴ�.\n�ٽ� �� �� ������ �ֽʽÿ�.');
                                } else if (resultArr.sSaveSuccess == 'wish_success') {
                                    var saveHtml = '';

                                    if (opt.servicePage == 'mplan') {
                                        saveHtml += '<div class="snackbar__txt">���ɻ�ǰ ���� �Ϸ�</div>';

                                        sel.toastLayer.find('.snackbar__wrap').append(saveHtml);
                                        sel.toastLayer.addClass('snackbar--show');

                                        setTimeout(function () {
                                            sel.toastLayer.removeClass('snackbar--show');
                                            sel.toastLayer.find('.snackbar__wrap').html('');
                                        }, 1500);
                                    } else {
                                        saveHtml += '<h4 class="layer_title2">���� �Ϸ�</h4>';
                                        saveHtml +=
                                            '<a href="#" id="wishCloseBtn" class="com_gnb btn_service_close">�ݱ�</a>';
                                        saveHtml += '<div class="folder_submit">';
                                        saveHtml +=
                                            '<span class="txt">���������� &gt; ���ɻ�ǰ����<br />Ȯ���� �� �ֽ��ϴ�.</span>';
                                        saveHtml += '</div>';

                                        sel.mainLayer.addClass('inte_folder_layer done').html(saveHtml);

                                        setTimeout(function () {
                                            sel.mainLayer.remove();
                                        }, 1500);
                                    }

                                    // ������ Ȱ��ȭ
                                    if ($('[data-productcode="' + opt.prodCode + '"]').length > 0) {
                                        $('[data-productcode="' + opt.prodCode + '"]').addClass('on');
                                    }

                                    if ($('[code="' + opt.prodCode + '"]').length > 0) {
                                        $('[code="' + opt.prodCode + '"]').addClass('on');
                                    }

                                    if (
                                        sel.clickButton.hasClass('btn_zzim') &&
                                        !sel.clickButton.hasClass('btn_zzim--select')
                                    ) {
                                        sel.clickButton.addClass('btn_zzim--select');
                                        sel.clickButton.parent().find('span.blind').html('���ϱ� ���õ�');
                                    }

                                    if (opt.servicePage == 'list_compare_popup') {
                                        if (
                                            sel.clickButton.hasClass('btn_interest') &&
                                            !sel.clickButton.hasClass('active')
                                        ) {
                                            sel.clickButton.addClass('active');
                                            sel.clickButton.find('span.blind').html('���ɻ�ǰ ���� ���');
                                        }
                                    }

                                    //�λ���Ʈ ���ø������̼� ��ũ��Ʈ �߰�
                                    _TRK_PNC = 'PC0001';
                                    _TRK_G4 = '1';
                                } else if (resultArr.sSaveSuccess == 'wish_dup') {
                                    var folderSavedHtml = '';

                                    folderSavedHtml += '<h4 class="layer_title2"></h4>';
                                    folderSavedHtml +=
                                        '<a href="#" id="wishCloseBtn" class="com_gnb btn_service_close">�ݱ�</a>';
                                    folderSavedHtml += '<div class="folder_saved">';
                                    folderSavedHtml +=
                                        '<p class="text">"' +
                                        folderName +
                                        '"�� �̹� ����Ǿ� �ִ� ��ǰ�Դϴ�.<br />���������� �̵��Ͻðڽ��ϱ�?</p>';
                                    folderSavedHtml += '</div>';
                                    folderSavedHtml += '<div class="folder_submit">';
                                    folderSavedHtml += '<div class="btn_center">';
                                    folderSavedHtml +=
                                        '<a href="http://www.danawa.com/myPage/wishList.html" class="btn_my_prod">��������</a>';
                                    folderSavedHtml += '</div>';
                                    folderSavedHtml += '</div>';

                                    sel.mainLayer.addClass('inte_folder_layer').html(folderSavedHtml);
                                } else if (resultArr.sSaveSuccess == 'esti_full') {
                                    alert('���������� PC������ ���� ������ �ִ� 100���Դϴ�.');
                                } else if (resultArr.sSaveSuccess == 'esti_failed') {
                                    alert('�˼��մϴ�. PC������ ���忡 �����Ͽ����ϴ�.\n�ٽ� �� �� ������ �ֽʽÿ�.');
                                } else if (resultArr.sSaveSuccess == 'esti_success') {
                                    var saveComplete = confirm(
                                        folderName +
                                            '�� ' +
                                            resultArr.nInsertCount +
                                            '�� ����Ǿ����ϴ�.\nPC���������� �̵��Ͻðڽ��ϱ�?' +
                                            sMoreComment
                                    );
                                    if (saveComplete == true) {
                                        document.location.href = 'http://www.danawa.com/myPage/estimateList.php';
                                    }
                                    sel.parentLayer.find('.inte_folder_layer').remove();

                                    //�λ���Ʈ ���ø������̼� ��ũ��Ʈ �߰�
                                    _TRK_PNC = 'PC0001';
                                    _TRK_G4 = '1';
                                } else if (resultArr.sSaveSuccess == 'esti_dup') {
                                    var saveComplete = confirm(
                                        folderName +
                                            '�� �̹� ����Ǿ� �ִ� ��ǰ�Դϴ�.\nPC���������� �̵��Ͻðڽ��ϱ�?' +
                                            sMoreComment
                                    );
                                    if (saveComplete == true) {
                                        document.location.href = 'http://www.danawa.com/myPage/estimateList.php';
                                    }
                                    sel.parentLayer.find('.inte_folder_layer').remove();
                                }
                            }
                        }
                    });
                });
        },

        /*
         * ������ǰ�� ���ɻ�ǰ ���� �ҷ�����
         */
        displayBundleWishListLayer: function (aInterestProductList, nMemberSeq) {
            var sel = this.sel;
            var opt = this.opt;

            var html = '';

            sel.bundleWishSelectLayer.html('');
            sel.bundleWishFolderLayer.html('');
            sel.wishListLayer.html('');
            sel.mainLayer.html('');
            sel.wishFolderDivLayer.html('');

            var bundleProductSelectHtml = '';
            var bundleData = $('#wishListBundleVal_' + opt.prodCode).val();
            var bundleProduct = bundleData.split('//')[0];
            var productName = bundleData.split('//')[1];
            var nHighSaveQProdCode = bundleData.split('//')[2];

            //������ǰ ���� HTML
            var aBundleProduct = bundleProduct.split('**');
            bundleProductSelectHtml += '<dt>' + productName + '</dt>';
            bundleProductSelectHtml += '<dd><select id="bundleProductSel" title="�� ���� ����">';
            $.each(aBundleProduct, function (index) {
                var sBundleName = this.split('^')[0];
                var nBundleCode = this.split('^')[1];
                var sSelectedOption = '';
                //�α⵵ 1���� ������ǰ�� �⺻���� ����
                if (nBundleCode == nHighSaveQProdCode) {
                    sSelectedOption = 'selected';
                }
                bundleProductSelectHtml +=
                    '<option value="' + nBundleCode + '" ' + sSelectedOption + '>' + sBundleName + '</option>';
            });
            bundleProductSelectHtml += '</select></dd>';

            html += '<dt>������ ����</dt>';
            html += '<dd>';
            html += '<ul>';
            $.each(aInterestProductList, function () {
                html += '<li class="folder_name" id="wishFolder_' + this.folderSeq + '" onclick="return false;">';
                html += this.folderName;
                html += '</li>';
            });
            html += '</ul>';
            html += '</dd>';

            var aInteresthtml = '';

            aInteresthtml += '<div class="btn_center">';
            $.each(aInterestProductList, function () {
                aInteresthtml += '<a href="#" class="btn_de_srch" id="wishFolders_' + this.folderSeq + '">�����ϱ�</a>';
                aInteresthtml += '<input type="hidden" id="folderName" value="' + this.folderName + '"/>';
                aInteresthtml += '<input type="hidden" id="serviceType" value="' + opt.serviceType + '"/>';
            });
            aInteresthtml += '</div>';

            var tabItemHtml = '';
            if (opt.estimateYN == 'Y') {
                if (opt.serviceType == 1) {
                    var sWishClassHtml = '';
                    var sEstiClassHtml = 'on';
                    opt.serviceTypName = 'PC������';
                } else {
                    var sWishClassHtml = 'on';
                    var sEstiClassHtml = '';
                    opt.serviceTypName = '���ɻ�ǰ';
                }
                tabItemHtml += '<div class="inte_tab">';
                tabItemHtml += '<ul>';
                tabItemHtml +=
                    '<li class="tab_item ' +
                    sWishClassHtml +
                    '"><a href="#" class="wishFolderTab" onclick="return false;" data-serType="0">���ɻ�ǰ</a></li>';
                tabItemHtml +=
                    '<li class="tab_item ' +
                    sEstiClassHtml +
                    '" ><a href="#"  class="wishFolderTab" onclick="return false;" data-serType="1">PC������</a></li>';
                tabItemHtml += '</ul>';
                tabItemHtml += '</div>';
            }

            sel.bundleWishSelectLayer.addClass('wish_select').append(bundleProductSelectHtml);

            if (aInterestProductList.length > 1) {
                sel.bundleWishFolderLayer.addClass('wish_folder').append(html);
            } else if (aInterestProductList.length == 1) {
                sel.wishFolderDivLayer.addClass('folder_submit').append(aInteresthtml);
            }

            sel.wishListLayer.addClass('inte_prod_list').append(sel.wishListUlLayer);

            if (aInterestProductList.length > 1) {
                sel.mainLayer
                    .addClass('inte_folder_layer')
                    .append('<h4 class="layer_title">���ɻ�ǰ �����ϱ�</h4>')
                    .append('<a href="#" id="wishCloseBtn"class="com_gnb btn_service_close">�ݱ�</a>')
                    .append(tabItemHtml)
                    .append(sel.bundleWishSelectLayer)
                    .append(sel.bundleWishFolderLayer);
            } else if (aInterestProductList.length == 1) {
                sel.mainLayer
                    .addClass('inte_folder_layer')
                    .append('<h4 class="layer_title">���ɻ�ǰ �����ϱ�</h4>')
                    .append('<a href="#" id="wishCloseBtn"class="com_gnb btn_service_close">�ݱ�</a>')
                    .append(tabItemHtml)
                    .append(sel.bundleWishSelectLayer)
                    .append(sel.wishFolderDivLayer);
            }

            $(sel.mainLayer).delegate('.folder_name[id^=wishFolder_]', 'mouseover', function (e) {
                $(this).addClass('folder_select').siblings().removeClass('folder_select');
            });

            $(sel.mainLayer)
                .off('click', '.folder_name[id^=wishFolder_]')
                .delegate('.folder_name[id^=wishFolder_', 'click', function (e) {
                    e.preventDefault();
                    var selectedBundleProd = $(this)
                        .parent()
                        .parent()
                        .parent()
                        .parent()
                        .find('#bundleProductSel option:selected')
                        .val();
                    if (selectedBundleProd == '') {
                        alert('��ǰ�� �������ּ���!');
                        return false;
                    } else {
                        var folderSeq = $(this).attr('id').split('_')[1];

                        if (aInterestProductList.length == 1) {
                            var folderName = $('#folderName').val();
                        } else {
                            var folderName = $(this).text();
                        }

                        //						alert(opt.prodCode);
                        $.ajax({
                            type: 'POST',
                            url: getWishHost() + '/globalData/wishList/getWishListInfo.ajax.php',
                            data: {
                                folderSeq: folderSeq,
                                prodCode: selectedBundleProd,
                                serviceType: opt.serviceType,
                                type: 'selectFolder',
                                price: opt.price
                            },
                            crossDomain: true,
                            contentType: 'application/x-www-form-urlencoded; charset=utf-8',
                            xhrFields: {
                                withCredentials: true
                            },
                            success: function (data) {
                                var resultArr = $.parseJSON(data);
                                if (resultArr.status == 'N') {
                                    var sAlert = '�ý��� �������� ' + resultArr.startDate + '���� ' + resultArr.endDate;
                                    sAlert += '���� ���� �̿��� ���ѵ˴ϴ�. ���ݸ� ��ٷ� �ּ���.';
                                    alert(sAlert);
                                    return false;
                                } else {
                                    if (resultArr.sSaveSuccess == 'wish_full') {
                                        alert('���������� ���ɻ�ǰ ���� ������ �ִ� 500���Դϴ�.');
                                    } else if (resultArr.sSaveSuccess == 'wish_failed') {
                                        alert(
                                            '�˼��մϴ�. ���ɻ�ǰ ���忡 �����Ͽ����ϴ�.\n�ٽ� �� �� ������ �ֽʽÿ�.'
                                        );
                                    } else if (resultArr.sSaveSuccess == 'wish_success') {
                                        var saveHtml = '';
                                        saveHtml += '<h4 class="layer_title2">���� �Ϸ�</h4>';
                                        saveHtml +=
                                            '<a href="#" id="wishCloseBtn" class="com_gnb btn_service_close">�ݱ�</a>';
                                        saveHtml += '<div class="folder_submit">';
                                        saveHtml +=
                                            '<span class="txt">���������� &gt; ���ɻ�ǰ����<br />Ȯ���� �� �ֽ��ϴ�.</span>';
                                        saveHtml += '</div>';

                                        sel.mainLayer.addClass('inte_folder_layer done').html(saveHtml);

                                        // ������ Ȱ��ȭ
                                        if ($('[data-productcode="' + opt.prodCode + '"]').length > 0) {
                                            $('[data-productcode="' + opt.prodCode + '"]').addClass('on');
                                        }

                                        if ($('[code="' + opt.prodCode + '"]').length > 0) {
                                            $('[code="' + opt.prodCode + '"]').addClass('on');
                                        }

                                        setTimeout(function () {
                                            sel.mainLayer.remove();
                                        }, 1500);

                                        dnwLoggingApplicationClient(selectedBundleProd, nMemberSeq);
                                        //									//�λ���Ʈ ���ø������̼� ��ũ��Ʈ �߰�
                                        _TRK_PNC = 'PC0001';
                                        _TRK_G4 = '1';
                                    } else if (resultArr.sSaveSuccess == 'wish_dup') {
                                        var folderSavedHtml = '';
                                        folderSavedHtml += '<h4 class="layer_title2"></h4>';
                                        folderSavedHtml +=
                                            '<a href="#" id="wishCloseBtn" class="com_gnb btn_service_close">�ݱ�</a>';
                                        folderSavedHtml += '<div class="folder_saved">';
                                        folderSavedHtml +=
                                            '<p class="text">"' +
                                            folderName +
                                            '"�� �̹� ����Ǿ� �ִ� ��ǰ�Դϴ�.<br />���������� �̵��Ͻðڽ��ϱ�?</p>';
                                        folderSavedHtml += '</div>';
                                        folderSavedHtml += '<div class="folder_submit">';
                                        folderSavedHtml += '<div class="btn_center">';
                                        folderSavedHtml +=
                                            '<a href="http://www.danawa.com/myPage/wishList.html" class="btn_my_prod">��������</a>';
                                        folderSavedHtml += '</div>';
                                        folderSavedHtml += '</div>';

                                        sel.mainLayer.addClass('inte_folder_layer').html(folderSavedHtml);
                                    } else if (resultArr.sSaveSuccess == 'esti_full') {
                                        alert('���������� PC������ ���� ������ �ִ� 100���Դϴ�.');
                                    } else if (resultArr.sSaveSuccess == 'esti_failed') {
                                        alert(
                                            '�˼��մϴ�. PC������ ���忡 �����Ͽ����ϴ�.\n�ٽ� �� �� ������ �ֽʽÿ�.'
                                        );
                                    } else if (resultArr.sSaveSuccess == 'esti_success') {
                                        var saveComplete = confirm(
                                            folderName + '�� ����Ǿ����ϴ�.\nPC���������� �̵��Ͻðڽ��ϱ�?'
                                        );
                                        if (saveComplete == true) {
                                            document.location.href = 'http://www.danawa.com/myPage/estimateList.php';
                                        }
                                        sel.parentLayer.find('.inte_folder_layer').remove();
                                        dnwLoggingApplicationClient(selectedBundleProd, nMemberSeq);
                                        //									//�λ���Ʈ ���ø������̼� ��ũ��Ʈ �߰�
                                        _TRK_PNC = 'PC0001';
                                        _TRK_G4 = '1';
                                    } else if (resultArr.sSaveSuccess == 'esti_dup') {
                                        var saveComplete = confirm(
                                            folderName + '�� �̹� ����Ǿ� �ֽ��ϴ�.\nPC���������� �̵��Ͻðڽ��ϱ�?'
                                        );
                                        if (saveComplete == true) {
                                            document.location.href = 'http://www.danawa.com/myPage/estimateList.php';
                                        }
                                        sel.parentLayer.find('.inte_folder_layer').remove();
                                    }
                                }
                            }
                        });
                    }
                });

            $(sel.mainLayer)
                .off('click', '.btn_de_srch[id^=wishFolders_]')
                .delegate('.btn_de_srch[id^=wishFolders_]', 'click', function (e) {
                    e.preventDefault();
                    var selectedBundleProd = $(this)
                        .parent()
                        .parent()
                        .parent()
                        .parent()
                        .find('#bundleProductSel option:selected')
                        .val();
                    if (selectedBundleProd == '') {
                        alert('��ǰ�� �������ּ���!');
                        return false;
                    } else {
                        var folderSeq = $(this).attr('id').split('_')[1];

                        if (aInterestProductList.length == 1) {
                            var folderName = $('#folderName').val();
                        } else {
                            var folderName = $(this).text();
                        }

                        //						alert(opt.prodCode);
                        $.ajax({
                            type: 'POST',
                            url: getWishHost() + '/globalData/wishList/getWishListInfo.ajax.php',
                            data: {
                                folderSeq: folderSeq,
                                prodCode: selectedBundleProd,
                                serviceType: opt.serviceType,
                                type: 'selectFolder',
                                price: opt.price
                            },
                            crossDomain: true,
                            contentType: 'application/x-www-form-urlencoded; charset=utf-8',
                            xhrFields: {
                                withCredentials: true
                            },
                            success: function (data) {
                                var resultArr = $.parseJSON(data);
                                if (resultArr.status == 'N') {
                                    var sAlert = '�ý��� �������� ' + resultArr.startDate + '���� ' + resultArr.endDate;
                                    sAlert += '���� ���� �̿��� ���ѵ˴ϴ�. ���ݸ� ��ٷ� �ּ���.';
                                    alert(sAlert);
                                    return false;
                                } else {
                                    if (resultArr.sSaveSuccess == 'wish_full') {
                                        alert('���������� ���ɻ�ǰ ���� ������ �ִ� 500���Դϴ�.');
                                    } else if (resultArr.sSaveSuccess == 'wish_failed') {
                                        alert(
                                            '�˼��մϴ�. ���ɻ�ǰ ���忡 �����Ͽ����ϴ�.\n�ٽ� �� �� ������ �ֽʽÿ�.'
                                        );
                                    } else if (resultArr.sSaveSuccess == 'wish_success') {
                                        var saveHtml = '';
                                        saveHtml += '<h4 class="layer_title2">���� �Ϸ�</h4>';
                                        saveHtml +=
                                            '<a href="#" id="wishCloseBtn" class="com_gnb btn_service_close">�ݱ�</a>';
                                        saveHtml += '<div class="folder_submit">';
                                        saveHtml +=
                                            '<span class="txt">���������� &gt; ���ɻ�ǰ����<br />Ȯ���� �� �ֽ��ϴ�.</span>';
                                        saveHtml += '</div>';

                                        sel.mainLayer.addClass('inte_folder_layer done').html(saveHtml);

                                        // ������ Ȱ��ȭ
                                        if ($('[data-productcode="' + opt.prodCode + '"]').length > 0) {
                                            $('[data-productcode="' + opt.prodCode + '"]').addClass('on');
                                        }

                                        if ($('[code="' + opt.prodCode + '"]').length > 0) {
                                            $('[code="' + opt.prodCode + '"]').addClass('on');
                                        }

                                        setTimeout(function () {
                                            sel.mainLayer.remove();
                                        }, 1500);

                                        dnwLoggingApplicationClient(selectedBundleProd, nMemberSeq);
                                        //									//�λ���Ʈ ���ø������̼� ��ũ��Ʈ �߰�
                                        _TRK_PNC = 'PC0001';
                                        _TRK_G4 = '1';
                                    } else if (resultArr.sSaveSuccess == 'wish_dup') {
                                        var folderSavedHtml = '';
                                        folderSavedHtml += '<h4 class="layer_title2"></h4>';
                                        folderSavedHtml +=
                                            '<a href="#" id="wishCloseBtn" class="com_gnb btn_service_close">�ݱ�</a>';
                                        folderSavedHtml += '<div class="folder_saved">';
                                        folderSavedHtml +=
                                            '<p class="text">"' +
                                            folderName +
                                            '"�� �̹� ����Ǿ� �ִ� ��ǰ�Դϴ�.<br />���������� �̵��Ͻðڽ��ϱ�?</p>';
                                        folderSavedHtml += '</div>';
                                        folderSavedHtml += '<div class="folder_submit">';
                                        folderSavedHtml += '<div class="btn_center">';
                                        folderSavedHtml +=
                                            '<a href="http://www.danawa.com/myPage/wishList.html" class="btn_my_prod">��������</a>';
                                        folderSavedHtml += '</div>';
                                        folderSavedHtml += '</div>';

                                        sel.mainLayer.addClass('inte_folder_layer').html(folderSavedHtml);
                                    } else if (resultArr.sSaveSuccess == 'esti_full') {
                                        alert('���������� PC������ ���� ������ �ִ� 100���Դϴ�.');
                                    } else if (resultArr.sSaveSuccess == 'esti_failed') {
                                        alert(
                                            '�˼��մϴ�. PC������ ���忡 �����Ͽ����ϴ�.\n�ٽ� �� �� ������ �ֽʽÿ�.'
                                        );
                                    } else if (resultArr.sSaveSuccess == 'esti_success') {
                                        var saveComplete = confirm(
                                            folderName + '�� ����Ǿ����ϴ�.\nPC���������� �̵��Ͻðڽ��ϱ�?'
                                        );
                                        if (saveComplete == true) {
                                            document.location.href = 'http://www.danawa.com/myPage/estimateList.php';
                                        }
                                        sel.parentLayer.find('.inte_folder_layer').remove();
                                        dnwLoggingApplicationClient(selectedBundleProd, nMemberSeq);
                                        //									//�λ���Ʈ ���ø������̼� ��ũ��Ʈ �߰�
                                        _TRK_PNC = 'PC0001';
                                        _TRK_G4 = '1';
                                    } else if (resultArr.sSaveSuccess == 'esti_dup') {
                                        var saveComplete = confirm(
                                            folderName + '�� �̹� ����Ǿ� �ֽ��ϴ�.\nPC���������� �̵��Ͻðڽ��ϱ�?'
                                        );
                                        if (saveComplete == true) {
                                            document.location.href = 'http://www.danawa.com/myPage/estimateList.php';
                                        }
                                        sel.parentLayer.find('.inte_folder_layer').remove();
                                    }
                                }
                            }
                        });
                    }
                });
        },

        /*
         * ��ȸ�� ����Ϸ�
         */
        displayNonLoginSave: function (resultArr) {
            var sel = this.sel;
            var opt = this.opt;

            var nonLoginHtml = '';
            if (resultArr.sSaveSuccess == 'wish_failed' || resultArr.sSaveSuccess == 'wish_full') {
                if (opt.servicePage == 'plan' || opt.servicePage == 'mplan') {
                    alert(
                        '���ɻ�ǰ �������\n�˼��մϴ�. ���ɻ�ǰ �����ϱ⸦ ���� �Ͽ����ϴ�.\n�ٽ��ѹ� ������ �ֽʽÿ�.'
                    );
                } else {
                    nonLoginHtml +=
                        '<div class="folder_saved"><p class="text">���ɻ�ǰ ���忡 �����Ͽ����ϴ�.</p></div>';
                    nonLoginHtml +=
                        '<div class="folder_submit"><a href="https://auth.danawa.com/login" target="_blank" class="btn_link_login">�α���</a></div>';
                    nonLoginHtml += '<div class="folder_guide"><p class="text">' + resultArr.sMessage + '</p></div>';

                    sel.mainLayer
                        .addClass('inte_folder_layer')
                        .append('<h4 class="layer_title">���ɻ�ǰ ���� ����</h4>')
                        .append('<a href="#" id="wishCloseBtn"class="com_gnb btn_service_close">�ݱ�</a>')
                        .append(nonLoginHtml);
                }
            } else {
                if (opt.servicePage == 'plan') {
                    nonLoginHtml =
                        '<div class="inte_folder_layer" style="display:block">' +
                        '<h3 class="layer_title2">���ɻ�ǰ���� ����Ǿ����ϴ�.</h3>' +
                        '<a id="wishCloseBtn" href="javascript:void(0);" class="com_gnb btn_service_close">�ݱ�</a>' +
                        '<div class="folder_saved">' +
                        '<p class="text">������&nbsp;����&nbsp;�� ���ɻ�ǰ�� �����˴ϴ٣� <br>�α����Ͻø�&nbsp;���ɻ�ǰ��&nbsp;���&nbsp;������&nbsp;��&nbsp;�ֽ��ϴ�.</p>' +
                        '</div>' +
                        '<div class="folder_submit">' +
                        '<div class="btn_center">' +
                        '<a href="https://auth.danawa.com/login" class="btn_de_cls">�α���</a>' +
                        '<a href="http://www.danawa.com/myPage/wishList.html" class="btn_my_prod">��������</a>' +
                        '</div>' +
                        '</div>' +
                        '</div>';

                    sel.mainLayer.addClass('layer-save').append(nonLoginHtml).show();

                    if ($('[data-productcode="' + opt.prodCode + '"]').length > 0) {
                        $('[data-productcode="' + opt.prodCode + '"]').addClass('on');
                    }
                } else if (opt.servicePage == 'mplan') {
                    var authHost = 'auth.danawa.com';
                    if (location.host.indexOf('-local') > -1 || location.host.indexOf('-t') > -1) {
                        authHost = 'auth-t.danawa.com';
                    }

                    var loginUrl =
                        'https://' +
                        authHost +
                        '/login/login?url=' +
                        (encodeURIComponent(location.href) || 'http://m.danawa.com/index.html');

                    nonLoginHtml =
                        '<div class="layer-save__wrap">' +
                        '<div class="layer-save__title"><strong>���� �Ϸ�</strong></div>' +
                        '<button class="layer-save__btn"><span class="blind">�ݱ�</span></button>' +
                        '<div class="layer-save__desc">' +
                        '<p>������ ���� ��  ���ɻ�ǰ�� �����˴ϴ�.</p>' +
                        '<p>�α����Ͻø� ���ɻ�ǰ�� ��� ������ �� �ֽ��ϴ�.</p>' +
                        '</div>' +
                        '<a href="' +
                        loginUrl +
                        '" class="layer-save__link"><span>�α���</span></a>' +
                        '<a href="http://www.danawa.com/myPage/wishList.html" class="layer-save__link2"><span>��������</span></a>' +
                        '</div>';

                    sel.mainLayer.addClass('layer-save').append(nonLoginHtml).show();

                    if (sel.clickButton.hasClass('btn_zzim') && !sel.clickButton.hasClass('btn_zzim--select')) {
                        sel.clickButton.addClass('btn_zzim--select');
                        sel.clickButton.find('span.blind').html('���ϱ� ���õ�');
                    }
                } else {
                    var backwardUrl = 'https://auth.danawa.com/login';
                    var alinkTarget = '_blank';

                    if (opt.servicePage == 'info_new') {
                        if (sLoginUrl) {
                            if (sLoginUrl.match(/(https:)?\/\/auth[a-z\-]*.danawa.com/g)) {
                                backwardUrl = sLoginUrl;
                            } else {
                                backwardUrl += '?url=' + sLoginUrl;
                            }
                        }

                        alinkTarget = '_self';
                    }

                    nonLoginHtml +=
                        '<div class="folder_saved"><p class="text">������ ���� �� ���ɻ�ǰ�� �����˴ϴ�.<br />�α����Ͻø� ���ɻ�ǰ�� ��� ������ �� �ֽ��ϴ�.</p></div>' +
                        '<div class="folder_submit">' +
                        '<div class="btn_center">' +
                        '<a href="' +
                        backwardUrl +
                        '" target="' +
                        alinkTarget +
                        '" class="btn_de_cls">�α���</a>' +
                        '<a href="http://www.danawa.com/myPage/wishList.html" target="_blank" class="btn_my_prod">��������</a>' +
                        '</div>' +
                        '</div>';

                    sel.mainLayer
                        .addClass('inte_folder_layer')
                        .append('<h4 class="layer_title2">���ɻ�ǰ���� ����Ǿ����ϴ�.</h4>')
                        .append('<a href="#" id="wishCloseBtn"class="com_gnb btn_service_close">�ݱ�</a>')
                        .append(nonLoginHtml);

                    if (
                        (sel.clickButton.hasClass('btn_interest') || sel.clickButton.hasClass('interest')) &&
                        !sel.clickButton.hasClass('on')
                    ) {
                        sel.clickButton.addClass('on').addClass('active');
                    } else if (
                        sel.clickButton.attr('id') == 'interest' &&
                        !sel.clickButton.closest('.interest').hasClass('on')
                    ) {
                        sel.clickButton.closest('.interest').addClass('on');
                    } else if (sel.clickButton.hasClass('click_wish_prod') && !sel.clickButton.hasClass('on')) {
                        sel.clickButton.addClass('on');
                    }
                }

                // ����� ���� �α� ��ũ��Ʈ �߰�
                dnwLoggingApplicationClient(opt.prodCode);
            }
        },

        /**
         * ��ǰ�ڵ�� PC������ �� ���⿩�� ��ȸ
         * �Ϲ������� ��ǰ�ڵ� �Ѱ��϶��� �ش� ��ǰ�ڵ�� ����ī�װ��� ��ȸ�Ͽ� üũ�ϰ�,
         * ��ǰ����Ʈ ��ǰ�� ���̾�ó�� ���� ��ǰ�϶��� ���� ����ī�װ��� �����Ͽ� üũ�ؾ��� (��ǰ����Ʈ�� ��ǥ����ī�װ�)
         */
        checkEstimateYN: function () {
            var sel = this.sel;
            var opt = this.opt;
            var $$ = this;

            $.ajax({
                type: 'GET',
                dataType: 'text',
                async: false,
                url: getWishHost() + '/globalData/wishList/checkEstimateCategory.ajax.php',
                data: { prodCode: opt.prodCode, cate_c1: opt.cate_c1, cate_c2: opt.cate_c2 },
                success: function (data) {
                    if (data == 'Y') {
                        opt.estimateYN = 'Y';
                    }
                }
            });

            $(sel.mainLayer).delegate('.tab_item a.wishFolderTab', 'click', function (e) {
                if (!$(this).hasClass('on')) {
                    var nChangeServiceType = $(this).attr('data-serType');
                    opt.serviceType = nChangeServiceType;
                    $$.getMemberInfo(opt.prodCode, false);
                }
            });
        },

        /*
         * ���̾� �ݱ�
         */
        closeLayer: function () {}
    };

    var dWL = (deleteProductToWishList = function (selector, wishCode, prodCode, cate_c1, cate_c2) {
        var selectors = {
            clickButton: null
        };

        var options = {
            memberId: null,
            prodCode: null,
            wishCode: null,
            serviceType: 0,
            serviceTypName: '���ɻ�ǰ',
            estimateYN: 'N',
            cate_c1: cate_c1,
            cate_c2: cate_c2
        };

        options.prodCode = prodCode;
        options.wishCode = wishCode;
        selectors.clickButton = selector;

        this.sel = selectors;
        this.opt = options;

        this.init();
    });

    dWL.prototype = {
        init: function () {
            this.doWishProductDelete();
        },

        doWishProductDelete: function () {
            var sel = this.sel;
            var opt = this.opt;
            var $$ = this;

            $.ajax({
                type: 'post',
                url: getWishHost() + '/globalData/wishList/getWishListInfo.ajax.php',
                data: {
                    prodCode: opt.prodCode,
                    wishCode: opt.wishCode,
                    type: 'delInfo',
                    serviceType: opt.serviceType
                },
                crossDomain: true,
                contentType: 'application/x-www-form-urlencoded; charset=utf-8',
                xhrFields: {
                    withCredentials: true
                },
                success: function (data) {
                    var resultArr = $.parseJSON(data);
                    if (resultArr.status == 'N') {
                        var sAlert = '�ý��� �������� ' + resultArr.startDate + '���� ' + resultArr.endDate;
                        sAlert += '���� ���� �̿��� ���ѵ˴ϴ�. ���ݸ� ��ٷ� �ּ���.';
                        alert(sAlert);
                        return false;
                    } else {
                        $$.displayWishProductDelete(resultArr);
                    }
                }
            });
        },

        displayWishProductDelete: function (resultArr) {
            var sel = this.sel;

            if (resultArr.sDeleteSuccess == 'wish_del_success') {
                if (sel.clickButton.hasClass('btn_interest') && sel.clickButton.hasClass('on')) {
                    sel.clickButton.removeClass('on');
                } else if (sel.clickButton.closest('.item.interest').hasClass('on')) {
                    sel.clickButton.closest('.item.interest').removeClass('on');
                } else if (sel.clickButton.hasClass('btn_int')) {
                    sel.clickButton.removeClass('on');
                    sel.clickButton.attr('data-key', '');
                    sel.clickButton.removeData('key');
                } else if (sel.clickButton.hasClass('btn_zzim--select')) {
                    sel.clickButton.removeClass('btn_zzim--select');
                    sel.clickButton.attr('data-key', '');
                    sel.clickButton.removeData('key');
                    sel.clickButton.find('span.blind').html('���ϱ�');
                } else if (sel.clickButton.hasClass('click_wish_prod') && sel.clickButton.hasClass('on')) {
                    sel.clickButton.removeClass('on');
                }
            }
        }
    };

    $.danawaAddProductToWishList = function (selector, prodCode, servicePage, cate_c1, cate_c2, price) {
        new addProductToWishList($(selector), prodCode, servicePage, cate_c1, cate_c2, price);
    };

    $.fn.danawaAddProductToWishList = function (prodCode, servicePage, cate_c1, cate_c2, price) {
        new addProductToWishList(this, prodCode, servicePage, cate_c1, cate_c2, price);
    };

    $.danawaDeleteProductToWishList = function (selector, wishCode, prodCode, cate_c1, cate_c2) {
        new deleteProductToWishList($(selector), wishCode, prodCode, cate_c1, cate_c2);
    };

    $.fn.danawaDeleteProductToWishList = function (wishCode, prodCode, cate_c1, cate_c2) {
        new deleteProductToWishList(this, wishCode, prodCode, cate_c1, cate_c2);
    };

    $(document).ready(function () {
        $(document).delegate('.save_wishList', 'click', function (event) {
            event.preventDefault();
        });

        // ��ǰ����Ʈ���� �ݱ�� ����
        $(document).delegate('#wishCloseBtn', 'click', function (event) {
            event.preventDefault();

            $(this).parents('.inte_folder_layer').parent().find('.save_wishList ').removeClass('opt_checked_on');
            $(this).parents('.inte_folder_layer').remove();
        });

        // ����� ��ȹ�� �ݱ�
        $(document).delegate('#wishLayerCloseBtn, #dimmLayer', 'click', function (event) {
            event.preventDefault();

            $('.aside.aside__bottom').removeClass('aside--open');
            $('.aside.aside__bottom').html('');
            $('#dimmLayer').hide();
        });

        // ���̾� �̿� ���� Ŭ���� �ݱ�
        $(document).on('click', function (event) {
            if ($(event.target).hasClass('layer-save')) {
                $(event.target).remove();
            } else if (
                $(event.target).hasClass('layer-save__btn') &&
                $(event.target).closest('.layer-save').length > 0
            ) {
                $(event.target).closest('.layer-save').remove();
            } else if ($(event.target).closest('.inte_folder_layer').length > 0) {
                return;
            } else {
                $('.inte_folder_layer').remove();
            }
        });
        // �α��� �� Ŭ���� ��ǰ ���ɻ�ǰ�� ����
        if (sessionStorage.getItem('tempWishOtion') && parseInt($('#memberSeq').val()) > 0) {
            var tempWishOtion = JSON.parse(sessionStorage.getItem('tempWishOtion'));
            $.ajax({
                type: 'post',
                url: getWishHost() + '/globalData/wishList/getWishListInfo.ajax.php',
                data: {
                    prodCode: tempWishOtion.prodCode,
                    type: 'saveAfterLogin',
                    serviceType: tempWishOtion.serviceType,
                    price: tempWishOtion.price
                },
                crossDomain: true,
                contentType: 'application/x-www-form-urlencoded; charset=utf-8',
                xhrFields: {
                    withCredentials: true
                },
                success: function (data) {
                    var resultArr = $.parseJSON(data);
                    if (resultArr.status == 'N') {
                        var sAlert = '�ý��� �������� ' + resultArr.startDate + '���� ' + resultArr.endDate;
                        sAlert += '���� ���� �̿��� ���ѵ˴ϴ�. ���ݸ� ��ٷ� �ּ���.';
                        alert(sAlert);
                        return false;
                    } else {
                        if (resultArr.sSaveSuccess == 'wish_full') {
                            alert('���������� ���ɻ�ǰ ���� ������ �ִ� 500���Դϴ�.');
                        } else if (resultArr.sSaveSuccess == 'wish_failed') {
                            alert('�˼��մϴ�. ���ɻ�ǰ ���忡 �����Ͽ����ϴ�.\n�ٽ� �� �� ������ �ֽʽÿ�.');
                        } else if (resultArr.sSaveSuccess == 'wish_success') {
                            var tempWishOtionList = tempWishOtion.prodCode.toString().split('|');

                            for (const key in tempWishOtionList) {
                                var prodCode = tempWishOtionList[key];
                                // ������ Ȱ��ȭ
                                // ��ǰ��α�
                                if ($(`[data-productcode="${prodCode}"]`).length > 0) {
                                    $(`[data-productcode="${prodCode}"]`).addClass('on');
                                }

                                // [�񵿱�] ������ǰ
                                if ($('#relationProductListArea').length > 0) {
                                    let observer = new MutationObserver((mutations) => {
                                        if ($(`[code="${prodCode}"]`).length > 0) {
                                            $(`[code="${prodCode}"]`).addClass('on');
                                        }
                                    });
                                    observer.observe($('#relationProductListArea')[0], {
                                        attributes: true,
                                        childList: true,
                                        characterData: true
                                    });
                                }

                                // ��ǰ����Ʈ , ���հ˻�
                                if ($(`[code="${prodCode}"]`).length > 0) {
                                    $(`[code="${prodCode}"]`).addClass('on');
                                }

                                // ��ǰ�� ����
                                if ($(`.btn_interest[data-prod-code="${prodCode}"]`).length > 0) {
                                    $(`.btn_interest[data-prod-code="${prodCode}"]`).addClass('active');
                                }

                                // ��ȹ��
                                if ($(`.btn_int[data-productcode="${prodCode}"]`).length > 0) {
                                    $(`.btn_int[data-productcode="${prodCode}"]`).addClass('on');
                                }
                                var wishCount = parseInt($('.btn_user.btn_user--wish .badge').text());
                                if (wishCount <= 499) {
                                    // 500 ������ ���
                                    $('.btn_user.btn_user--wish .badge').text(
                                        parseInt($('.btn_user.btn_user--wish .badge').text()) + 1
                                    );
                                }
                            }
                        }
                    }
                    sessionStorage.removeItem('tempWishOtion');
                }
            });
        }
    });
})(jQuery);

function dnwLoggingApplicationClient(prodCode, memberCode) {
    var prodCodes = prodCode
        ? prodCode
              .toString()
              .split('|')
              .filter(function (code) {
                  return code;
              })
        : [];
    var requestParams = {
        uxid: 'P21004',
        parameter: {
            products: [],
            memberCode: parseInt(memberCode) || undefined
        }
    };

    prodCodes.forEach(function (code) {
        if ($('#min_price_' + code).length) {
            var minPrice = $('#min_price_' + code).val() || '';
            if (minPrice) {
                requestParams.parameter.products.push({
                    pcode: parseInt(code) || 0,
                    minPrice: parseInt(minPrice.replace(/,/g, '')) || 0
                });
            }
        }
    });

    if (requestParams.parameter.products.length > 0) {
        if (typeof DSAC === 'object' && DSAC !== null) {
            DSAC.execute(JSON.stringify(requestParams));
        }
        if (typeof DANAWA_LOGGING_APPLICATION_CLIENT === 'object' && DANAWA_LOGGING_APPLICATION_CLIENT !== null) {
            DANAWA_LOGGING_APPLICATION_CLIENT.execute(JSON.stringify(requestParams));
        }
    }
}
function getWishHost() {
    var host = location.host;
    if (location.host.indexOf('dpg') > -1 || location.host.indexOf('shoppingguide') > -1) {
        host = 'www.danawa.com';
        if (location.host.indexOf('-local') > -1 || location.host.indexOf('-t') > -1) {
            host = 'www-t.danawa.com';
        }
    }
    return location.protocol + '//' + host;
}
