Rails.application.routes.draw do
  resources :appointments
  resources :patients
  resources :doctors, only: %i[index new edit create update]
  resources :appointments, only: %i[index new edit create]

  get "/patients_index", to:"doctors#patients_index", as: :patients_index


  devise_for :users, skip: [:registration]
  
  devise_scope :user do
    unauthenticated do
      root to: "devise/sessions#new"
    end
  end

  authenticated :user, lambda { |u| u.is_a?(Receptionist) } do
    root to: "patients#index", as: :receptionist_root
  end

  authenticated :user, lambda { |u| u.is_a?(Doctor) } do
    root to: "doctors#patients_index", as: :doctor_root
  end

end
