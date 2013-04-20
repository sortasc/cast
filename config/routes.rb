Cast::Application.routes.draw do

	devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  devise_for :roots, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
  
  namespace :zone do
    get '/', to: 'dashboard#index'
    # resources :roots
  end

  root to: 'boards#index'
  
end
