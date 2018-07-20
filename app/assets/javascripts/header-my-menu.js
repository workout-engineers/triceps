$(function(){
    $(".header-my-menu").css("display", "none");

    $(".header-user-menu").hover(function() {
        $(this).children('.header-my-menu').fadeIn(50);
    }, function() {
        $(this).children('.header-my-menu').fadeOut(50);
    });
});

$(function(){
    $(".header-my-menu-").css("display", "none");

    $(".header-user-menu-sb").hover(function() {
        $(this).children('.header-my-menu').fadeIn(50);
    }, function() {
        $(this).children('.header-my-menu').fadeOut(50);
    });
});