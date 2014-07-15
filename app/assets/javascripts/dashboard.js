$(document).on("ready", onReady);

function onReady() {

    fixFooter();
    if($("a[rel^='prettyPhoto']")){
        $("a[rel^='prettyPhoto']").prettyPhoto({
            social_tools: '<div></div>'
        });
    }

    $('.addon-description').popover({
        trigger: 'hover'
    });

    if($('#solucion').length){
        $('#carousel-example-generic-dashboard').carousel({
            interval: 5000,
            pause:'hover',
            wrap:true,
            height: 300
        });
    }

    $('.combo').bind('mouseover', function(){
        $('.combo').removeClass('combo-selected');

        var elementClass = ($(this).attr('class').split(' ')[1]);
        $('.'+elementClass).addClass('combo-selected');
    });

    $('.combo').bind('mouseout', function(){
        $('.combo').removeClass('combo-selected');
    })
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
