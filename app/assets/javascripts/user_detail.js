function asignar_producto(user_id, ctp_id, product_id){
  var user = $("#usrcombo_" + product_id).val();
  var pass = $("#passcombo_" + product_id).val();

  if (user.length > 0 && pass.length > 0){
    top.location = "assign_combo?" + "user_id=" + user_id + "&product_id="+ product_id + "&combo_id=" + ctp_id + "&user_name=" + user + "&password=" + pass;
  } else {
    alert("Debes establecer un usuario y un password para poder asignar el paquete.");
  }

}

function isNumeric( obj ) {
    return !jQuery.isArray( obj ) && (obj - parseFloat( obj ) + 1) >= 0;
}

function aplicar_descuento(user_id, combo_id, product_id){
	var discount = $("#discount_"+combo_id).val();
	if (isNumeric(discount)){
		var r = confirm("¿Estás seguro que quieres asignar este descuento?");
		if (r == true) {
			var data = {user_id: user_id, combo_id: combo_id, product_id: product_id, discount: discount};
			$.ajax({
				url: "/apply_discount",
				data: data,
				success: function(){
					top.location = "admin_user_detail?user_id=" + user_id;			
				},error: function(){
					alert("No se pudo establecer el descuento.");
				}
			});
		}
	} else {
		alert("Debes introducir un valor numérico.");
	}	
}
