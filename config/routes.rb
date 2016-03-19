Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'pages/home'

  devise_for :users
  root to: "pages#home"
end
