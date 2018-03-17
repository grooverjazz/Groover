Rails.application.routes.draw do

  devise_for :users

  root 'articles#index'

  resources :dashboard, only: %i[ index ]
  resources :articles, only: %i[ index show new create edit update ]
  resources :combos, only: %i[ index show new create edit update ]
  resource :contact, only: %i[ show edit update ]
  resource :association, only: %i[ show edit update ]

  # manually added links because the routing system is shit
  get 'association/commissions', to: "associations#commissions"
end
