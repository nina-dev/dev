$(function(){
  $('.c-form').each(function() {
      //focusしたらプレースフォルダー文言を表示・非表示
      $(this).find('.c-form__text').focus(function(){
          $(this).parent().parent().find('label').find('.c-form__sampletext').addClass('c-form__sampletext--show');
      })
      .blur(function(){
          $(this).parent().parent().find('label').find('.c-form__sampletext').removeClass('c-form__sampletext--show');
      });

      //textボックスの値が空の場合、エラー文言を表示・非表示
      $(this).find('.c-form__text').blur(function(){
          if($(this).val() == ''){
              $(this).next('.c-form__attention').addClass('c-form__attention--show');
          }else{
              $(this).next('.c-form__attention').removeClass('c-form__attention--show');
          }
      })
  });
})
