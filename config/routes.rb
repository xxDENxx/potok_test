Rails.application.routes.draw do
  root to: 'calculator#index'

  resources :companies, except: [:edit, :update] 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
