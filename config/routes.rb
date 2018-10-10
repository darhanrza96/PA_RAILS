Rails.application.routes.draw do
  resources :subjects
  resources :instructors
  resources :courses
  #get 'static_pages/home'
  #resources :user
  #root 'users#index'
  #root 'application#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#home'
  get  '/subjects',    to: 'static_pages#subjects'
  get  '/courses',   to: 'static_pages#courses'
  get  '/instructors', to: 'static_pages#instructors'
end
