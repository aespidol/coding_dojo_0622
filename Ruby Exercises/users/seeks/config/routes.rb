Rails.application.routes.draw do
  get 'sessions/new' => 'sessions#new'
  get 'users/:id' => 'users#show'
  get 'users/logout' => 'users#logout'
  post 'users' => 'users#login'
  delete 'sessions' => 'sessions#destroy'
end
