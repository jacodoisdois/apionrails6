Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :users, only: %i[show create update destroy]
      resources :products, only: %i[show, index]
      resources :tokens, only: [:create]
    end
  end  
end
