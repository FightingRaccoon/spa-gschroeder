Rails.application.routes.draw do
  # route for the static page pulling the index method
  root 'static_pages#index'
  resources :tasks
end
