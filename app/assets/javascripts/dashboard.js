$(document).on("ready", onReady);

function onReady() {

    fixFooter();

    if($('#product-gallery').length){
        $('#product-gallery').slider({
            auto: false,
            assetTypesAllowed: ['Imagen', 'Video']
        });

        $('.addon-description').popover({
            trigger: 'hover'
        });
    }

    if($('#solucion').length){
        $('#carousel-example-generic-dashboard').carousel({
            interval: 5000,
            pause:'hover',
            wrap:true
        });
    }
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
