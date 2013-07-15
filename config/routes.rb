CIic2513::Application.routes.draw do
  	
  resources :cards


  	get "log_out" => "sessions#destroy", :as => "log_out"
  	get "log_in" => "sessions#new", :as => "log_in"
  	get "sign_up" => "users#new", :as => "sign_up"

  	resources :sessions
  	resources :users

  	get "home" => "home#index", :as => "home"
  	root :to => "home#index"




  	#para llamar a las rutas en el servidor: /rails/routes
  	mount_sextant if Rails.env.development?
	match '*not_found' => 'errors#handle404'

end
