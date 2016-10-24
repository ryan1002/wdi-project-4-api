Rails.application.routes.draw do
  get 'authentications/register'

  get 'authentications/login'

  scope :api do
    resources :users
  end
end
