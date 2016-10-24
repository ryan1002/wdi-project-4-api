Rails.application.routes.draw do
  scope :api do
    resources :users, except: [:create] do
      resources :events, only: [:create]
    end
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
  end
end
