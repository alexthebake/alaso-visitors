Rails.application.routes.draw do
  root 'static_pages#index'

  get 'check_in',  to: 'visitors#check_in',  as: :check_in
  get 'check_out', to: 'visitors#check_out', as: :check_out
end
