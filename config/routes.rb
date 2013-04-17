Cast::Application.routes.draw do

  devise_for :roots

  namespace :zone do
    get '/', to: 'dashboard#index'
    # resources :roots
  end
  
  root to: 'static#index'
end
