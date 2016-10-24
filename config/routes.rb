Rails.application.routes.draw do
  get 'authentications/register'

  get 'authentications/login'

  scope :api do
    resources :users
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
  end
end
