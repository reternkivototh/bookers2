Rails.application.routes.draw do
  devise_for :users, skip: 'sessions'
  devise_scope :user do
    get 'users/sign_in' => 'devise/sessions#new', as: :new_user_session
    post 'users/sign_in' => 'devise/sessions#create', as: :user_session
    delete 'users/sign_out' => 'devise/sessions#destroy', as: :destroy_user_session
  end

  # devise_for :users
  root to: 'homes#top'
  get '/home/about' => 'homes#about', as: 'about'

  resources :users, only: [:show, :index, :edit, :update,]
  resources :books, only: [:new, :create, :edit, :update, :destroy, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html



end
