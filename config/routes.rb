CIic2513::Application.routes.draw do
  	
  resources :trips
    get "home" => "home#index", :as => "home"
  	root :to => "home#index"
  	match "zohoverify/verifyforzoho.html" => "home#zohoverify", :as => "zohoverify"




  	#para llamar a las rutas en el servidor: /rails/routes
end
