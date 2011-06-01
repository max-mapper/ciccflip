Ciccflip::Application.routes.draw do
  root :to => 'welcome#index'
  get '/auth/twitter/callback', :to => 'sessions#create', :as => 'callback'
  get '/auth/failure', :to => 'sessions#error', :as => 'failure'
  get '/profile', :to => 'sessions#show', :as => 'show'
  get '/lookup', :to => 'welcome#lookup', :as => 'lookup'
  delete '/signout', :to => 'sessions#destroy', :as => 'signout'
end
