Rails.application.routes.draw do
  resources :stupids
  #get 'homes/index'
  resources :blogs
  resources :interview_questions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'homes#index'
end
