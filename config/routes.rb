ActionController::Routing::Routes.draw do |map|
  map.resource :account, :controller => "users"
  map.resources :users
  map.resources :password_resets
  map.resource :user_session
  map.root :controller => "user_sessions", :action => "new"
end
