Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'book/premiere_page'
  get 'book/seconde_page'
  get 'pages/profil'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
