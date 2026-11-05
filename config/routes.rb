Rails.application.routes.draw do
  root "drinks#index"
  resources :drinks
end
