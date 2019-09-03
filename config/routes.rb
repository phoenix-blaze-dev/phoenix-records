Rails.application.routes.draw do

  root 'pages#home'
  get 'admin', to: 'admin#index'
  get 'blog', to: 'articles#index'
  get 'search', to: 'posts#search'

  resources :posts, :artists, :labels, :formats, :articles

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
