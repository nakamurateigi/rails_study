Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #resources :posts

  #root 'posts#index'

  get '/', action: :index, controller: :'posts'
  get '/posts/new', action: :new, controller: :'posts'
  get '/posts/:id/edit', action: :edit, controller: :'posts'
  post '/posts/create', action: :create, controller: :'posts'
  post '/posts/:id/update', action: :update, controller: :'posts'
  post '/posts/:id/destroy', action: :destroy, controller: :'posts'
  get '/posts/:id', action: :show, controller: :'posts'

  post '/posts/:post_id/comments/create', action: :create, controller: :'comments'
  post '/posts/:post_id/comments/:id/destroy', action: :destroy, controller: :'comments'

end
