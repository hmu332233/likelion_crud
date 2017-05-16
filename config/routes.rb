Rails.application.routes.draw do
  
  get '/posts' => 'posts#index'
  
  get 'posts/new'
  post 'posts/create'
  
end
