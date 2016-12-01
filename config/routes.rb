Rails.application.routes.draw do
  resources :grades
  resources :students
  resources :parents
  resources :teachers

  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]

  root "homepages#index"
end
