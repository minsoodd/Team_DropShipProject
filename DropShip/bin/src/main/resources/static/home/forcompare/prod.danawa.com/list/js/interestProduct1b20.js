// 관심상품 저장 취소
function saveCancel() {
    var msg = '정말 저장하지 않고 취소 하시겠습니까?';
    if (confirm(msg) == true) {
        opener.focus();
        self.close();
    } else return;
}

//관심상품 저장 할 팝업창 띄우기
function popupWishProduct(productCode, e) {
    var posX = (posY = 0);

    var url = './interestProduct.php?productCode=' + productCode;
    if (document.all) {
        posX = e.screenX;
        posY = e.screenY;
    } else {
        posX = e.screenX;
        posY = e.screenY;
    }
    posX = posX - 100;
    posY = posY + 15;

    var userHeight = screen.availHeight;
    if (userHeight - posY < 350) {
        posY = posY - 350;
    }

    e.preventDefault();
    var opt = 'left=' + posX + ',top=' + posY + ',width=500,height=313,resizable=false';
    var popWin = window.open(url, 'pop_wishFolder', opt);
    popWin.focus();
}

//관심상품 저장 할 팝업창 띄우기
function popupInterestProduct(productCode, e) {
    var posX = (posY = 0);

    var url = '/list/popup/interestProduct.php?productCode=' + productCode;
    if (document.all) {
        posX = e.screenX;
        posY = e.screenY;
    } else {
        posX = e.screenX;
        posY = e.screenY;
    }
    posX = posX - 100;
    posY = posY + 15;

    var userHeight = screen.availHeight;
    if (userHeight - posY < 350) {
        posY = posY - 350;
    }

    var opt = 'left=' + posX + ',top=' + posY + ',width=500,height=306,resizable=false';
    var popWin = window.open(url, 'pop_wishFolder', opt);
}
