Cast::Application.routes.draw do

  devise_for :users
  devise_for :roots

  namespace :zone do
    get '/', to: 'dashboard#index'
    # resources :roots
  end

	get 'boards/index'
  root to: 'static#index'
  
end
