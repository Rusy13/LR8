Rails.application.routes.draw do
  root 'lr8c#input', as: 'home'
  get 'lr8c/input'
  get 'lr8c/view'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
