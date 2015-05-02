Rails.application.routes.draw do

  resources :events

  get 'pages/home'

  # This line mounts Forem's routes at /forums by default.
  # This means, any requests to the /forums URL of your application will go to Forem::ForumsController#index.
  # If you would like to change where this extension is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Forem relies on it being the default of "forem"
  mount Forem::Engine, :at => '/forums'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 
  devise_for :users
  resources :users
  
  authenticated :user do
    root to: 'events#index', :as => :authenticated_root
  end
  
  root :to => redirect('/users/sign_in')
  
end
