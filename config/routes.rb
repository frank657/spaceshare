Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :spaces, only: [ :index, :show, :create, :update, :destroy ]
      resources :bookings, only: [ :index, :create, :destroy ]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
