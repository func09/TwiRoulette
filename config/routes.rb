ActionController::Routing::Routes.draw do |map|
  map.root :controller => 'pages', :action => 'home'
  map.resources :matchings, :as => 'r', :only => [:show]
  map.resources :messages, :as => 'm', :only => [:new, :create]
  map.resources :users, :as => 'u', :only => [:show]
end
