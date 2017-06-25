function scrollAnchor() {
    var interval = $('.styleguideHeader').height() + 8;

    fixedTopSpace();

    // top space
    function fixedTopSpace() {
        $('.styleguideContainer').css({
            marginTop: interval
        });
    }

    // scroll to anchor
    $('.styleguideLocalNav a').on('click', function() {
        var pos = $($(this).attr('href')).offset().top - interval;
        $('html,body').stop().animate({scrollTop: pos});
        return false;
    });

    // resize window
    $(window).resize(function() {
        interval = $('.styleguideHeader').height() + 8;
        fixedTopSpace();
    });
}

$(function() {
    scrollAnchor();
});
