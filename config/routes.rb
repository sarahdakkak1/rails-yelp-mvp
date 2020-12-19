Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "restaurants", to: "restaurants#index"
   resources :restaurants, only: [:new, :create] do
    resources :reviews, only: [:new, :create]
  end
  get "restaurants/:id", to: "restaurants#show"
end
