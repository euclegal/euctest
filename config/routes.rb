Rails.application.routes.draw do
  resources :student_classrooms
	root 'schools#new'

  resources :schools
  resources :students
  get 'pages/home'

  get 'pages/about'

  get 'pages/legal'

  resources :classrooms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
