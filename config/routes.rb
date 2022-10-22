Rails.application.routes.draw do
  devise_for :users
  
  devise_scope :user do
    # Redirests signing out users back to sign-in
    get "/login", to: "devise/sessions#new"

    # Destroy Session
    get '/logout', to: 'devise/sessions#destroy'

    root 'public#index'  
  end  
end
