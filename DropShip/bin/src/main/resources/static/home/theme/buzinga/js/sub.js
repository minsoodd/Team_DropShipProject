$(function(){
    rankingSlider()
    gridOptFunc()
    shopDetailNaviFunc()
    sctSlider()
    combineSortFunc()
    decoFunc()
    $('input').attr('autocomplete','off');

});



/*===== RANKING SLIDER FUNCTION ===== */
function rankingSlider() {
    if($('.ranking-slider-wrap').length > 0){
        var rankingThumbOptions = {}; 
        if($('.ranking-thumb-slider .swiper-slide').length > 1){
            rankingThumbOptions = { 
                loop:true,
                speed:1000,
                spaceBetween: 0,
                observer: true,
                observeParents: true,
                on: {
                    progress: function() {
                        for (var i=0; i < this.slides.length; i++) {
                            var slideProgress = this.slides[i].progress;
                            var innerOffset = this.width * 0.5;
                            var innerTranslate = slideProgress * innerOffset;
                            this.slides[i].querySelector('.ranking-img-wrap').style.transform = 'translate3d(' + innerTranslate + 'px, 0, 0)';
                        }
                    },
                    touchStart: function() {
                        for (var i = 0; i < this.slides.length; i++) {
                            this.slides[i].style.transition = '';
                        }
                    },
                    setTransition: function(speed) {
                        for (var i = 0; i < this.slides.length; i++) {
                            this.slides[i].style.transition = speed + 'ms';
                            this.slides[i].querySelector('.ranking-img-wrap').style.transition = speed + 'ms';
                        }
                    }
                }
            } 
        }else{
            rankingThumbOptions = { 
                loop:false,
                speed:1000,
                spaceBetween: 0,
                observer: true,
                observeParents: true,
                on: {
                    progress: function() {
                        for (var i=0; i < this.slides.length; i++) {
                            var slideProgress = this.slides[i].progress;
                            var innerOffset = this.width * 0.5;
                            var innerTranslate = slideProgress * innerOffset;
                            this.slides[i].querySelector('.ranking-img-wrap').style.transform = 'translate3d(' + innerTranslate + 'px, 0, 0)';
                        }
                    },
                    touchStart: function() {
                        for (var i = 0; i < this.slides.length; i++) {
                            this.slides[i].style.transition = '';
                        }
                    },
                    setTransition: function(speed) {
                        for (var i = 0; i < this.slides.length; i++) {
                            this.slides[i].style.transition = speed + 'ms';
                            this.slides[i].querySelector('.ranking-img-wrap').style.transition = speed + 'ms';
                        }
                    }
                }
            } 
        }
        var rankingThumbSlider = new Swiper('.ranking-thumb-slider', rankingThumbOptions);

        var rankingInfoOptions = {}; 
        if($('.ranking-thumb-slider .swiper-slide').length > 1){
            rankingInfoOptions = { 
                loop:true,
                speed:1000,
                autoplay: {
                    delay: 4000,
                    disableOnInteraction:false
                },
                effect : 'fade',
                fadeEffect: {
                    crossFade: true
                },
                spaceBetween: 0,
                observer: true,
                observeParents: true,
                navigation: {
                    nextEl: '.ranking-slider-wrap .swiper-button-next',
                    prevEl: '.ranking-slider-wrap .swiper-button-prev',
                },
                pagination: {
                    el: ".ranking-slider-wrap .swiper-pagination",
                    clickable: true,
                },
            } 
        }else{
            rankingInfoOptions = { 
                loop:false,
                speed:1000,
                effect : 'fade',
                fadeEffect: {
                    crossFade: true
                },
                spaceBetween: 0,
                observer: true,
                observeParents: true,
                navigation: {
                    nextEl: '.ranking-slider-wrap .swiper-button-next',
                    prevEl: '.ranking-slider-wrap .swiper-button-prev',
                },
                pagination: {
                    el: ".ranking-slider-wrap .swiper-pagination",
                    clickable: true,
                },
            }
        }
        var rankingInfoSlider = new Swiper('.ranking-info-slider', rankingInfoOptions);

        rankingThumbSlider.controller.control = rankingInfoSlider; 
        rankingInfoSlider.controller.control = rankingThumbSlider;

        var slidersCount = rankingInfoSlider.params.loop ? rankingInfoSlider.slides.length - rankingInfoSlider.loopedSlides*2 : rankingInfoSlider.slides.length;
        
        $('.swiper-counter .total').html('0'+slidersCount);

        function initProgressBar(){
            $('.swiper-progress-bar .progress').stop().animate({
                width: '100%'
            }, 4000, 'linear');
        }
        initProgressBar();
        
        rankingInfoSlider.on('slideChange', function () {
            $('.swiper-counter .current').html('0'+(this.realIndex + 1));
            $('.swiper-progress-bar .progress').stop().animate();
            $('.swiper-progress-bar .progress').css('width', '0');
            initProgressBar();
        });
    }
}



/*===== GRID OPT LIST FUNCTION ===== */
function gridOptFunc() {
    if($('.grid-sort-list').length > 0){
        $('.grid-sort-list').each(function(){
            $(this).find('.btn-sort-open').on('click',function(e){
                e.preventDefault();
                $(".grid-sort-list").removeClass('on');
                $(this).parent().addClass('on');
            });
            $(document).click(function(e){
                if (!$('.grid-sort-list').is(e.target) && $('.grid-sort-list').has(e.target).length === 0){
                    $('.grid-sort-list').removeClass('on');
                }
            });
        });
    }
}



/*===== SHOP DETAIL NAVI FUNCTION ===== */
function shopDetailNaviFunc() {
    if($('#sit_ov_bottom .sanchor-wrap').length > 0) {
        $('#sit_ov_bottom .sanchor li a').on('click',function(e){
            e.preventDefault();
            var sanNum = $(this).parent().index();

            $('#sit_ov_bottom .sanchor li a').removeClass('sanchor_on');
            $(this).addClass('sanchor_on');
            $('#sit_ov_bottom .sit_con').removeClass('open');
            $('#sit_ov_bottom .sit_con').eq(sanNum).addClass('open');

            $('html, body').animate({
                scrollTop: $('#sanchor_pos').offset().top
            }, 0);
            $('#header').removeClass('scr-up');
            $('#header').addClass('scr-down');
        });
    }
}



/*===== BEST ART SLIDER FUNCTION ===== */
function sctSlider() {
    if($('.sct-slider-wrap').length > 0){
        var sctSlider = new Swiper(".sct-slider", {
            //loop:true,
            speed:1000,
            slidesPerView: 4,
            spaceBetween: 30,
            observer: true,
            observeParents: true,
            navigation: {
                nextEl: ".sct-slider-wrap .swiper-button-next",
                prevEl: ".sct-slider-wrap .swiper-button-prev",
            },
            breakpoints: {
                480: {
                    slidesPerView: 1,
                    slidesPerGroup: 1,
                },
                767: {
                    slidesPerView: 2,
                    slidesPerGroup: 2,
                },
                1440: {
                    slidesPerView: 3,
                    spaceBetween: 20,
                    slidesPerGroup: 3,
                },
            },
        });
            
    }
}



/*===== BEST ART SLIDER FUNCTION ===== */
function combineSortFunc() {
    if($('.combine-sort-wrap').length > 0){
        $(".combine-sort-wrap > ul > li > a").on('click',function(e){
            if($(this).parent().find('ul').length > 0){
                e.preventDefault();
                if($(this).parent().hasClass('on')){
                    $(this).parent().removeClass('on');
                    $(this).parent().find('ul').stop().slideUp();
                }else{
                    $('.combine-sort-wrap > ul > li').removeClass('on');
                    $(this).parent().addClass('on');
                    $('.combine-sort-wrap > ul > li').find('ul').stop().slideUp();
                    $(this).parent().find('ul').stop().slideDown();
                }
            }
        });
            
    }
}





/*===== SELECTBOX DECORATION FUNCTION ===== */
function decoFunc() {
    if($('.deco-select').length > 0){
        $('.deco-select').niceSelect();
    }
}
