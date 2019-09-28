;(function($) {
    "use strict";
    
    
	$(window).on('load', function() {
		$('header .nav.navbar-nav li a, .offcanvas_text ul li a[href^="#"]:not([href="#"])').on('click', function(event) {
			var $anchor = $(this);
			$('html, body').stop().animate({
				scrollTop: $($anchor.attr('href')).offset().top - 85
			}, 1500);
			event.preventDefault();
		});
	})
	
	var nav_offset_top = $('header').height(); 
    /*-------------------------------------------------------------------------------
	  Navbar 
	-------------------------------------------------------------------------------*/

	//* Navbar Fixed  
    function navbarFixed(){
        if ( $('.main_header_area, .dash_tp_menu_area, .hosting_menu, .mobile_menu_inner').length ){ 
            $(window).scroll(function() {
                var scroll = $(window).scrollTop();   
                if (scroll >= nav_offset_top ) {
                    $(".main_header_area, .dash_tp_menu_area, .hosting_menu, .mobile_menu_inner").addClass("navbar_fixed");
                } else {
                    $(".main_header_area, .dash_tp_menu_area, .hosting_menu, .mobile_menu_inner").removeClass("navbar_fixed");
                }
            });
        };
    };
    navbarFixed();
	
	
	/*----------------------------------------------------*/
    /* Offcanvas Menu js
    /*----------------------------------------------------*/
    $('.menu_icon, .close_icon').on('click',function(){
        if( $(".offcanvas_menu").hasClass('open') ){
            $(".offcanvas_menu").removeClass('open')
        }
        else{
            $(".offcanvas_menu").addClass('open')
        }
        return false
    });
    
    
    
    /*----------------------------------------------------*/
    /*  Main Slider js
    /*----------------------------------------------------*/
    function main_slider(){
        if ( $('#main_slider').length ){
            $("#main_slider").revolution({
                sliderType:"standard",
                sliderLayout:"auto",
                delay:6000000,
                disableProgressBar:"on",
                navigation: {
                    onHoverStop: 'off',
                    touch:{
                        touchenabled:"on",
                        swipe_threshold: 75,
                        swipe_min_touches: 1,
                        swipe_direction: "vertical",
                        drag_block_vertical: false
                    }
                    ,
                    bullets: {
                        enable:true,
                        hide_onmobile:true,
                        hide_under:1100,
                        style:"hermes",
                        hide_onleave:false,
                        direction:"vertical",
                        h_align:"right",
                        v_align:"center",
                        h_offset:170,
                        v_offset:0,
                        space:10,
                        tmp:''
                    }
                },
                responsiveLevels:[4096,1199,992,767,480],
                gridwidth:[1170,1000,750,700,300],
                gridheight:[900,900,760,600,500],
                lazyType:"smart",
                fallbacks: {
                    simplifyAll:"off",
                    nextSlideOnWindowFocus:"off",
                    disableFocusListener:false,
                }
            })
        }
    }
    main_slider();
    
    /*----------------------------------------------------*/
    /*  Main Slider js
    /*----------------------------------------------------*/
    function main_slider2(){
        if ( $('#main_slider2').length ){
            $("#main_slider2").revolution({
                sliderType:"standard",
                sliderLayout:"auto",
                delay:40000000, 
                disableProgressBar:"on",
                navigation: {
                    onHoverStop: 'off',
                    touch:{
                        touchenabled:"on"
                    },
                    arrows: {
                        style:"zeus",
                        enable:false,
                        hide_onmobile:true,
                        hide_under:767,
                        hide_onleave:true,
                        hide_delay:200,
                        hide_delay_mobile:1200,
                        tmp:'<div class="tp-title-wrap">  	<div class="tp-arr-imgholder"></div> </div>',
                        left: {
                            h_align: "left",
                            v_align: "center",
                            h_offset: 50,
                            v_offset: 0
                        },
                        right: {
                            h_align: "right",
                            v_align: "center",
                            h_offset: 50,
                            v_offset: 0
                        }
                    },
                },
                responsiveLevels:[4096,1199,992,767,480],
                gridwidth:[1170,1000,750,700,300],
                gridheight:[850,850,700,600,600],
                lazyType:"smart",
                fallbacks: {
                    simplifyAll:"off",
                    nextSlideOnWindowFocus:"off",
                    disableFocusListener:false,
                }
            })
        }
    }
    main_slider2();
    
    /*----------------------------------------------------*/
    /*  Main Slider js
    /*----------------------------------------------------*/
    function main_slider8(){
        if ( $('#main_slider_eight').length ){
            $("#main_slider_eight").revolution({
                sliderType:"standard",
                sliderLayout:"auto",
                delay:40000000, 
                disableProgressBar:"on",
                navigation: {
                    onHoverStop: 'off',
                    touch:{
                        touchenabled:"on"
                    },
                    arrows: {
                        style:"zeus",
                        enable:false,
                        hide_onmobile:true,
                        hide_under:767,
                        hide_onleave:true,
                        hide_delay:200,
                        hide_delay_mobile:1200,
                        tmp:'<div class="tp-title-wrap">  	<div class="tp-arr-imgholder"></div> </div>',
                        left: {
                            h_align: "left",
                            v_align: "center",
                            h_offset: 50,
                            v_offset: 0
                        },
                        right: {
                            h_align: "right",
                            v_align: "center",
                            h_offset: 50,
                            v_offset: 0
                        }
                    },
                },
                responsiveLevels:[4096,1199,992,767,480],
                gridwidth:[1170,1000,750,700,300],
                gridheight:[950,950,950,600,500],
                lazyType:"smart",
                fallbacks: {
                    simplifyAll:"off",
                    nextSlideOnWindowFocus:"off",
                    disableFocusListener:false,
                }
            })
        }
    }
    main_slider8();
    
    
    /*----------------------------------------------------*/
    /*  slider_two_area js
    /*----------------------------------------------------*/
//    function main_slider_two(){
//        if ( $('#main_slider_two').length ){
//            $("#main_slider_two").revolution({
//                sliderType:"standard",
//                sliderLayout:"fullwidth",
//                delay:600000,
//                disableProgressBar:"on",
//                navigation: {
//                    onHoverStop: 'off',
//                    touch:{
//                        touchenabled:"on",
//                        swipe_threshold: 75,
//                        swipe_min_touches: 1,
//                        swipe_direction: "vertical",
//                        drag_block_vertical: false
//                    }
//                },
//                responsiveLevels:[4096,1199,992,767,480],
//                gridwidth:[1170,1000,750,700,300],
//                gridheight:[800,800,760,600,500],
//                lazyType:"smart",
//                fallbacks: {
//                    simplifyAll:"off",
//                    nextSlideOnWindowFocus:"off",
//                    disableFocusListener:false,
//                }
//            })
//        }
//    }
//    main_slider_two();
//	
	/*----------------------------------------------------*/
    /*  Main Slider js
    /*----------------------------------------------------*/
    function main_slider3(){
        if ( $('#main_slider_two').length ){
            $("#main_slider_two").revolution({
                sliderType:"standard",
                sliderLayout:"auto",
                delay:40000000, 
                disableProgressBar:"on",
                navigation: {
                    onHoverStop: 'off',
                    touch:{
                        touchenabled:"on"
                    },
                    arrows: {
                        style:"normal",
                        enable:true,
                        hide_onmobile:true,
                        hide_under:767,
                        hide_onleave:true,
                        hide_delay:200,
                        hide_delay_mobile:1200,
                        left: {
                            h_align: "left",
                            v_align: "center",
                            h_offset: 170, 
                            v_offset: 0
                        },
                        right: {
                            h_align: "right",
                            v_align: "center",
                            h_offset: 170,
                            v_offset: 0
                        }
                    },
                },
                responsiveLevels:[4096,1199,992,767,480],
                gridwidth:[1170,1000,750,700,300],
                gridheight:[800,800,800,600,500],
                lazyType:"smart",
                fallbacks: {
                    simplifyAll:"off",
                    nextSlideOnWindowFocus:"off",
                    disableFocusListener:false,
                }
            })
        }
    }
    main_slider3();
//	
	/*----------------------------------------------------*/
    /*  Main Slider js
    /*----------------------------------------------------*/
    function main_slider10(){
        if ( $('#main_slider_ten').length ){
            $("#main_slider_ten").revolution({
                sliderType:"standard",
                sliderLayout:"auto",
                delay:40000000, 
                disableProgressBar:"on",
                navigation: {
                    onHoverStop: 'off',
                    touch:{
                        touchenabled:"on"
                    },
                    bullets: {
                        enable:true,
                        hide_onmobile:true,
                        hide_under:1100,
                        style:"hermes",
                        hide_onleave:false,
                        direction:"vertical",
                        h_align:"right",
                        v_align:"center",
                        h_offset:50,
                        v_offset:0,
                        space: -5, 
                        tmp:''
                    }
                },
                responsiveLevels:[4096,1199,992,767,480],
                gridwidth:[1170,1000,750,700,300],
                gridheight:[990,990,700,600,500],
                lazyType:"smart",
                fallbacks: {
                    simplifyAll:"off",
                    nextSlideOnWindowFocus:"off",
                    disableFocusListener:false,
                }
            })
        }
    }
    main_slider10();
    
    
    /*----------------------------------------------------*/
    /*  Main Slider js
    /*----------------------------------------------------*/
    function dash_slider(){
        if ( $('#dash_slider').length ){
            $("#dash_slider").revolution({
                sliderType:"standard",
                sliderLayout:"auto",
                delay:6000000,
                disableProgressBar:"on",
                navigation: {
                    onHoverStop: 'off',
                    touch:{
                        touchenabled:"on",
                        swipe_threshold: 75,
                        swipe_min_touches: 1,
                        swipe_direction: "vertical",
                        drag_block_vertical: false
                    }
                    ,
                },
                responsiveLevels:[4096,1199,992,767,480],
                gridwidth:[1170,1000,750,700,300],
                gridheight:[1014,1014,760,600,500],
                lazyType:"smart",
                fallbacks: {
                    simplifyAll:"off",
                    nextSlideOnWindowFocus:"off",
                    disableFocusListener:false,
                }
            })
        }
    }
    dash_slider();
    
    
	
	var swiper = new Swiper('.swiper-container', {
		effect: 'coverflow',
		grabCursor: true,
		centeredSlides: true,
		slidesPerView: 3,
		spaceBetween: -150, 
		coverflowEffect: {
		rotate: 20,
		stretch: 0,
		depth: 50,
		modifier: 2,
		slideShadows : true,
		},
		pagination: {
			el: '.swiper-pagination',
		},
		breakpoints: {
			// when window width is <= 320px
			575: {
			  slidesPerView: 1,
			  spaceBetween: 0,
				rotate: 0,
				stretch: 0,
				depth: 0,
				modifier: 1,
			},
			// when window width is <= 480px
			991: {
			  slidesPerView: 2,
			  spaceBetween: -120,
			},
		  }
	});
	
	
    $(document).ready(function() {
        $('.popup-youtube, .popup-vimeo, .popup-gmaps').magnificPopup({
            disableOn: 700,
            type: 'iframe',
            mainClass: 'mfp-fade',
            removalDelay: 160,
            preloader: false,

            fixedContentPos: false
        });
    });
    
    /*----------------------------------------------------*/
    /*  testimonial slider
    /*----------------------------------------------------*/
    function testimonial_slid(){
        if ( $('.testimonial-carousel').length ){
            $('.testimonial-carousel').owlCarousel({
                loop:true,
                margin: 50,
                items: 3,
                nav:false,
                autoplay: false,
                smartSpeed: 1500,
                dots: true, 
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 1,
                    },
                    767: {
                        items: 2,
                    },
                    1024: {
                        items: 3,
                    }
                }
            })
        }
    }
    testimonial_slid();
    
    function screen_slider_two(){
        if ( $('.screenshot_carousel').length ){
            $('.screenshot_carousel').owlCarousel({
                loop:true,
                margin: 0,
                items: 3,
                nav:false,
                autoplay: true,
                smartSpeed: 1500,
                dots: true, 
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 2,
                    },
                    575: {
                        items: 3,
                    }
                }
            })
        }
    }
    screen_slider_two();
    
    function screen_slider_nine(){
        if ( $('.screen_nine_slider').length ){
            $('.screen_nine_slider').owlCarousel({
                loop:true,
                margin: 30,
                items: 5,
				stagePadding: 80,
                nav:true,
                autoplay: false,
                smartSpeed: 1500,
                dots: true, 
				navContainer: '.screen_nine_area',
                navText: ['<i class="lnr lnr-arrow-left"><span>Previous</span></i>','<i class="lnr lnr-arrow-right"><span>Next</span></i>'],
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 1,
                    },
                    400: {
                        items: 2,
						stagePadding: 0,
                    },
                    575: {
                        items: 3,
						stagePadding: 0,
                    },
                    700: {
                        items: 4,
						nav: false,
						stagePadding: 0,
                    },
                    1200: {
                        items: 5,
                    }
                }
            })
        }
    }
    screen_slider_nine();
    
    
    /*----------------------------------------------------*/
    /*  Clients Slider2
    /*----------------------------------------------------*/
    function user_slider(){
        if ( $('.user_slider').length ){
            $('.user_slider').owlCarousel({
                loop:true,
                margin: 30,
                items: 1,
                nav:false,
                autoplay: true,
                smartSpeed: 1500,
                dots: false,
//                navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
                responsiveClass: true,
//                responsive: {
//                    0: {
//                        items: 1,
//                    },
//                    480: {
//                        items: 2,
//                    },
//                    600: {
//                        items: 4,
//                    },
//                    800: {
//                        items: 6,
//                    }
//                }
            })
        }
    }
    user_slider();
    
    /*----------------------------------------------------*/
    /*  Clients Slider2
    /*----------------------------------------------------*/
    function shop_slider(){
        if ( $('.shop_now_slider').length ){
            $('.shop_now_slider').owlCarousel({
                loop:true,
                margin: 30,
                items: 3,
                nav:true,
                autoplay: false,
                smartSpeed: 1500, 
                dots: false,
				navContainer: '.shop_now_slider',
                navText: ['<i class="icofont icofont-thin-left"></i>','<i class="icofont icofont-thin-right"></i>'],
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 1,
                    },
                    540: {
                        items: 2,
                    },
                    600: {
                        items: 2,
                    },
                    992: {
                        items: 3,
                    }
                }
            })
        }
    }
    shop_slider();
    
    /*----------------------------------------------------*/
    /*  Clients Slider2
    /*----------------------------------------------------*/
    function screen_slider(){
        if ( $('.app_screen_slider').length ){
            $('.app_screen_slider').owlCarousel({
                loop:true,
                margin: 40,
                items: 3,
                nav:false,
                autoplay: true,
                smartSpeed: 1500,
                dots: true, 
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 2,
						margin: 20, 
                    },
                    600: {
                        items: 3,
						margin: 40,
                    }
                }
            })
        }
    }
    screen_slider();
    
    /*----------------------------------------------------*/
    /*  Clients Slider2
    /*----------------------------------------------------*/
    function l_blog_slider(){
        if ( $('.l_blog_slider').length ){
            $('.l_blog_slider').owlCarousel({
                loop:true,
                margin: 0,
                items: 1,
                nav:true,
                autoplay: true,
                smartSpeed: 1500,
                dots: true, 
                navContainer: '.l_blog_text_inner',
                navText: ['<i class="fa fa-angle-left"></i>','<i class="fa fa-angle-right"></i>'],
                responsiveClass: true,
//                responsive: {
//                    0: {
//                        items: 1,
//                    },
//                    480: {
//                        items: 2,
//                    },
//                    600: {
//                        items: 4,
//                    },
//                    800: {
//                        items: 6,
//                    }
//                }
            })
        }
    }
    l_blog_slider();
    
    /*----------------------------------------------------*/
    /*  Clients Slider2
    /*----------------------------------------------------*/
    function dash_screen_slider(){
        if ( $('.dash_screen_slider').length ){
            $('.dash_screen_slider').owlCarousel({
                loop:true,
                margin: 50,
                items: 3,
                nav:true,
                autoplay: true,
                smartSpeed: 1500,
                dots: false, 
                navContainerClass: 'dash_screen_slider',
                navText: ['<i class="fa fa-arrow-left" aria-hidden="true"></i>','<i class="fa fa-arrow-right" aria-hidden="true"></i>'],
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 1,
                    },
                    575: {
                        items: 2,
                    },
                    768: {
                        items: 3,
                    }
                }
            })
        }
    }
    dash_screen_slider();
    
    /*----------------------------------------------------*/
    /*  Clients Slider2
    /*----------------------------------------------------*/
    function team_slider(){
        if ( $('.team_slider, .team_slider_two').length ){
            $('.team_slider, .team_slider_two').owlCarousel({
                loop:true,
                margin: 30,
                items: 4,
                nav:false,
                autoplay: true,
                smartSpeed: 1500,
                dots: false, 
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 1,
                    },
                    480: {
                        items: 2,
                    },
                    700: {
                        items: 3,
                    },
                    1200: {
                        items: 4,
                    }
                }
            })
        }
    }
    team_slider();
    
    /*----------------------------------------------------*/
    /*  Clients Slider
    /*----------------------------------------------------*/
    function clients_logo(){
        if ( $('.clients_logo_slider').length ){
            $('.clients_logo_slider').owlCarousel({
                loop:true,
                margin: 30,
                items: 5,
                nav:false,
                autoplay: true,
                smartSpeed: 1500,
                dots: false, 
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 1,
                    },
                    480: {
                        items: 2,
                    },
                    600: {
                        items: 4,
                    },
                    992: {
                        items: 5,
                    }
                }
            })
        }
    }
    clients_logo();
    
    /*----------------------------------------------------*/
    /*  Clients Slider
    /*----------------------------------------------------*/
    function dev_logo(){
        if ( $('.dev_seven_logo_slider').length ){
            $('.dev_seven_logo_slider').owlCarousel({
                loop:true,
                margin: 30,
                items: 4,
                nav:false,
                autoplay: true,
                smartSpeed: 1500,
                dots: false, 
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 1,
                    },
                    480: {
                        items: 2,
                    },
                    767: {
                        items: 3,
                    },
                    992: {
                        items: 4,
                    }
                }
            })
        }
    }
    dev_logo();
	
	 /*---------testimonial_slider_three js-----------*/
    function testimonial_three(){
        if ( $('.testimonial_slider_three, .testimonials_s_slider').length ){
            $('.testimonial_slider_three, .testimonials_s_slider').owlCarousel({
                loop:true,
                margin: 30,
                items: 1,
                nav:true,
                autoplay: false,
                smartSpeed: 1500,
                dots: true, 
//				navClass: ['btn btn-default owl-carousel-left disabled','btn btn-default owl-carousel-right'],
                navText: ['<i class="icofont icofont-thin-left"></i>','<i class="icofont icofont-thin-right"></i>'],
                responsiveClass: true,
//                responsive: {
//                    0: {
//                        items: 1,
//                    },
//                    480: {
//                        items: 2,
//                    },
//                    600: {
//                        items: 4,
//                    },
//                    800: {
//                        items: 6,
//                    }
//                }
            })
        }
    }
    testimonial_three();
	 /*---------testimonial_slider_three js-----------*/
    function single_slider(){
        if ( $('.related_post_slider').length ){
            $('.related_post_slider').owlCarousel({
                loop:false,
                margin: 30,
				stagePadding: 100,
                items: 2,
                nav:true,
                autoplay: false,
                smartSpeed: 1500,
                dots: false, 
//				navClass: ['btn btn-default owl-carousel-left disabled','btn btn-default owl-carousel-right'],
                navText: ['<i class="lnr lnr-arrow-left"></i>','<i class="lnr lnr-arrow-right"></i>'],
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 1,
                    },
                    320: {
                        items: 1,
						stagePadding: 0,
                    },
                    400: {
                        items: 2,
						stagePadding: 0,
                    },
                    575: {
                        items: 2,
                    }
                }
            })
        }
    }
    single_slider();
	
	 /*---------testimonial_slider_three js-----------*/
    function say_slider(){
        if ( $('.ten_say_slider').length ){
            $('.ten_say_slider').owlCarousel({
                loop:true,
                margin: 30,
                items: 2,
                nav:false,
                autoplay: false,
                smartSpeed: 1500,
                dots: true, 
                navText: ['<i class="icofont icofont-thin-left"></i>','<i class="icofont icofont-thin-right"></i>'],
                responsiveClass: true,
//                responsive: {
//                    0: {
//                        items: 1,
//                    },
//                    480: {
//                        items: 2,
//                    },
//                    600: {
//                        items: 4,
//                    },
//                    800: {
//                        items: 6,
//                    }
//                }
            })
        }
    }
    say_slider();
	
	 /*---------testimonial_slider_three js-----------*/
    function say_slider(){
        if ( $('.g_p_slider').length ){
            $('.g_p_slider').owlCarousel({
                loop:true,
                margin: 50,
                items: 3,
                nav:false,
                autoplay: false,
                smartSpeed: 1500,
                dots: true, 
                responsiveClass: true,
				center: true,
                responsive: {
                    0: {
                        items: 1,
                    },
                    480: {
                        items: 2,
                    },
                    600: {
                        items: 2,
						center: false,
                    },
                    767: {
                        items: 3,
                    }
                }
            })
        }
    }
    say_slider();
	
	 /*---------testimonial_slider_three js-----------*/
    function ten_team_slider(){
        if ( $('.ten_team_slider').length ){
            $('.ten_team_slider').owlCarousel({
                loop:true,
                margin: 30,
                items: 3,
                nav:false,
                autoplay: false,
                smartSpeed: 1500,
                dots: true, 
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 1,
                    },
                    530: {
                        items: 2,
                    },
                    600: {
                        items: 2,
                    },
                    992: {
                        items: 3,
                    }
                }
            })
        }
    }
    ten_team_slider();
	
	 /*---------testimonial_slider_three js-----------*/
    function g_product_slider(){
        if ( $('.g_p_p_slider').length ){
            $('.g_p_p_slider').owlCarousel({
                loop:true,
                margin: 30,
                items: 4,
                nav:true,
                autoplay: false,
                smartSpeed: 1500,
                dots: false, 
                navText: ['<i class="icofont icofont-thin-left"></i>','<i class="icofont icofont-thin-right"></i>'],
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 1,
                    },
                    480: {
                        items: 2,
                    },
                    700: {
                        items: 3,
                    },
                    992: {
                        items: 4,
                    }
                }
            })
        }
    }
    g_product_slider();
	
	function clients_slider(){
        if ( $('.sc-clients-slider').length ){
            $('.sc-clients-slider').owlCarousel({
                loop:true,
                margin: 30,
                items: 6,
                nav:false,
                autoplay: false,
                smartSpeed: 1500,
                dots: false, 
                responsiveClass: true,
                responsive: {
                    0: {
                        items: 2,
                    },
                    400: {
                        items: 3,
                    },
                    575: {
                        items: 4,
                    },
                    850: {
                        items: 6,
                    }
                }
            })
        }
    }
    clients_slider();
    
    $('.counter').counterUp({
        delay: 10,
        time: 1000
    });
    
	$(document).ready(function() {
		$('.select_dropdown').niceSelect();
	});
	
    
	// RoundCircle Progress
    function roundCircleProgress () {
      var rounderContainer = $('.piechart');
      if (rounderContainer.length) {
        rounderContainer.each(function () {
          var Self = $(this);
          var value = Self.data('value');
          var size = Self.parent().width();
          var color = Self.data('border-color');

          Self.find('span').each(function () {
            var expertCount = $(this);
            expertCount.appear(function () {
              expertCount.countTo({
                from: 1,
                to: value*100,
                speed: 2000
              });
            });

          });
          Self.appear(function () {         
            Self.circleProgress({
              value: value,
              size: 110,
              thickness: 4,
              emptyFill: '#e0e0e0',
              animation: {
                duration: 2000
              },
              fill: {
                color: color
              }
            });
          });
        });
      };
    }
    roundCircleProgress ();
	
	// video Popup
    if ($("#video-popup").length > 0){
        $("#video-popup").magnificPopup({
            type: "iframe"
        });
    }
    
   // Can also be used with $(document).ready()
      $('.flexslider').flexslider({
        animation: "slide",
        itemWidth: 260,
        itemMargin: 30,
        maxItems: 5,
        controlNav: false,
        animationLoop: false,
        slideshow: false,
        controlsContainer: $(".flexslider"),
//        customDirectionNav: $(".custom-navigation a"),
      });

    // mixItUp slider active js
    $(function(){
        $('.gallery_item .slides').mixItUp();
    });
	
    function quesmasonry(){
        if ( $('.asked_ques_inner, .blog_ms_inner').length ){
            $('.asked_ques_inner, .blog_ms_inner').imagesLoaded( function() {
              // images have loaded
                      // Activate isotope in container
                $(".asked_ques_inner, .blog_ms_inner").isotope({
                    layoutMode: 'masonry',
                    masonry: {
                        columnWidth: 1
                    }
                });
            })
        }
    }
    quesmasonry();
	
	
	/*----------------------------------------------------*/
    /*  Isotope Fillter js
    /*----------------------------------------------------*/
    function portfolio_isotope(){
        if ( $('.portfolio_filter li').length ){
            // Add isotope click function
            $(".portfolio_filter li").on('click',function(){
                $(".portfolio_filter li").removeClass("active");
                $(this).addClass("active");

                var selector = $(this).attr("data-filter");
                $(".screen_nine_slider .owl-item").isotope({
                    filter: selector,
                    animationOptions: {
                        duration: 450,
                        easing: "linear",
                        queue: false,
                    }
                });
                return false;
            });
        }
    }
    
    portfolio_isotope();
	
	
	$('.flip_ten_slider').flipster({
		touch: true,
		scrollwheel: false,
		spacing: -0.4,
	});
	
	
	/*----------------------------------------------------*/
    /*  Home Slider Bg
    /*----------------------------------------------------*/
    
    var slider_text = $('.gd_man_text');
    function text_slider(){
        if ( slider_text.length ){
            slider_text.owlCarousel({
                loop: false,
                margin: 0,
                dots: false,
                autoplay: true,
                mouseDrag: false,
                touchDrag: false,
                
                navSpeed: 500,
                items: 1,
                smartSpeed: 2500,
            })
        }
    }
    text_slider();
    
    /*----------------------------------------------------*/
    /*  Home Slider Text
    /*----------------------------------------------------*/
    var slider_bg = $('.gd_man_slider');
    function home_slider(){
        if ( slider_bg.length ){
            slider_bg.owlCarousel({
                loop: false,
                margin: 0,
                dots: false,
                autoplay: true,
                mouseDrag: false,
                touchDrag: false,
				animateOut: 'slideOutUp',
                animateIn: 'fadeInUp',
                items: 1,
                smartSpeed: 2500,
            })
        }
    }
    home_slider();
    
    /*----------------------------------------------------*/
    /*  Home Slider Next Prev
    /*----------------------------------------------------*/
    $('.home_screen_nav .testi_next').on('click', function () {
        slider_text.trigger('next.owl.carousel');
        slider_bg.trigger('next.owl.carousel');
    });
    $('.home_screen_nav .testi_prev').on('click', function () {
        slider_text.trigger('prev.owl.carousel');
        slider_bg.trigger('prev.owl.carousel');
    });
    
    /*----------------------------------------------------*/
    /*  Home Slider Click
    /*----------------------------------------------------*/
    slider_text.on('translate.owl.carousel', function (property) {
        $('.slider_bg_inner .owl-dots:eq(' + property.page.index + ')').click();
    });
    slider_bg.on('translate.owl.carousel', function (property) {
        $('.text_slider_inner .owl-dots:eq(' + property.page.index + ')').click();
    });
	
	
	
    
    /*----------------------------------------------------*/
    /*  Google map js
    /*----------------------------------------------------*/
    
    if ( $('#mapBox').length ){
    var $lat = $('#mapBox').data('lat');
    var $lon = $('#mapBox').data('lon');
    var $zoom = $('#mapBox').data('zoom');
    var $marker = $('#mapBox').data('marker');
    var $info = $('#mapBox').data('info');
    var $markerLat = $('#mapBox').data('mlat');
    var $markerLon = $('#mapBox').data('mlon');
    var map = new GMaps({
        el: '#mapBox',
        lat: $lat,
        lng: $lon,
        scrollwheel: false,
        scaleControl: true,
        streetViewControl: false,
        panControl: true,
        disableDoubleClickZoom: true,
        mapTypeControl: false,
        zoom: $zoom,
            styles: [
				{
					"featureType": "administrative.country",
					"elementType": "geometry",
					"stylers": [
						{
							"visibility": "simplified"
						},
						{
							"hue": "#ff0000"
						}
					]
				}
			]
        });

        map.addMarker({
            lat: $markerLat,
            lng: $markerLon,
            icon: $marker,    
            infoWindow: {
              content: $info
            }
        })
    }
	
	
	// preloader js
    $(window).on('load', function() { // makes sure the whole site is loaded
		$('#preloader_spinner').fadeOut(); // will first fade out the loading animation
		$('#preloader').delay(150).fadeOut('slow'); // will fade out the white DIV that covers the website.
		$('body').delay(150).css({'overflow':'visible'}) 
    })
    
    
    
    
})(jQuery)