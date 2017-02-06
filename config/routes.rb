Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  use_doorkeeper

  root to: "home#index"

  # namespace :api, defaults: { format: :json }, path: '/' do
  namespace :api, defaults: { format: :json } do
    get 'users/me'
  end
end
