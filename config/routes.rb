Rails.application.routes.draw do
  namespace :api do
    mount ActionCable.server => '/cable'

    resources :conversations, params: :id
    resources :messages
    
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
    delete '/invitations/:id' => 'invitations#destroy'
  end
end