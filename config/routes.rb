Rails.application.routes.draw do

resources :school_sections
resources :teacher_sections
root 'school_sections#index'
  namespace :api do
    namespace :v1 do
      get 'info/server' => 'info#server'
      get 'schools' => 'school_sections#index'
      get 'teachers' => 'teacher_sections#index'
      get 'schools/:id' => 'school_sections#show'
      get 'schools/:id/teachers' => 'teacher_sections#index'   

    end
  end


end
