module Alchemy
  module UserManual
    class Ability
      include CanCan::Ability

      def initialize(user)
        return if user.nil?
        if user.has_role?(:author) || user.has_role?(:editor) || user.has_role?(:admin)
          can :show, :alchemy_admin_user_manual
        end
      end

    end
  end
end
