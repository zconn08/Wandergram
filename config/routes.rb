Rails.application.routes.draw do
  root 'static_pages#root'
  resources :users, only: [:new, :create, :edit]
  resource :session, only: [:new, :create, :destroy]
  namespace :api, defaults: { format: :json } do
    get "users/current_show", to: "users#current_show"
    resources :posts, only: [:index, :create, :show, :destroy, :update]
    resources :users, only: [:index, :show]
    resources :comments, only: [:index, :create, :show, :destroy, :update]
    resources :likes, only: [:index, :create, :show, :destroy]
    resources :followings, only: [:index, :create, :show, :destroy]
    resources :images, only: [:index, :create, :show, :destroy, :update]
  end
end
