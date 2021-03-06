Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'pages#home'
  get 'pages/home', to: 'pages#home'

  resources :buildings do
    resources :sensors do
      resources :measurements, except: [:create]
    end
  end

  post 'measurements', to: 'measurements#create'

end
