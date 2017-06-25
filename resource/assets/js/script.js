$(function () {
    function o() {
        $(window).scroll(function () {
            $(".l-content__inner").each(function () {
                var o = $(this)
                        .offset()
                        .top,
                    n = $(window).scrollTop(),
                    i = $(window).height();
                n > o - i + 200 && $(this).addClass("scrollin")
            });
            var o = $(window).scrollTop();
            o > 600
                ? $(".l-header__info--primary").addClass("is-show")
                : $(".l-header__info--primary").removeClass("is-show")
        })
    }
    $("html,body").animate({
        scrollTop: 0
    }, "1");
    $(window).width();
    o();
    var n = !1;
    $(window).resize(function () {
        n !== !1 && clearTimeout(n),
        n = setTimeout(function () {
            $(window).width();
            o()
        }, 200)
    });
    var i = $(".c-pagetop");
    i.click(function () {
        return $("body, html").animate({
            scrollTop: 0
        }, 800),
        !1
    });
    var e = $(".c-humberger"),
        a = $(".l-container"),
        r = function () {
            return $(".l-container,.p-menu,.type-1").addClass("is-animate"),
            $(".c-overlay")[0]
                ? (
                    $(".c-overlay").remove(),
                    $(".l-container,.p-menu,.type-1").removeClass("is-animate"),
                    $(".l-header__info--primary").removeClass("is-show")
                )
                : a.append('<div class="l-container__overlay c-overlay"></div>'),
            !1
        };
    e.on("touchstart click", r),
    a.on("touchstart click", ".c-overlay", r)
});