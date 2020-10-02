$(document).ready(function() {
    swiperInit();
    aboutHistory();
    linkAbout();
    showBackToTop();
    fancyboxModal();
    // toggleApplyForm();
    setTimeout(() => {
        $('#l_0').trigger("click")
    }, 500);
});
$(window).resize(function() {
        if ($(window).width() <= 1024) {
            $('.language').appendTo('.header-container #div-mobile');
            $('.search').appendTo('.header-container #div-mobile')
        } else {
            $('.language').appendTo('.nav-item #language-desktop');
            $('.search').appendTo('.nav-item #search-desktop');
        }
    })
    //Toggle menu mobile
const toggleMenuMobile = () => {
    $('.header-container__toggle-menu').on('click', function() {
        $(this).toggleClass('active');
        $(this).siblings('.header-container__main-nav').toggleClass('active');
        $('body').toggleClass('disabled');
    });
};

//Move nav-item
function moveNav() {
    if ($(window).width() <= 1024.98) {
        $('.language').appendTo('.header-container #div-mobile');
        $('.search').appendTo('.header-container #div-mobile')
    } else {
        $('.language').appendTo('.nav-item #language-desktop');
        $('.search').appendTo('.nav-item #search-desktop');
    }
}
//Move select fillter product
function moveSelect() {
    $('.fillter').appendTo('ul.nav #div');
    $('.fillter').each(function() {
        if (!$(this).text().match(/^\s*$/)) {
            $(this).insertBefore($(this).prev('.nav-item'));
        }
    });
    $('.wrap').appendTo('.content__sidebar #range');
}

//Header when scroll
const activeHeaderWhenScroll = () => {
    const heightHeader = document.querySelector('header').offsetHeight;
    window.addEventListener('scroll', function() {
        if (window.pageYOffset >= heightHeader) {
            document.querySelector('header').classList.add('header-croll-down');
        } else {
            document.querySelector('header').classList.remove('header-croll-down');
        }
    });
};

function linkAbout() {
    $(".link-to-about-section a").on("click", function(event) {
        if (this.hash !== "") {
            let offset = $("header").outerHeight() + 50;
            var hash = this.hash;
            $(".link-to-about-section a").removeClass('active')
            $(this).addClass('active')

            $("html, body").animate({
                    scrollTop: $(hash).offset().top - offset,
                },
                800,
                function() {
                    window.location.hash = hash;
                }
            );
        } // End if
    });
}

function fancyboxModal() {
    $(".button-apply a").click(function(e) {
        e.preventDefault();
        $.fancybox.open({
            src: '#form-apply',
            type: 'inline',
            opts: {
                afterShow: function(instance, current) {
                    $(".fancybox-is-open").appendTo("main");
                }
            }
        });
        return false;
    });
}

function toggleApplyForm() {
    $(".apply-form .button-apply a").on("click", function() {
        $(".form-apply").slideToggle();
    });
}

function showBackToTop() {
    $(window).scroll(function() {
        if ($(this).scrollTop() > 0) {
            $('#back-to-top').addClass('active');
        } else {
            $('#back-to-top').removeClass('active');
        }
    });

    $("#back-to-top").on("click", function(e) {
        e.preventDefault();
        $("html,body").animate({
            scrollTop: 0
        })
    })
}



function changeIframe() {
    $(document).on('click', '.pnholding-maps ul li', function() {
        var data = $(this).attr('data-iframe')
        $('#custom-maps iframe').attr('src', data)
    })

}
//Check if windows size large then 1024 then these function will be execute
if ($(window).width() > 1024) {
    const $menu = $(".searchbox");
    $(document).mouseup(e => {
        if (!$menu.is(e.target) && // if the target of the click isn't the container...
            $menu.has(e.target).length === 0
        ) {
            // ... nor a descendant of the container
            $menu.removeClass("active");
        }
    });
}
// Remove when click outside the circle
function tabActive() {
    $(".tab-navigation li a").on("click", function() {
        $(this)
            .parents(".tab-navigation")
            .find("li")
            .removeClass("active");
        $(this)
            .parents("li")
            .addClass("active");

        var display = $(this).attr("data-type");
        $(".tab-item").removeClass("active");
        $("#" + display).addClass("active");
    });
}

function swiperInit() {
    var homerSwiper = new Swiper(".home-banner .swiper-container", {
        // Optional parameters
        speed: 1205,
        slidesPerView: 1,
        autoplay: {
            delay: 3000
        },
        // pagination: {
        //     el: ".home-banner-pagination",
        //     type: "bullets",
        //     clickable: "true"
        // }
    });
    var especiallySwiper = new Swiper(".block_especially-us .home-slide-especially", {
        // Optional parameters
        speed: 1000,

        autoplay: {
            delay: 2000
        },
        // navigation: {
        //     nextEl: '.home_s-4 .nav-arrow-next',
        //     prevEl: '.home_s-4 .nav-arrow-prev',
        // },
        breakpointsInverse: true,
        breakpoints: {
            320: {
                slidesPerView: 2,

            },
            400: {
                slidesPerView: 2,

            },
            480: {
                slidesPerView: 2,

            },
            768: {
                slidesPerView: 3,

            },
            1025: {
                slidesPerView: 4,

            },
            1440: {
                slidesPerView: 4,

            },
        },

    });
    var brandSwiper = new Swiper(".block_project .slide-project-home", {
        // Optional parameters
        speed: 1000,
        autoplay: {
            delay: 2000
        },
        navigation: {
            nextEl: '.block_project .nav-arrow-next',
            prevEl: '.block_project .nav-arrow-prev',
        },
        breakpointsInverse: true,
        spaceBetween: 30,
        breakpoints: {
            320: {
                slidesPerView: 1,

            },
            400: {
                slidesPerView: 1,

            },
            480: {
                slidesPerView: 2,

            },
            768: {
                slidesPerView: 2,

            },
            1025: {
                slidesPerView: 3,

            },
            1440: {
                slidesPerView: 3,

            },
        },
    });
    var brandSwiper = new Swiper(".block_develope-slide .swiper-container", {
        // Optional parameters
        speed: 1000,

        autoplay: {
            delay: 2000,
        },
        navigation: {
            nextEl: ".block_develope-slide .nav-arrow-next",
            prevEl: ".block_develope-slide .nav-arrow-prev",
        },
        breakpointsInverse: true,
        spaceBetween: 20,
        breakpoints: {
            320: {
                slidesPerView: 1,
            },
            480: {
                slidesPerView: 1,
            },
            768: {
                slidesPerView: 2,
            },
            1025: {
                slidesPerView: 2,
            },
            1200: {
                slidesPerView: 2,
            },
            1440: {
                slidesPerView: 2,
            },
            1600: {
                slidesPerView: 2,
            },
        },
    });
}

function aboutHistory() {
    var historyThumbs = new Swiper(".about3_history .gallery-thumbs", {
        spaceBetween: 10,
        slidesPerView: 4,
        observeParents: true,
        observeSlideChildren: true,
    });
    var historyTop = new Swiper(".about3_history .gallery-top", {
        spaceBetween: 10,
        navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
        },
        observeParents: true,
        observeSlideChildren: true,
        thumbs: {
            swiper: historyThumbs,
        },
    });
}

window.onscroll = function() { scrollFunction() };

function scrollFunction() {
    if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
        document.querySelector(".header_top").style.top = "-300px";
        document.querySelector(".header_bot").style.top = "0";
    } else {
        document.querySelector(".header_top").style.top = "0";
        document.querySelector(".header_bot").style.top = "-300px";
    }
}

$('.button_menu').click(function() {
    $(this).toggleClass("click");
    $('.sidebar').toggleClass("show");
});

// Modal
$('.readmore').click(function() {
    $('.modal').toggleClass("show");
    $('.overlay').toggleClass("show");
});
$('.overlay').click(function() {
    $(this).toggleClass("click");
    $('.modal').toggleClass("show");
    $('.overlay').toggleClass("show");
});
$('.close-btn').click(function() {
    $('.modal').toggleClass("show");
    $('.overlay').toggleClass("show");
});