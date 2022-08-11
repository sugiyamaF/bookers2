Rails.application.routes.draw do
  root to: "homes#top"
  get 'home/about' => 'homes#about'
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  get 'users/:id/edit' => 'users#edit',  as: 'edit_user'
  post 'users/:id/edit' => 'users#edit'
  devise_for :users

  resources :users, only: [:index, :show, :edit]
  resources :books, only: [:index, :edit, :show]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
