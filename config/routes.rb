Rails.application.routes.draw do
  resources :patients
  devise_for :users, skip: [:registration]
  root "patients#index"
end
