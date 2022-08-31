Rails.application.routes.draw do
  root to: "homes#top"
  get 'home/about' => 'homes#about'

  devise_for :users

  resources :users, only: [:index, :show, :edit, :update, :create]
  resources :books, only: [:index, :edit, :show, :create, :update, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
