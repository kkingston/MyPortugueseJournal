Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users
      resources :words
      resources :entries
      resources :comments
      post '/login', to: 'auth#create'
      get '/profile', to: 'auth#profile'
      delete '/logout', to: 'auth#destory'

    end
  end
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
