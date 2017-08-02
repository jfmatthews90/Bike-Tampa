Rails.application.routes.draw do
  resources :products

  resources :orders, only: [:index, :show, :create, :destroy]
  
  get 'static_pages/about'

  get 'static_pages/contact'

  get 'static_pages/index'

  get 'products/index'

  # get 'products/:id', to: 'products#show' // example standard route per task 5.1

	root 'static_pages#landing_page'
	# root 'products#index' // example of new route for 5.1
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
