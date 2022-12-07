Rails.application.routes.draw do
  devise_for :users
  get 'food/index', action: 'index', controller: 'food'
  get 'food/categories', action: 'categories', controller: 'food'
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "/login", to: "devise/sessions#new"

    # Destroy Session
    get '/logout', to: 'devise/sessions#destroy'

    root 'dashboard#index'  
  end  
end
