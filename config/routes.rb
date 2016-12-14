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
	
	resources :products
	resources :sellers
	resources :orders, only: [:index, :new, :create, :show]
	resources :users, only: [:new, :create]
	resource  :session, only: [:new, :create, :destroy]
	resources :reviews, only: [:create]

	# resources :orders, except: [:edit, :update, :destroy]

	namespace :admin do
		resources :products
	end

end
