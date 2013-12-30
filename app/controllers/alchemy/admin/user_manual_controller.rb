module Alchemy
  module Admin
    class UserManualController < Alchemy::Admin::BaseController

      def show
        authorize! :show, :alchemy_admin_user_manual
        @manual = UserManual::Creator.new
      end

    end
  end
end
