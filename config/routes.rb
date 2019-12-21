Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]
  root to: 'home#index'
  get 'art', to: 'project#load_art'
  get 'software', to: 'project#load_software'
  get 'support', to: 'suppport#support'
  get 'projects/new/:mode', to: 'project#new'
  post 'projects/new', to: 'project#create'
  get  'projects/:id/edit', to: 'project#edit'
  post 'projects/:id/edit', to: 'project#update'
  post 'projects/:id/delete', to: 'project#delete'
  get 'projects/:mode/vimeo/:id', to: 'project#get_vimeo_info'
  get 'projects/:mode/:pid/vimeo/:id', to: 'project#get_vimeo_info'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
