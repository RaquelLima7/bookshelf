Rails.application.routes.draw do
  root to: 'pages#home'
  get '/bookshelf', to: 'pages#bookshelf', as: 'bookshelf'
end
