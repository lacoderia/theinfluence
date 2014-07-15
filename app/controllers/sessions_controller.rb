class SessionsController < Devise::SessionsController
 
  def after_sign_in_path_for(user)
     if not user.active?
       sign_out user
       flash[:alert] = "Tu cuenta ha sido desactivada. No te preocupes, esto puede ser por falta de pago o por alguna otra razón. Contacta a tu representante para volver a activarla."
       flash[:notice] = nil
       return :root
     else
       return :dashboard
     end
  end

end
