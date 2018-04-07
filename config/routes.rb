Rails.application.routes.draw do

    devise_for :users
    resources :categorys
    resources :books do
        resources :reviews
    end
    resources :order_items, only: [:create, :update, :destroy]
    resource :carts, only: [:show]

    root 'books#index'
end
