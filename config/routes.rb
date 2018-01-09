Rails.application.routes.draw do
  resources :articles, only: [:index, :create, :new]
end
