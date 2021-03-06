require 'sidekiq/web'

Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  resources :users, :only => [:show, :index]
  mount Sidekiq::Web, at: '/sidekiq'
end