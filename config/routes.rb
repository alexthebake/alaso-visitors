Rails.application.routes.draw do
  root 'static_pages#index'

  resources :visits, only: [:show, :index, :new, :create]
  get 'visits/checkout/:id', to: 'visits#checkout', as: :checkout
end
