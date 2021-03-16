Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:new, :create] do
        resources :albums
      end
    end
  end

  root '/users#new'
end
