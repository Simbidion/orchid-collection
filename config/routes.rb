Rails.application.routes.draw do
  root 'species#index'
  resources :species
  # get 'species/index' => 'species#index'
  # get 'species/new' => 'species#new'

  # post 'species/new' => 'species#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
