<!--

// ����
function ProdView(nCateC1, nCateC2, nCateC3, nCateC4, nProdC) //*** ��ǰ �������� �˾�â ����
{
	var args = ProdView.arguments;
	var args_len = args.length;
	if(args_len > 5) nProdC = args[5];

	var nDepth;
	switch (true) {
		case (nCateC4 > 0) : nDepth = 4; break;
		case (nCateC3 > 0) : nDepth = 3; break;
		case (nCateC2 > 0) : nDepth = 2; break;
		case (nCateC1 > 0) : nDepth = 1; break;
	}
	sUrl =  'http://www.danawa.com/elec/prod_view/prod_view_frame.php?cmd=view' +
			'&cate_c1=' + nCateC1 +
			'&cate_c2=' + nCateC2 +
			'&cate_c3=' + nCateC3 +
			'&cate_c4=' + nCateC4 +
			'&depth='   + nDepth  +
			'&prod_c='  + nProdC;

	WindowOpen(sUrl, '_blank', 22, 0, 968, 700, false, false, false, true, true);
}

// http://www.danawa.com/car/ �������� ����
function ProdView_CAR(nCateC1, nCateC2, nCateC3, nCateC4, nProdC) {}

function WindowOpen(url, name, left, top, width, height, toolbar, menubar, statusbar, scrollbar, resizable)
{
  toolbar_str = toolbar ? 'yes' : 'no';
  menubar_str = menubar ? 'yes' : 'no';
  statusbar_str = statusbar ? 'yes' : 'no';
  scrollbar_str = scrollbar ? 'yes' : 'no';
  resizable_str = resizable ? 'yes' : 'no';
  window.open(url, name, 'left='+left+',top='+top+',width='+width+',height='+height+',toolbar='+toolbar_str+',menubar='+menubar_str+',status='+statusbar_str+',scrollbars='+scrollbar_str+',resizable='+resizable_str);
}

function goCateViewNew(cate1, cate2) {}
function goCateViewELEC(cate1,cate2,cate3,cate4,viewtype) {}
function goCateViewDICA(cate1,cate2, Ca_ram) {}
function goCateViewNOTEBOOK(cate1,cate2) {}
function goCateViewNOTEBOOKList(cate1,cate2,cate3,cate4) {}
function goCateViewNOTEBOOKList2(cate1,cate2,cate3,cate4) {}
function goCateViewDISPLAY(cate1,cate2) {}
function goNotebookView(opt) {}
function goSrchOptionView(cate1,cate2,val) {}

// ��ǰ��α� �˾�
function pBlog(param)
{
	var sParam = "";
	var oArg = pBlog.arguments;
	oArg[0] = oArg[0].toString();
	oArg = oArg[0].split("/"); 
	var nArg = oArg.length;

	if(nArg == 0) {alert("���ڰ��� �����ϴ�."); return;}

	if(nArg == 1) sParam = '?pcode='+oArg[0];
	else {
		sParam = '?pcode='+oArg[0];
	}
	
	var screenHeight = screen.availHeight-40;
		
	var url = "https://prod.danawa.com/info/"+sParam;
	
	windowopen = window.open(url);
}

// http://www.danawa.com/car/ �������� ����
function pCatalog() {}


// goods.danawa.com �������� ����
function pPriceCompare(prodid) {}

function goLinkPage(cate1,cate2,cate3,cate4,prod_c)
{
	var screenHeight = screen.height;
	var url = "/elec/prod_view/go_link_elec.php?cate1="+cate1+"&cate2="+cate2+"&cate3="+cate3+"&cate4="+cate4+"&prod_c="+prod_c;
	WindowOpen(url, '_blank', 0, 0, 936, screenHeight, false, false, false, false, true);
}

function goLinkPage2(cate1,cate2,cate3,cate4,prod_c)
{
	var url = "/elec/prod_view/go_link_elec.php?cate1="+cate1+"&cate2="+cate2+"&cate3="+cate3+"&cate4="+cate4+"&prod_c="+prod_c;
	alert(url);
	WindowOpen(url, '_blank', 0, 0, 936, 783, false, false, false, false, true);
}

// ��ǰ �ǹ�ũ�� ����
var RSI = {
	load : function (rsicode,pcode)
	{
		// rsicode ��
		//	5:mp3,�Ǿ� | 6:��ī | 14:�޴���
		window.open('http://timg.danawa.com/rsi/RealSize/Application/RSIDownload_'+rsicode+'.php?totalset=0&pcode=' + pcode, 'window' + pcode, 'width=579 height=290');
	}
}

// prod.danawa.com/info/popup/productImagePopup.php �������� ����
function prodImageView(pcode, prodname, section) {}

// prod.danawa.com/info/popup/prodImageViewer.php �������� ����
function prodImageView_SL(pcode, section) {}

/* VR �˾�â ���� */
function prodImageViewVR(pcode, section,nCurrentCate1,nCurrentCate2,nCurrentCate3,isProdListOrBlog)
{
	if (section=='game') {
		var url = "https://prod.danawa.com/info/popup/prodImageViewerVR.php?prod_c="+pcode+"&section="+section;
		var opt = "width=975, height=750, scrollbars=no";
	}
	else {
		var url = "https://prod.danawa.com/info/popup/prodImageViewerVR.php?prod_c="+pcode+"&cate1="+nCurrentCate1+"&cate2="+nCurrentCate2+"&cate3="+nCurrentCate3+"&type="+isProdListOrBlog;
		var opt = "width=975, height=750, scrollbars=no";
	}
	window.open(url, "prodImage", opt);
}

//�÷��� ��ǰ / ����� ��ǰ ��� ������ ����
function fnAdvertisStatistics(nSaleSeq,actionType,adverServiceSeq)
{
	jQuery("#ifrmAdvertisStatistics_" + nSaleSeq).attr("src","");

	var sAdvertiseStatisticsiframeUrl = "http://pc.danawa.com/bizAdver/statistics/advertiseStatisticsActionApi.php?adverServiceSeq=";
	sAdvertiseStatisticsiframeUrl +=  adverServiceSeq;
	sAdvertiseStatisticsiframeUrl +=  "&actionType="+actionType+"&advertiseSeq="+nSaleSeq;

	jQuery("#ifrmAdvertisStatistics_" + nSaleSeq).attr("src",sAdvertiseStatisticsiframeUrl);
}



//-->