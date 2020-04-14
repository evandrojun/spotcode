Rails.application.routes.draw do
  devise_for :users

  get "home/index"
  root "home#index"

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :categories, only: [:index, :show]
      resources :dashboard, only: [:index]
      resources :search, only: [:index]

      resources :albums, only: [:show] do
        resources :recently_heards, only: [:create]
      end
    end
  end
end
