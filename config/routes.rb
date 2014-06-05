Theinfluence::Application.routes.draw do
  root :to => "display#index"
  get "nosotros" => "display#nosotros"
  get "agencias" => "display#agencias"
  get "anunciantes" => "display#anunciantes"
  get "socios" => "display#socios"
  get "social" => "display#social"
  get "targeted_video" => "display#targeted_video"
  get "media" => "display#media"
  get "contacto" => "display#contacto"



  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

end
