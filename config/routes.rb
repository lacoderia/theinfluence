# -*- encoding : utf-8 -*-
Theinfluence::Application.routes.draw do

  resources :categories

  resources :purchases_addons

  resources :purchases_combos

  resources :addons_combos

  resources :addons

  resources :combos

  resources :assets

  resources :contracts

  resources :contacts

  resources :products

  root :to => "display#index"
  get "nosotros" => "display#nosotros"
  get "agencias" => "display#agencias"
  get "anunciantes" => "display#anunciantes"
  get "socios" => "display#socios"
  get "social" => "display#social"
  get "targeted_video" => "display#targeted_video"
  get "media" => "display#media"
  get "contacto" => "display#contacto"

  get "admin" => "admin_dashboard#index", :as => :admin
  get "dashboard" => "dashboard#index", :as => :dashboard
  get "product-detail" => "dashboard#product_detail"

  devise_for :users, :controllers => {:registrations => "registrations"}

  devise_scope :user do
	  get 'logout', :to => "devise/sessions#destroy"
  end

  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

end
