$(function(){
    document.createElement('header');
    document.createElement('footer');
    document.createElement('section');
    document.createElement('aside');
    document.createElement('nav');
    document.createElement('article');
    document.createElement('main');

    loadAos()
    headerFunc()
    familySiteFunc()
    allSearchFunc()
    sitemapFunc()
    sitemapResFunc()
    splitTxtFunc()
    goTopFunc()
    popFunc()

    $(window).on('resize',function(){
        sitemapResFunc()
    });
});




/*===== HEADER FUNCTION ===== */
function headerFunc(){  
    if($(window).scrollTop() <= 50) {
        $('body').removeClass('scr-up');
        $('body').removeClass('scr-down');
    }else{
        $('body').addClass('scr-down');
    }

    $(window).on('mousewheel DOMMouseScroll scroll', function(e){
        var E = e.originalEvent;
        delta = 0;
        if (E.detail) {
            delta = E.detail * -40;
        }else{
            delta = E.wheelDelta;
        }

        if(delta < 0 && $(window).scrollTop() > 50) {
            if(!$('body').hasClass('scr-down')) {
                $('body').addClass('scr-down');
                $('body').removeClass('scr-up');
            } 
        }
        if(delta > 0 && $(window).scrollTop() > 50) {
            if(!$('body').hasClass('scr-up')) {
                $('body').addClass('scr-up');
                $('body').removeClass('scr-down');
            }
        }
        if($(window).scrollTop() <= 50) {
            if($('body').hasClass('scr-up')) {
                $('body').removeClass('scr-up');
            }
            if($('body').hasClass('scr-down')) {
                $('body').removeClass('scr-down');
            }
        }
    });   
}



/*===== FAMILY SITE FUNCTION ===== */
function familySiteFunc() {
    $('.btn-family-site').on('click',function(){
        $(this).parent().toggleClass('on');
    });
    $(document).click(function(e){
        if (!$('.btn-family-site').is(e.target) && $('.btn-family-site').has(e.target).length === 0){
            $('.btn-family-site').parent().removeClass('on');
        }
    });
}



/*===== SITEMAP FUNCTION ===== */
function sitemapFunc() {
    $('.btn-sitemap-open, .btn-sitemap-close').on('click',function(e){
        e.preventDefault();
        if (!$('#header .sitemap').hasClass('open')){
            $('#header .sitemap').addClass('open');
        }else{
            $('#header .sitemap').removeClass('open');
        }
    });
    $('.sitemap').click(function(e){
        if (!$('.sitemap .inner').is(e.target) && $('.sitemap .inner').has(e.target).length === 0){
            $('.sitemap .inner').parents('.sitemap').removeClass('open');
        }
    });
}



/*===== SITEMAP RESIZE FUNCTION ===== */
function sitemapResFunc() {
    $('.all-menu > li').removeClass('on');

    if($(window).width() > 1025) {
        $('.all-menu').off();
        $('.all-menu > li > a').off();

        $('.all-menu > li > a').on('mouseenter click',function(e){
            e.preventDefault();
            $('.all-menu > li').removeClass('on');
            $(this).parent().addClass('on');
        });
        $('.all-menu').on('mouseleave',function(){
            $('.all-menu > li').removeClass('on');
        });
       
    }else{
        $('.all-menu').off();
        $('.all-menu > li > a').off();
        
        $('.all-menu > li > a').on('click',function(e){
            e.preventDefault();
            $('.all-menu > li').removeClass('on');
            $(this).parent().addClass('on');
        });
    }  
}



/*===== ALL SEARCH FUNCTION ===== */
function allSearchFunc() {
    $('#header .btn-all-search-open').on('click',function(e){
        e.preventDefault();
        $('.all-search-wrap').addClass('on');
    });
    $('#header .btn-all-search-close').on('click',function(e){
        e.preventDefault();
        $('.all-search-wrap').removeClass('on');
    });
}



/*===== LOAD AOS FUNCTION ===== */
function loadAos() {
    var ieVersion = (function () {
        var version = -1;
        if (
            navigator.appName == 'Microsoft Internet Explorer' &&
            navigator.userAgent.toLowerCase().indexOf('msie') != -1 &&
            new RegExp('MSIE ([0-9]{1,}[\./0-9]{0,})').exec(navigator.userAgent) != null
        ){
            version = parseInt(RegExp.$1);
        }
        return version;
    })();

    if (ieVersion !== -1 && ieVersion < 11) {
        $("[data-aos^=fade][data-aos^=fade]").css("opacity", "1");
        $("[data-aos^=fade][data-aos^=fade]").css("transform", "none");
    }else{
        AOS.init({
            //offset: 100,
            duration: 1200,
            once:true
        });
        onElementHeightChange(document.body, function(){
            AOS.refresh();
        });        
    }
}

function onElementHeightChange(elm, callback) {
    var lastHeight = elm.clientHeight
    var newHeight;
    
    (function run() {
        newHeight = elm.clientHeight;      
        if (lastHeight !== newHeight) callback();
        lastHeight = newHeight;

        if (elm.onElementHeightChangeTimer) {
          clearTimeout(elm.onElementHeightChangeTimer); 
        }
        elm.onElementHeightChangeTimer = setTimeout(run, 200);
    })();
}



/*===== SPLIT TXT FUNCTION ===== */
function splitTxtFunc() {
    if($('.split-txt').length > 0){
        $('.split-txt').each(function(){
            var splitTxt = $(this);
            var splitTxtText = splitTxt.text().split('');
            splitTxt.html('');

            for (i in splitTxtText) {
                splitTxtText[i] = '<span>' + splitTxtText[i] + '</span>';
            }
            text = splitTxtText.join('');
            splitTxt.html(text);

            var aniText = splitTxt.find('span');
            aniText.each(function(index,item){
                $(this).css({opacity:1,'visibility':'visible', 'animation-delay': (index) * 0.1 + 's'});
                if($(this).text() == ' '){ // �꾩뼱�곌린 �뺤씤
                    $(this).addClass('empty');
                }
            })  
        });
    }
}



/*===== GO TOP FUNCTION ===== */
function goTopFunc(){
    if ($(window).scrollTop() >= $(window).innerHeight()){
        $('#gotop').addClass('fix');
    }else{
        $('#gotop').removeClass('fix');
    }

    $(window).on('scroll', function() {
        if ($(window).scrollTop() >= $(window).innerHeight()){
            $('#gotop').addClass('fix');
        }else{
            $('#gotop').removeClass('fix');
        }
    });

    $('#gotop a').on('click',function(e){
        e.preventDefault();
        $('html, body').animate({
            scrollTop: 0
        }, 600);
    });
}



/*===== POPUP FUNC ===== */
function popFunc() {
    $('.btn-pop-open').on('click',function(e){
        e.preventDefault();
        var popNum = $(this).attr('data-popnum');
        $(".pop"+popNum).addClass("open");
    });  

    $('.btn-pop-close').on('click',function(e){
        e.preventDefault();
        $(this).parents(".pop-wrap").removeClass("open");
    });  

    $('.btn-pop-close2').on('click',function(e){
        e.preventDefault();
        $(this).parents(".pop-wrap").removeClass("open");
    });  
}