Rails.application.routes.draw do
  resources :foos, only: [:new, :create]
  root to: 'foos#new'
end
