Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'users/registrations'}

  resources :schools
  resources :swords

  get :random_cat, controller: 'cats'
end
