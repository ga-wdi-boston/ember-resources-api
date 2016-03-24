Rails.application.routes.draw do
  resources :sightings, only: [:index, :show, :create, :update, :destroy]
  resources :items, only: [:index, :show, :create, :update, :destroy]
  resources :pokemon, only: [:index, :show, :create, :update, :destroy]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
