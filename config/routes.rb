Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :todos
  devise_for :users, :controllers => { registrations: 'users/registrations', sessions: 'users/sessions' }
  authenticated :user do
	  root :to => "todos#index"
	end

	root :to => "users/sessions#new"
end
