Rails.application.routes.draw do
  resources :employees, only: [:index, :show, :new, :create, :edit, :update]
  resources :dogs, only:[:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
