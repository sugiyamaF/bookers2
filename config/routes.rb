Rails.application.routes.draw do
  get 'users/show'
  get 'users/edit'
  get 'books/new'
  root to: "homes#top"
  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
