Rails.application.routes.draw do
  root 'witchers#index'

  devise_for :users, controllers: { registrations: 'users/registrations'}

  resources :schools
  resources :swords
  resources :witchers

  get :random_cat, controller: 'cats'
end
