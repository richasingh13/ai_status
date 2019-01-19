Rails.application.routes.draw do
  resources :daily_statuses
  devise_for :users, skip: :registrations

  root 'home#index'

   namespace :admin do
    resources :daily_statuses
    resources :users
  end   
  
  # non-resource custom routes
  get '/profile' => "home#profile"
  get '/edit-profile' => "home#edit_profile"
  patch 'home/update_profile'

end
