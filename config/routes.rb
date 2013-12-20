NatKirkPhoto::Application.routes.draw do
  devise_for :users
  resources :static_pages
  resources :gallery_pages

  root 'static_pages#index'

  get 'gallery_1', to: 'gallery_pages#gallery_1', as: :gallery_1
  get 'gallery_2', to: 'gallery_pages#gallery_2'
  get 'gallery_3', to: 'gallery_pages#gallery_3'
  get 'gallery_4', to: 'gallery_pages#gallery_4'
  get 'bio', to: 'static_pages#bio'
end
