Rails.application.routes.draw do
	root to: 'earthquakes#index'
	get 'earthquakes/quakes', to: 'earthquakes#quakes', as: :quakes
  resources :earthquakes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
