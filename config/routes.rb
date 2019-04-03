Rails.application.routes.draw do
  post '/login', to: 'login#login'
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :spaces, only: [ :index, :show, :create, :update, :destroy ] do
        resources :bookings, only: [ :create ]
      end
      resources :bookings, only: [ :index, :destroy ]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
