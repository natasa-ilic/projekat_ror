Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

	root 'home#index'
	
	get '/about' => 'home#about'
	get '/help' => 'home#help'
	get '/login' => 'home#login'
	delete '/logout' => 'sessions#destroy'

	
	resources :products
	resources :sellers
	resources :orders, only: [:index, :new, :create, :show]
	resources :users, only: [:new, :create]
	resources :sessions, only: [:new, :create, :destroy]

	# resources :orders, except: [:edit, :update, :destroy]

end
