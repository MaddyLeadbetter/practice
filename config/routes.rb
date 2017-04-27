Rails.application.routes.draw do
  # get 'my_bloghome', to: 'blog#home'
  # #get 'my_blogpage1', to: 'blog#page1'
  #
  # #articles
  # get 'articles', to: 'articles#index'
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  # get 'articles/new', to: 'articles#new'
  # post 'articles/create_article', to: 'articles#create'
  # get 'articles/:id', to: 'articles#show'
  #
  # get 'articles/edit/:id', to: 'articles#edit'
  # post '/update_article', to: 'articles#update_article'
  #
  #log in
  #get 'users', to: 'users#directory'
  #get 'users/new', to: 'users#new'
  #post 'users/create_user', to: 'users#create'
  #get 'users/:id', to: 'users#show'
  post '/update_user', to: 'users#update_user'

  resources :users

  #this is rails convention
  resources :articles do
    resources :comments, only: [:create]
  end

  resources :categories

  #bubble tea
  resources :bubbleteas
  post '/update_order', to: 'bubbletea#update_order'
end
