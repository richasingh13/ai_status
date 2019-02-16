Rails.application.routes.draw do
  #resources :reference_people
  resources :relatives
  resources :education_credentials
  resources :daily_statuses
  devise_for :users, skip: :registrations

  root 'home#index'

   namespace :admin do
    get 'dashboard' => "sites#dashboard"
    resources :daily_statuses
    resources :users, only: [:show, :index, :destroy]
    resources :education_credentials
    resources :relatives
    resources :reference_people
    resources :employees do 
      member do 
        get :daily_status
      end
    end
    resources :documents
    get '/get-employee-profile' => "employees#get_employee_profile"

  end   
  
  # non-resource custom routes
  get '/profile' => "home#profile"
  get '/edit-profile' => "home#edit_profile"
  patch 'home/update_profile'

  get '/edit_job_info' => "user_profile#edit_job_info"
  get '/edit_personal_info' => "user_profile#edit_personal_info"
  get '/edit_address_info' => "user_profile#edit_address_info"

  patch '/update_personal_info' => "user_profile#update_personal_info"
  patch '/update_address_info' => "user_profile#update_address_info"
  patch '/update_job_info' => "user_profile#update_job_info"

end
