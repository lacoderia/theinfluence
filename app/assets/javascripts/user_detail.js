function asignar_producto(user_id, ctp_id, product_id){
  var user = $("#usrcombo_" + product_id).val();
  var pass = $("#passcombo_" + product_id).val();

  if (user.length > 0 && pass.length > 0){
    top.location = "assign_combo?" + "user_id=" + user_id + "&product_id="+ product_id + "&combo_id=" + ctp_id + "&user_name=" + user + "&password=" + pass;
  } else {
    alert("Debes establecer un usuario y un password para poder asignar el paquete.");
  }

}
