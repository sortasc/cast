Cast::Application.routes.draw do

	devise_for :users, controllers: { registrations: 'registrations' }, path: '', path_names: { sign_in: 'login', sign_out: 'logout' }
	devise_for :roots, controllers: { sessions: "zone/sessions" }, path: '', path_names: { sign_in: 'zone/login', sign_out: 'zone/logout' }
  
  namespace :zone do
    get '/', to: 'dashboard#index'
    get '/models', to: 'dashboard#models'
    resources :roots
    resources :companies
    resources :users
  end

  resources :projects

  get 'timeline', to: 'timeline#index', as: 'timeline'
  root to: 'boards#index'
  
end
