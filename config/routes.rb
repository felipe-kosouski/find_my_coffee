Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :stores, only: [:index, :show], default: { format: "json" }
      resources :ratings, only: [:create], default: { format: "json" }
      resources :google_stores, only: [:index, :show], default: { format: "json" }
    end
  end
end
