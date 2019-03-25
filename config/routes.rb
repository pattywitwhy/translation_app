Rails.application.routes.draw do
  namespace :api do    
    get '/users' => 'users#index'
    post '/users' => 'users#create'
    get '/users/:id' => 'users#show'
    patch '/users/:id' => 'users#update'

    post '/sessions' => 'sessions#create'

    get '/messages' => 'messages#index'
    post '/messages' => 'messages#create'
    get '/messages/:id' => 'messages#show'
    patch '/messages/:id' => 'messages#update'
    delete '/messages/:id' => 'messages#destroy'

    get '/conversations' => 'conversations#index'
    post '/conversations' => 'conversations#create'
    get '/conversations/:id' => 'conversations#show'
    patch '/conversations/:id' => 'conversations#update'
    delete '/conversations/:id' => 'conversations#destroy'

    get '/invitations' => 'invitations#index'
    post '/invitations' => 'invitations#create'
    get '/invitations' => 'invitations#show'
    delete '/invitations/:id' => 'invitations#destroy'
  end

  get "/*path" => proc { [200, {}, [ActionView::Base.new.render(file: 'public/index.html')]]}
end