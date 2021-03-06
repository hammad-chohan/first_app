Rails.application.routes.draw do

  root 'welcome#home'
  get 'about', to: 'welcome#about'

  resources :articles

  get 'signup', to:'users#new'
  post 'users', to:'users#create'

  resources :users, except: [:new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
