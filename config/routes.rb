Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/forum', to: "theme#index"

  get '/forum/new', to:"theme#new"

  post '/forum/new', to:"theme#create"

end
