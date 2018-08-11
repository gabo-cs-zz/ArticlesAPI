Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :articles
    end
  end
  
  get 'index', to: 'home#index'
  resources :articles
end
