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

    $('.btn-group button.btn').on('click', changeComboInfo);

    resizeTable();

    $(window).resize(function(){
        resizeTable();
    });

}

function resizeTable(){
    if($(window).width() <= 970){
        var comboId = undefined;


        $.each($('#product-combos table th.combo'), function(index, item){
            if(index > 0){
                $(item).hide();
            }else{
                comboId = $(item).attr('data-id');
            }
        });

        $.each($('#product-combos table td.combo'), function(index, item){

            var itemId = $(item).attr('data-id');
            if(typeof itemId != 'undefined'){
                if(itemId != comboId){
                    $(item).hide();
                }
            }
        });


    }else{
        $('#product-combos table th.combo').show();
        $('#product-combos table td.combo').show();
    }
}

function changeComboInfo(event){

    var selectedCombo = $(event.target).attr('data-combo');

    $('.buttons-combos button.selected').removeClass('selected');
    $(event.target).addClass('selected');

    $('.combo').hide();
    $('.combo-' + selectedCombo).show();
}

function recalculateTotals(base_price, id){
  var subtotal = base_price;
  $.each($(".purchased_"+id), function(key, item) {
    subtotal += (parseInt(item.value)*parseFloat(item.dataset.price));
  });
  $("#total_addons_"+ id).html("$" + subtotal.toFixed(2));
}

function actualizarPlan(combo_id){	
	$("#modal_combo_"+combo_id).modal('show');
}


function cotizarAddons(user_id, product_id, combo_id, discount){
  var addons = [];

  $.each($(".purchased_"+combo_id), function(key, item) {
    addons.push( {addon_id: item.dataset.addon, quantity: item.value} );
  });

  var data = {user_id: user_id, product_id: product_id, addons: addons, total: $("#total_addons_"+combo_id).html(), discount: discount }

  $('html').loader('show');
  $.ajax({
    url: "/send_addons_cotiza_email",
    data: data,
    success: function(){
      $('html').loader('hide');
      $('#mensaje_enviado_modal').modal('show');
			$("#modal_combo_"+combo_id).modal('hide');
      $("#combo-" + combo_id).html("");
      $("#combo-" + combo_id).append("<strong>En proceso</strong>");
    },error: function(){
      $('html').loader('hide');
      alert("No se pudo enviar el correo, por favor intenta más tarde.");
    }, complete: function(){
			$("#current_combo").modal('hide');
		}
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
