Rails.application.routes.draw do
  root 'static_pages#index'

  resources :visitors, only: [:show, :index, :edit, :update]
  resources :visits,   only: [:show, :index, :new, :create]
  get  'checkout',     to: 'visits#checkout', as: :checkout
  post 'checkout/:id', to: 'visits#checkout'
end
