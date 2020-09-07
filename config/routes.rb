Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]
  root to: 'home#index'
  get 'blog', to: 'blog#load'
  get '404', to: 'exceptions#not_found'
  get '422', to: 'exceptions#unacceptable'
  get '500', to: 'exceptions#internal_error'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
