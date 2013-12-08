Alchemy::Engine.routes.draw do
  namespace :admin do
    get 'usermanual', :to => 'user_manual#show', :as => 'usermanual'
  end
end
