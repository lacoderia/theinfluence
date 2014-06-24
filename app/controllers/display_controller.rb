# -*- encoding : utf-8 -*-
class DisplayController < ApplicationController
  include Pundit
  authorize_resource :class => false 
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = 'http://localhost:8081/'
    headers['Access-Control-Request-Method'] = '*'
  end

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def index
    if user_signed_in?
      redirect_to :dashboard
    end
  end

  private

  def user_not_authorized
    flash[:alert] = "Acceso denegado."
    redirect_to (request.referrer || root_path)
  end
end
