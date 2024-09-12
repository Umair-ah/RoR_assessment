Rails.application.routes.draw do
  resources :patients
  resources :doctors, only: %i[index new edit create update]
  resources :appointments, only: %i[index new edit create]


  devise_for :users, skip: [:registration]
  root "patients#index"
end
