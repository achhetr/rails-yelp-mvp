Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants, except: [:update, :edit] do
    resource :reviews, only: [:new, :create]
  end
end
