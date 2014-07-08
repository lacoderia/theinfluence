$(document).on("ready", onReady);

function onReady() {

    fixFooter();
    $("a[rel^='prettyPhoto']").prettyPhoto({
        social_tools: '<div></div>'
    });

    $('.addon-description').popover({
        trigger: 'hover'
    });

    if($('#solucion').length){
        $('#carousel-example-generic-dashboard').carousel({
            interval: 5000,
            pause:'hover',
            wrap:true
        });
    }

    var items = $('a[rel=prettyPhoto]');

    if(items){
        $('#gallery-container img').attr('src',items[0].href);
    }
    items.bind('mouseover', function(){
        $('#gallery-container img').attr('src',this.href);
    });
}

function fixFooter(){

    var footerHeight = 0,
        footerTop = 0,
        navigationHeight = 0,
        $footer = $('#footer'),
        $navigation = $('#navigation');

    footerHeight = $footer.height();
    navigationHeight = $navigation.height();
    footerTop = ($(window).scrollTop()+$(document).height()-footerHeight-navigationHeight)+"px";

    if (($(document.body).height()+footerHeight) < $(window).height()) {
        $footer.css({
            position: "relative"
        }).animate({
                top: footerTop
            })
    } else {
        $footer.css({
            position: "static"
        })
    }


}
