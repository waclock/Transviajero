CIic2513::Application.routes.draw do
  	

  	get "home" => "home#index", :as => "home"
  	root :to => "home#index"




  	#para llamar a las rutas en el servidor: /rails/routes
end
