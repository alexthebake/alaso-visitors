Rails.application.routes.draw do
  root 'static_pages#index'

  resources :visits, only: [:show, :index, :new, :create]
  get  'checkout',     to: 'visits#checkout', as: :checkout
  post 'checkout/:id', to: 'visits#checkout'
end
