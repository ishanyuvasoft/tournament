Rails.application.routes.draw do
  root 'sports#index'
  
  resources :sports
end
