Rails.application.routes.draw do
  root 'tourbases#my_tourbase'

  devise_for :users, controllers: { registrations: 'users/registrations'}

  resources :tourbases
  resources :regions
  resources :tourists
  resources :users
  resources :tours

  get :random_cat, controller: 'cats'
  get :my_tourbase, controller: 'tourbases'
end
