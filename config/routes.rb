Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  #resources :dashboard, only [:index]
  namespace :api do
    namespace :v1 do
      resources :countries, only: [:index, :show]
      resources :hotels, only: [:index, :show]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
