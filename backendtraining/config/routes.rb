Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  resources :posts
  resources :comments
  resources :likes, only: [:update]
  resources :users
end
