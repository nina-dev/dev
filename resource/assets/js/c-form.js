$(function(){
  $('.c-form').each(function() {
      //focusしたらプレースフォルダー文言を表示・非表示
      $(this).find('.c-form--text').focus(function(){
          $(this).parent().parent().find('label').find('.c-form--sampletext').addClass('c-form--sampletext--show');
      })
      .blur(function(){
          $(this).parent().parent().find('label').find('.c-form--sampletext').removeClass('c-form--sampletext--show');
      });

      //textボックスの値が空の場合、エラー文言を表示・非表示
      $(this).find('.c-form--text').blur(function(){
          if($(this).val() == ''){
              $(this).next('.c-form--attention').addClass('c-form--attention--show');
          }else{
              $(this).next('.c-form--attention').removeClass('c-form--attention--show');
          }
      })
  });
})
