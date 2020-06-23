Rails.application.routes.draw do

  resources :songs, only: [:index, :show, :edit, :new, :create, :update]
  resources :genres, only: [:index, :show, :edit, :new, :create, :update]
  resources :artists, only: [:index, :show, :edit, :new, :create, :update]

end
