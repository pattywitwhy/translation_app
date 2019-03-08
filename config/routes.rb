Rails.application.routes.draw do
  namespace :api do
    get '/users' => 'users#index'
    post '/users' => 'users#create'

    post '/sessions' => 'sessions#create'

    get '/messages' => 'messages#index'
    post '/messages' => 'messages#create'
    get '/messages/:id' => 'messages#show'
    patch '/messages/:id' => 'messages#update'
    delete '/messages/:id' => 'messages#delete'

    get '/conversations' => 'conversations#index'
    post '/conversations' => 'conversations#create'
    get '/conversations/:id' => 'conversations#show'
    patch '/conversations/:id' => 'conversations#update'
    delete '/conversations/:id' => 'conversations#delete'
  end
end
