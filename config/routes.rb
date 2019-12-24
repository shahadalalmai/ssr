Rails.application.routes.draw do
  # get 'places/index'
  # get 'places/show'
  # get 'places/new'
  # get 'places/edit'

  resources :places
  #devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #This is to redefine the default routes and give it the new naming and routing with our new devise named users
  devise_for :users, controllers: { registrations: 'users/registrations',
    sessions: 'users/sessions', unlocks: 'users/unlocks',
    passwords: 'users/passwords', confirmations: 'users/confirmations'}

  root to: "places#index"

end
