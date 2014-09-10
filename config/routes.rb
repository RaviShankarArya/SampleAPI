Rails.application.routes.draw do




  namespace :api do
    namespace :v1 do
      get 'info/server' => 'info#server'
      get 'school_sections' => 'school_sections#index'
      get 'teacher_sections' => 'teacher_sections#index'


    end
  end


end
