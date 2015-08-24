Rails.application.routes.draw do
  root 'static_pages#root'
  get 'landing_page', to: 'static_pages#landing_page'
  resources :users, only: [:new, :create, :edit, :update]
  resource :session, only: [:new, :create, :destroy]
  namespace :api, defaults: { format: :json } do
    get "users/current_show", to: "users#current_show"
    resources :posts, only: [:index, :create, :show]
    resources :users, only: [:index, :show, :update]
    resources :notifications, only: [:index, :create, :update]
    resources :comments, only: [:index, :create, :show]
    resources :likes, only: [:index, :create, :show, :destroy]
    resources :followings, only: [:index, :create, :show, :destroy]
    resources :images, only: [:index, :create, :show]
  end
end
