Rails.application.routes.draw do
  resources :recipes, only: [:show, :index]
end
