

/* Landing Video Lightbox */




/*scrollspy*/
$(document).ready(function(){
    $("#bar").scrollspy();
});

/*smoothscroll*/
jQuery(document).ready(function(e){e(".scroll").click(function(t){t.preventDefault();e("html,body").animate({scrollTop:e(this.hash).offset().top},1e3)})});


/*CSS ANIMATE EFFECTS*/


$(window).scroll(function() {
    $('.processo').each(function(){
    var imagePos = $(this).offset().top;

    var topOfWindow = $(window).scrollTop();
      if (imagePos < topOfWindow+400) {
        $(this).addClass("slideUp");
      }
    });
  });

$(window).scroll(function() {
    $('.abiertos').each(function(){
    var imagePos = $(this).offset().top;

    var topOfWindow = $(window).scrollTop();
      if (imagePos < topOfWindow+400) {
        $(this).addClass("slideDown");
      }
    });
  });


