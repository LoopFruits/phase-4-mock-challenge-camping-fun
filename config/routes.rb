Rails.application.routes.draw do
  # get 'activities/index'
  # get 'activities/destroy'
  # get 'camper/index'
  # get 'camper/show'
  # get 'camper/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :activities, only: [:index, :destroy]
  resources :campers, only: [:index, :show, :create]
  resources :signups, only: [:create]
end

