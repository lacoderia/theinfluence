function enviar_compra(user_id, combo_id, addon_combo_id){
  if (addon_combo_id != null){
    var data = {user_id: user_id, combo_id: combo_id, addon_combo_id: addon_combo_id}
  }else{
    var data = {user_id: user_id, combo_id: combo_id}
  }
  //loader_on
  $.ajax({
    url: "/send_compra_email",
    data: data,
    success: function(){
      //loader off
      $('#mensaje_enviado_modal').modal('show');
    },error: function(){
      alert("No se pudo enviar el correo, por favor intenta más tarde.");
    }
  });
}
