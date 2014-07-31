function recalculateTotals(base_price, id){
  var subtotal = base_price;
  $.each($(".purchased_"+id), function(key, item) {
    subtotal += (parseInt(item.value)*parseFloat(item.dataset.price));
  });
  $("#total_addons_"+ id).html("$" + subtotal.toFixed(2));
}

function actualizar_plan(){	
	$("#current_combo").modal('show');
}

function contratar_plan(combo_id){
	$("#modal_combo_" + combo_id).modal('show');
}

function enviar_compra(user_id, combo_id, addon_combo_id){
  if (addon_combo_id != null){
    var data = {user_id: user_id, combo_id: combo_id, addon_combo_id: addon_combo_id};
  }else{
    var data = {user_id: user_id, combo_id: combo_id};
  }

  $('html').loader('show');
  $.ajax({
    url: "/send_compra_email",
    data: data,
    success: function(){
      $('html').loader('hide');
      $('#mensaje_enviado_modal').modal('show');
      $("#combo_" + combo_id).hide();
      $("#combo-" + combo_id).append("<strong>En proceso</strong>");
    },error: function(){
      $('html').loader('hide');
      alert("No se pudo enviar el correo, por favor intenta más tarde.");
    }
  });
}

function enviar_cotizacion(user_id, product_id){
  var data = {user_id: user_id, product_id: product_id};
  
  $('html').loader('show');
  $.ajax({
    url: "/send_cotiza_email",
    data: data,
    success: function(){
      $('html').loader('hide');
      $('#mensaje_enviado_modal').modal('show');
    },error: function(){
      $('html').loader('hide');
      alert("No se pudo enviar el correo, por favor intenta más tarde.");
    }
  });
} 

function cotizar_addons(user_id, product_id, discount){
  var addons = [];

  $.each($(".purchased"), function(key, item) {
    addons.push( {addon_id: item.dataset.addon, quantity: item.value} );
  });

  var data = {user_id: user_id, product_id: product_id, addons: addons, total: $("#total_addons").html(), discount: discount }

  $('html').loader('show');
  $.ajax({
    url: "/send_addons_cotiza_email",
    data: data,
    success: function(){
      $('html').loader('hide');
      $('#mensaje_enviado_modal').modal('show');
    },error: function(){
      $('html').loader('hide');
      alert("No se pudo enviar el correo, por favor intenta más tarde.");
    }, complete: function(){
			$("#current_combo").modal('hide');
		}
  });

}

function cotizar_plan(user_id, product_id, combo_id){
  var addons = [];

  $.each($(".purchased_"+combo_id), function(key, item) {
    addons.push( {addon_id: item.dataset.addon, quantity: item.value} );
  });

  var data = {user_id: user_id, combo_id: combo_id, product_id: product_id, addons: addons, total: $("#total_addons_"+ combo_id).html() }

  $('html').loader('show');
  $.ajax({
    url: "/send_combos_cotiza_email",
    data: data,
    success: function(){
      $('html').loader('hide');
      $('#mensaje_enviado_modal').modal('show');
    },error: function(){
      $('html').loader('hide');
      alert("No se pudo enviar el correo, por favor intenta más tarde.");
    }, complete: function(){
			$("#modal_combo_" + combo_id).modal('hide');
		}
  });

}
