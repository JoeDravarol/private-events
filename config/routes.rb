Rails.application.routes.draw do
  root 'events#index'

  get 'attendances/create'
  resources :users,      only: [:new, :create, :show]
  resources :sessions,   only: [:new, :create, :destroy]
  resources :events,     only: [:index, :show, :new, :create]
  resources :attendances, only: [:create]
end
