class SessionsController < Devise::SessionsController
 
  def after_sign_in_path_for(user)
     if not user.active?
       sign_out user
       flash[:alert] = "Cuenta inactiva."
       flash[:notice] = nil
       return :root
     else
       return :dashboard
     end
  end

end
