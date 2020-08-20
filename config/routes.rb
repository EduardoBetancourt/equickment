Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :bookings, only: :index
  resources :packages do
    resources :bookings, only: :create
    resources :package_categories, only: [:new, :create]
  end
end
