Rails.application.routes.draw do
  root to: 'homes#top'
  get 'about' => 'homes#about', as: 'about'
  devise_for :users
  resources :users, only: [:show, :index, :edit, :update]
  resources :books, only: [:new, :create, :edit, :update, :destroy, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
