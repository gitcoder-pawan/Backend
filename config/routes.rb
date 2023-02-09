Rails.application.routes.draw do
  get '/test', to: 'test#index'

  get '/articles', to: 'articles#index'
  get '/articles/:id', to: 'articles#show'
  post '/articles/create_article', to: 'articles#create_article'
  get '/articles/show_commemts', to: 'articles#show_comments'

  get '/comments', to: 'comments#index'
  get 'comments/:id', to: 'comments#show'
  post '/comments/create_comments', to: 'comments#create_comments'
  
end
