Rails.application.routes.draw do
  namespace :admin do
    resources :items
    resources :lists
    resources :users
    root to: "items#index"
  end

  root to: "admin/items#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
