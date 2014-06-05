Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'display#index'
  get "nosotros" => "home#nosotros"
  get "agencias" => "home#agencias"
  get "anunciantes" => "home#anunciantes"
  get "socios" => "home#socios"
  get "social" => "home#social"
  get "targeted_video" => "home#targeted_video"
  get "media" => "home#media"
  get "contacto" => "home#contacto"

end
