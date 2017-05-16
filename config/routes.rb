Rails.application.routes.draw do
  
  get '/posts' => 'posts#index'
  get 'posts/new'
  get 'posts/:id/edit' => 'posts#edit'
  get 'posts/:id' => 'posts#show'
  
  post 'posts/create'
  post 'posts/update/:id' => 'posts#update'
  get 'posts/delete/:id' => 'posts#delete'
  
  
end
