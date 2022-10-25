Rails.application.routes.draw do
  resources :championships
  devise_for :users
  root to: "pages#home"
end
