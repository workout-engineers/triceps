$(function(){
    $(".tweet-edit-destroy").css("display", "none");

    $(".fa-bars").click(function(){
      $(this).siblings(".tweet-edit-destroy").toggle();
    });
});