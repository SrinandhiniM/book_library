Rails.application.routes.draw do
  devise_for :users
  resources :payments
  get "/payments/show" => "payments#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :books do
    member do
      put "add", to: "books#library"
      put "remove", to: "books#library"
    end
  end
  resources :library , only:[:index]
  root 'books#index'
end
