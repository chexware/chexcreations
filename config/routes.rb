Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]
  root to: 'home#index'
  get 'art', to: 'project#load_art'
  get 'software', to: 'project#load_software'
  get 'support', to: 'suppport#support'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
