NatKirkPhoto::Application.routes.draw do

  resources "contact_forms", only: [:new, :create]
  resources :portraits

  resources :perspectives

  resources :promises

  resources :mementos

  resources :social_concerns

  resources :transcendences

  resources :pinholes

  resources :gallery_2s

  devise_for :users
  resources :static_pages
  resources :gallery_pages
  resources :gallery_1
  resources :gallery_2s
  root 'static_pages#index'

  
 
  get 'bio', to: 'static_pages#bio'
end
