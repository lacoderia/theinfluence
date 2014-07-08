
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

function cotizar_addons(user_id, addon_id, product_id){
  var data = {user_id: user_id, addon_id: addon_id, quantity: $("#addon_"+addon_id).val(), product_id: product_id};

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
    }
  });

}
