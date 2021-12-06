Rails.application.routes.draw do
  root 'witchers#index'

  devise_for :users, controllers: { registrations: 'users/registrations'}

  resources :schools, except: :show
  resources :swords, except: :show
  resources :witchers, except: :show
  resources :users

  get :random_cat, controller: 'cats'
end
