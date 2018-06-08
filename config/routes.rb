Rails.application.routes.draw do
  devise_for :users
 resources :teachers 
 resources :students
  root 'teachers#index'
  get "students/index"
end
