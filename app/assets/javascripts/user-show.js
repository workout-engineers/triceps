$(function(){
  var user_info_scr = $(".user-info-scr");
  user_info_scr.hide();

  $(window).scroll(function(){
    var present_place = $(this).scrollTop();
    var chage_place = 170;

    if(present_place > chage_place){
      user_info_scr.fadeIn(80);
    } else {
      user_info_scr.fadeOut(80);
    }

  });
});