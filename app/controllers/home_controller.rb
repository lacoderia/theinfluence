class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to '/users/' + current_user.id.to_s
    end
  end

  def agencias
  end

  def anunciantes
  end
  
  def socios
  end
  
  def nosotros
  end

  def social
  end

  def media
  end

  def targeted_video
  end

  def contact
  end

end
