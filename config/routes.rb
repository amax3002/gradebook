Rails.application.routes.draw do
  root "homepages#index"

  resources :grades
  resources :students
  resources :parents
  resources :teachers

  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
