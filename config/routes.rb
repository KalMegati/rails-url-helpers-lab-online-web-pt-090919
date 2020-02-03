Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
<<<<<<< HEAD
  resources :students, only: [:index, :show, :activate_student]
  
  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
=======
  resources :students, only: [:index, :show]
  
  get '/students/:id/activate', to: 'students#activate_students'
>>>>>>> da222fba184d4b6c9e5f4cc53ca318ccb5e57991
  
end
