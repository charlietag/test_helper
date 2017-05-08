Rails.application.routes.draw do
  resources :students
  get 'employees/index'

  get 'employees/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
