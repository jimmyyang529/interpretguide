Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admin do
        resources :interpretguides
        resources :infos
        resources :cases
        resources :services
  end


 resources :interpretguides do
   collection do
     get :info
     get :case
     get :service
    end
 end



  root :to => "interpretguides#index"

end
