$(function(){
    $('.c-form').each(function() {
        $(this).find('.c-form--text').focus(function(){
            $(this).prev('label').find('.c-form--sampletext').addClass('c-form--sampletext--show');
        })
        .blur(function(){
            $(this).prev('label').find('.c-form--sampletext').removeClass('c-form--sampletext--show');
        });
    });
});
