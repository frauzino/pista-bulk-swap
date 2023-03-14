Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/search", to: "pages#find_subscriptions"
  get "/replace", to: "pages#replace_product"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
