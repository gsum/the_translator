Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :pages
  root to: "pages#index"
  resources :exams
  get "result", to: "exams#result", as: "result"
end
