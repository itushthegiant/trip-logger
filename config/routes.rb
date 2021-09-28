Rails.application.routes.draw do
  resources :trips
  resources :users do
    resources :trips, only: [:index]
  end
end
