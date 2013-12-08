module Alchemy
  module Admin
    class UserManualController < Alchemy::Admin::BaseController

      def show
        @manual = UserManual::Creator.new
      end

    end
  end
end
