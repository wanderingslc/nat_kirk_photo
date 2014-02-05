NatKirkPhoto::Application.routes.draw do
  devise_for :users
  resources :static_pages
  resources :gallery_pages
  resources :gallery_1
  root 'static_pages#index'

  
 
  get 'bio', to: 'static_pages#bio'
end
