Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :scripts, only: [:index]
  
  resources :plots, only: [:index]

end
