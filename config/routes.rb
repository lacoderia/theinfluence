Rails.application.routes.draw do
  root :to => "display#index"
  get "nosotros" => "home#nosotros"
  get "agencias" => "home#agencias"
  get "anunciantes" => "home#anunciantes"
  get "socios" => "home#socios"
  get "social" => "home#social"
  get "targeted_video" => "home#targeted_video"
  get "media" => "home#media"
  get "contacto" => "home#contacto"



  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

end
