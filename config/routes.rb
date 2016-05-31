Alchemy::Engine.routes.draw do
  namespace :admin, {path: Alchemy.admin_path, constraints: Alchemy.admin_constraints} do
    get 'usermanual', :to => 'user_manual#show', :as => 'usermanual'
  end
end
