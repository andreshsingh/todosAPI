Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :todos
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  root to: 'todos#index'
end
