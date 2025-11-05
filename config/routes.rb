Rails.application.routes.draw do
  resources :teams
  resources :users
  resources :projects
  resources :tasks
  resources :comments
end
