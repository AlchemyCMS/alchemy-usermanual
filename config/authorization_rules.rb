authorization do
  role :admin do
    has_permission_on :alchemy_admin_user_manual, :to => [:show]
  end
end
