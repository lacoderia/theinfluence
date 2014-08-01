$(document).on("ready", onReady);

function onReady() {

    fixFooter();
    $('#myTab a').click(function (e) {
        e.preventDefault()
        $(this).tab('show')
    })

    $('.btn-group button.btn').on('click', changeComboInfo);
}

function changeComboInfo(event){

    var selectedCombo = $(event.target).attr('data-combo');
    var pc = selectedCombo.split('-')[0];

    $('.buttons-combos-' + pc + ' button.selected').removeClass('selected');
    $(event.target).addClass('selected');

    $('.pc-' + pc).hide();
    console.log(selectedCombo)
    $('.product-info-' + selectedCombo).show();
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
