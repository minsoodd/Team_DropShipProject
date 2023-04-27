$(function(){
    cursorFunc()
    visualSlider()
    bestSlider()
    pickSlider1()
    pickSlider2()
    pickMenuFunc()
    newartSlider()
    reviewSlider()
});



/*===== CURSOR FUNCTION ===== */
function cursorFunc() {
    var cursorBall = $('.cursor-ball');
    var cursorBallCon = $('.cursor-ball .ball');
    var cursorAble = $('.cursor-able');

    var pos = { 
        x: window.innerWidth / 2, 
        y: window.innerHeight / 2 
    };
    var mouse = { 
        x: pos.x, 
        y: pos.y 
    };
    var speed = 0.35;
    
    gsap.set(cursorBall, {
        xPercent: -50, 
        yPercent: -50
    });
    
    var xSet = gsap.quickSetter(cursorBall, "x", "px");
    var ySet = gsap.quickSetter(cursorBall, "y", "px");

    window.addEventListener("mousemove", function(e){    
        mouse.x = e.clientX;
        mouse.y = e.clientY;  
    });
    
    

    function myfunc(){
        var dt = 1.0 - Math.pow(1.0 - speed, gsap.ticker.deltaRatio()); 
        pos.x += (mouse.x - pos.x) * dt;
        pos.y += (mouse.y - pos.y) * dt;
        xSet(pos.x);
        ySet(pos.y);
    }

    cursorAble.each(function(){
        var cursorTxt = $(this).attr('data-cursor');
        $(this).on('mouseenter',function(e){
            cursorBall.css({'display':'flex'});
            gsap.ticker.add(myfunc);
            if(cursorTxt !== undefined){
                cursorBall.append('<div class="text">'+cursorTxt+'</div>');
                gsap.to(cursorBallCon, .3, {
                    scale: 3.5
                });
            }else{
                cursorBallCon.css({'border-color':'#c9ab81'});
                gsap.to(cursorBallCon, .3, {
                    scale: 2.5
                });
            }
        });
        $(this).on('mouseleave',function(e){
            cursorBall.css({'display':'none'});
            gsap.ticker.remove(myfunc);
            if(cursorTxt !== undefined){
                cursorBall.find(".text").remove();
                gsap.to(cursorBallCon, .3, {
                    scale: 0
                });
            }else{
                cursorBallCon.css({'border-color':'#fff'});
                gsap.to(cursorBallCon, .3, {
                    scale: 0
                });
            }
        });
    });   
}




/*===== VISUAL SLIDER FUNCTION ===== */
function visualSlider() {
    var visualSlider = new Swiper(".visual-slider", {
        loop:true,
        speed:1000,
        slidesPerView: 1,
        spaceBetween: 0,
        centeredSlides: true,
        observer: true,
        observeParents: true,
        navigation: {
            nextEl: ".visual .swiper-button-next",
            prevEl: ".visual .swiper-button-prev",
        },
        pagination: {
            el: ".visual .swiper-pagination",
            clickable: true,
            renderBullet: function (index, className) {
                var bulletArray = [];
                $(".visual .swiper-slide").each(function() {
                    bulletArray.push($(this).find('h2').html());
                });  
                return '<div class="'+className+'">'+'<span>'+'0'+(index+1)+'</span>'+'<strong>'+bulletArray[index+1]+'</strong></div>'+'</div>';
            },
        },
        autoplay: {
            delay: 3000,
            disableOnInteraction:false
        },
        on: {
            init : function () {
                $('.visual-slider').addClass('load-init');
            },
            progress: function() {
                for (var i=0; i < this.slides.length; i++) {
                    var slideProgress = this.slides[i].progress;
                    var innerOffset = this.width * 0.5;
                    var innerTranslate = slideProgress * innerOffset;
                    this.slides[i].querySelector('.visual-bg-wrap').style.transform = 'translate3d(' + innerTranslate + 'px, 0, 0)';
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
                    this.slides[i].querySelector('.visual-bg-wrap').style.transition = speed + 'ms';
                }
            }
        }
    });

    visualSlider.on('slideChange', function(){
		$('.visual-slider').removeClass('load-init');
	});
}



/*===== BEST ART SLIDER FUNCTION ===== */
function bestSlider() {
    if( $('.best-slider').length > 0) {
        var bestOptions = {}; 
        bestOptions = { 
            loop:false,
            speed:1000,
            slidesPerView: 4,
            slidesPerGroup: 4,
            spaceBetween: 30,
            observer: true,
            observeParents: true,
            navigation: {
                nextEl: '.best .swiper-button-next',
                prevEl: '.best .swiper-button-prev',
            },
            pagination: {
                el: '.best .swiper-pagination',
                clickable: true,
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
        } 
        var bestSlider = new Swiper('.best-slider', bestOptions);
    }
}



/*===== MD PICK SLIDER FUNCTION ===== */
function pickSlider1() {
    if( $('#pick-tabcon01 .pick-thumb-slider').length > 0) {
        var pickThumbSlider1 = new Swiper("#pick-tabcon01 .pick-thumb-slider", {
            loop:false,
            speed:1000,
            slidesPerView: 1,
            spaceBetween: 0,
            observer: true,
            observeParents: true,
            //loopAdditionalSlides: 1,
            on: {
                progress: function() {
                    for (var i=0; i < this.slides.length; i++) {
                        var slideProgress = this.slides[i].progress;
                        var innerOffset = this.width * 0.5;
                        var innerTranslate = slideProgress * innerOffset;
                        this.slides[i].querySelector('.pick-img-wrap').style.transform = 'translate3d(' + innerTranslate + 'px, 0, 0)';
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
                        this.slides[i].querySelector('.pick-img-wrap').style.transition = speed + 'ms';
                    }
                }
            }
        });

        var pickInfoSlider1 = new Swiper("#pick-tabcon01 .pick-info-slider", {
            loop:false,
            speed:1000,
            effect : 'fade',
            fadeEffect: {
                crossFade: true
            },
            slidesPerView: 1,
            spaceBetween: 0,
            observer: true,
            observeParents: true,
            //loopAdditionalSlides: 1,
            navigation: {
                nextEl: "#pick-tabcon01 .swiper-button-next",
                prevEl: "#pick-tabcon01 .swiper-button-prev",
            },
        });

        pickThumbSlider1.controller.control = pickInfoSlider1; 
        pickInfoSlider1.controller.control = pickThumbSlider1;
    }
}



function pickSlider2() {
    if( $('#pick-tabcon02 .pick-thumb-slider').length > 0) {
        var pickThumbSlider2 = new Swiper("#pick-tabcon02 .pick-thumb-slider", {
            loop:false,
            speed:1000,
            slidesPerView: 1,
            spaceBetween: 0,
            observer: true,
            observeParents: true,
            //loopAdditionalSlides: 1,
            on: {
                progress: function() {
                    for (var i=0; i < this.slides.length; i++) {
                        var slideProgress = this.slides[i].progress;
                        var innerOffset = this.width * 0.5;
                        var innerTranslate = slideProgress * innerOffset;
                        this.slides[i].querySelector('.pick-img-wrap').style.transform = 'translate3d(' + innerTranslate + 'px, 0, 0)';
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
                        this.slides[i].querySelector('.pick-img-wrap').style.transition = speed + 'ms';
                    }
                },
            }
        });

        var pickInfoSlider2 = new Swiper("#pick-tabcon02 .pick-info-slider", {
            loop:false,
            speed:1000,
            effect : 'fade',
            fadeEffect: {
                crossFade: true
            },
            slidesPerView: 1,
            spaceBetween: 0,
            observer: true,
            observeParents: true,
            //loopAdditionalSlides: 1,
            navigation: {
                nextEl: "#pick-tabcon02 .swiper-button-next",
                prevEl: "#pick-tabcon02 .swiper-button-prev",
            },
        });

        pickThumbSlider2.controller.control = pickInfoSlider2; 
        pickInfoSlider2.controller.control = pickThumbSlider2;
    }
}



/*===== PICK MENU FUNCTION ===== */
function pickMenuFunc() {
    $(".pick-tab li a").on('click',function(){
        var pickNum = $(this).parent().index();
        if(!$(this).parent().hasClass('on')){
            $('.pick-tab li').removeClass('on').eq(pickNum).addClass('on');
            $('.pick-tabcon-wrap').find('.pick-tabcon').hide().eq(pickNum).addClass('on').fadeIn(400);
        }
    });
}



/*===== NEW ART SLIDER FUNCTION ===== */
function newartSlider() {
    if( $('.newart-slider').length > 0) {
        var newartOptions = {}; 
        newartOptions = { 
            loop:false,
            speed:1000,
            slidesPerView: 3,
            slidesPerGroup: 3,
            spaceBetween: 30,
            observer: true,
            observeParents: true,
            navigation: {
                nextEl: ".newart .swiper-button-next",
                prevEl: ".newart .swiper-button-prev",
            },
            pagination: {
                el: ".newart .swiper-pagination",
                clickable: true,
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
                1024: {
                    spaceBetween: 20,
                },
            },
        } 
        var newartSlider = new Swiper('.newart-slider', newartOptions);
    }
}



/*===== REVIEW SLIDER FUNCTION ===== */
function reviewSlider() {
    if( $('.review-slider').length > 0) {
        var reviewOptions = {}; 
        reviewOptions = { 
            loop:false,
            speed:1000,
            slidesPerView: 3,
            spaceBetween: 30,
            observer: true,
            observeParents: true,
            navigation: {
                nextEl: ".review .swiper-button-next",
                prevEl: ".review .swiper-button-prev",
            },
            pagination: {
                el: ".review .swiper-pagination",
                clickable: true,
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
                1024: {
                    spaceBetween: 20,
                },
            },
        } 
        var reviewSlider = new Swiper('.review-slider', reviewOptions);
    }
}